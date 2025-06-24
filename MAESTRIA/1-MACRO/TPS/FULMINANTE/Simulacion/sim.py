import json, pathlib
import numpy as np
import pandas as pd
from dataclasses import dataclass
import matplotlib.pyplot as plt

# ────────────────────────────────────────────────────────────────────
# 1.  DATA HANDLING
# ────────────────────────────────────────────────────────────────────
def load_series(price_path="copper_prices.json",
                cpi_path="simulacion/cpi_data.json") -> pd.DataFrame:
    """Load copper prices and CPI, return real log‑price series"""
    # Load and rename columns to match expected format
    price = pd.read_json(price_path).rename(columns={
        "month ": "date",
        "Copper ($/mt)": "P"
    })
    cpi = pd.read_json(cpi_path).rename(columns={
        "Index": "CPI",
        "Date": "date"
    })
    
    # Convert dates to datetime
    price['date'] = pd.to_datetime(price['date'], format='%YM%m')
    cpi['date'] = pd.to_datetime(cpi['date'])
    
    # Merge and process
    df = (price.merge(cpi, on="date")
              .set_index("date")
              .sort_index())
    
    # Calculate real prices and log prices
    df["P_real"] = df.P / df.CPI
    df["logP"] = np.log(df.P_real)
    return df

def ar1_coef(series: pd.Series) -> float:
    """OLS estimate of AR(1) coefficient δ in  ε_{t}=δ ε_{t−1}+u_t"""
    y = series.diff().dropna()
    epsilon = y - y.mean()   # demean first‑difference
    num = (epsilon.shift().dropna()*epsilon.loc[epsilon.index[1:]]).sum()
    den = (epsilon.shift()**2).dropna().sum()
    return num/den

# ────────────────────────────────────────────────────────────────────
# 2.  ROYALTY PROCESS
# τ_t = 0.03⋅(1-0.30)⋅Q_t⋅P_t_real
# We create a simple Q_t path: ramp‑up starting at T_beg (years)
# ────────────────────────────────────────────────────────────────────
def quantity_path(dates, q_peak=1.0, T_beg=10, growth_years=5):
    """Baseline extraction profile (millions tonnes)"""
    yrs = (dates - dates[0]).days/365.25
    ramp = np.clip((yrs-T_beg)/growth_years, 0, 1)
    return q_peak*ramp

def royalties(df, q_series):
    """Compute τ_t given real price and quantity"""
    τ = 0.03*(1-0.30)*q_series*df.P_real
    return pd.Series(τ, index=df.index, name="tau")

# ────────────────────────────────────────────────────────────────────
# 3.  FUND DYNAMICS
# ────────────────────────────────────────────────────────────────────
@dataclass
class FundParams:
    r:      float   = 0.03      # real return
    rho:    float   = 0.03      # time preference (CV & CARA)
    sigma:  float   = 0.5       # CRRA‑curvature (CV)
    theta:  float   = 0.02      # CARA risk‑aversion
    delta:  float   = 0.2       # AR(1) coefficient for ε_t
    g0:     float   = 0.0       # initial spending
    b0:     float   = 0.0       # initial assets

def simulate_CV(df, τ, ε, p: FundParams):
    """Cép​edes‑Velasco constant‑g rule"""
    g = p.r*(p.b0 + τ.mean()/p.r + ε.iloc[0]/(1+p.r-p.delta))
    b = [p.b0]
    for t in range(len(df)):
        b.append((1+p.r)*b[-1] + τ.iloc[t] - g + ε.iloc[t])
    return pd.Series(b[1:], index=df.index, name="assets"), g

def simulate_permanent(df, τ, p: FundParams):
    """Norway / Alaska rule  g_t = r b_t"""
    g, b = [], [p.b0]
    for t in range(len(df)):
        g_t      = p.r*b[-1];      g.append(g_t)
        b_next   = (1+p.r)*b[-1] + τ.iloc[t] - g_t
        b.append(b_next)
    return (pd.Series(b[1:], index=df.index, name="assets"),
            pd.Series(g, index=df.index, name="g"))

def simulate_CARA(df, τ, p: FundParams, σ_ν=0.1):
    """Caballero‑style CARA with g_{t+1}=g_t+Γ+ν_{t+1}"""
    Γ = 0.5*p.theta*σ_ν**2
    g, b = [p.g0], [p.b0]
    ν = np.random.normal(0, σ_ν, size=len(df))
    for t in range(len(df)):
        g_next = g[-1] + Γ + ν[t];  g.append(g_next)
        b_next = (1+p.r)*b[-1] + τ.iloc[t] - g_next
        b.append(b_next)
    return (pd.Series(b[1:], index=df.index, name="assets"),
            pd.Series(g[1:], index=df.index, name="g"))

# ────────────────────────────────────────────────────────────────────
# 4.  QUICK DEMO (remove or adapt in production)
# ────────────────────────────────────────────────────────────────────
if __name__ == "__main__":
    df  = load_series()
    ε   = df.logP.diff().fillna(0)              # proxy shock series
    δ   = ar1_coef(ε)                           # estimate δ
    params = FundParams(delta=δ)

    Q   = quantity_path(df.index)
    τ   = royalties(df, Q)

    b_CV, g_CV        = simulate_CV(df, τ, ε, params)
    b_perm, g_perm    = simulate_permanent(df, τ, params)
    b_CARA, g_CARA    = simulate_CARA(df, τ, params)

    # Plot
    plt.figure(figsize=(9,4))
    plt.plot(b_CV,   label="CV assets")
    plt.plot(b_perm, label="Permanent‑fund assets")
    plt.plot(b_CARA, label="CARA assets")
    plt.title("Asset paths under three rules")
    plt.legend()
    plt.tight_layout()
    plt.show()
