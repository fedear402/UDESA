import pandas as pd
import numpy as np
from datetime import datetime
import matplotlib.pyplot as plt
import json
from scipy import stats
from statsmodels.tsa.stattools import adfuller

def load_data(file_path):
    with open(file_path, 'r') as file:
        data = json.load(file)
    return data

# Load both copper prices and CPI data
df = load_data('copper_prices.json')
cpi_data = load_data('simulacion/cpi_data.json')  # You'll need to create this file with CPI data

# Convert data to time series
prices = pd.DataFrame(df)
prices['month'] = pd.to_datetime(prices['month '], format='%YM%m')
prices.set_index('month', inplace=True)
prices['Copper ($/mt)'] = prices['Copper ($/mt)'].astype(float)

# Convert CPI data to DataFrame
cpi = pd.DataFrame(cpi_data)
cpi['Date'] = pd.to_datetime(cpi['Date'])
cpi.set_index('Date', inplace=True)
cpi['Index'] = cpi['Index'].astype(float)

# Ensure both series have the same index
common_index = prices.index.intersection(cpi.index)
prices = prices.loc[common_index]
cpi = cpi.loc[common_index]

# Calculate real prices (nominal prices / CPI)
prices['real_copper'] = prices['Copper ($/mt)'] / cpi['Index']

# Calculate log returns of real prices
log_prices = np.log(prices['real_copper'])
log_returns = log_prices.diff().dropna()

# Perform Augmented Dickey-Fuller test on real prices
adf_result = adfuller(log_prices)

# Print results
print("\nAugmented Dickey-Fuller Test Results (Real Prices):")
print(f"ADF Statistic: {adf_result[0]:.4f}")
print(f"p-value: {adf_result[1]:.4f}")
print("Critical values:")
for key, value in adf_result[4].items():
    print(f"\t{key}: {value:.4f}")


# Interpret results
alpha = 0.05
if adf_result[1] > alpha:
    print("\nFail to reject null hypothesis. Series appears to be non-stationary (random walk)")
else:
    print("\nReject null hypothesis. Series appears to be stationary (not a random walk)")

# Calculate returns of real prices
returns = prices['real_copper'].pct_change().dropna()

# 1. Shapiro-Wilk Test
shapiro_stat, shapiro_p = stats.shapiro(returns)
print("\nShapiro-Wilk Test for Real Returns:")
print(f"Statistic: {shapiro_stat:.4f}")
print(f"p-value: {shapiro_p:.4f}")

# 2. D'Agostino-Pearson Test
agostino_stat, agostino_p = stats.normaltest(returns)
print("\nD'Agostino-Pearson Test for Real Returns:")
print(f"Statistic: {agostino_stat:.4f}")
print(f"p-value: {agostino_p:.4f}")

# 3. Kolmogorov-Smirnov Test
ks_stat, ks_p = stats.kstest(returns, 'norm', args=(returns.mean(), returns.std()))
print("\nKolmogorov-Smirnov Test for Real Returns:")
print(f"Statistic: {ks_stat:.4f}")
print(f"p-value: {ks_p:.4f}")

# 4. Anderson-Darling Test
ad_result = stats.anderson(returns, dist='norm')
print("\nAnderson-Darling Test for Real Returns:")
print(f"Statistic: {ad_result.statistic:.4f}")
print("Critical Values:", ad_result.critical_values)
print("Significance Levels:", [1, 2, 5, 10, 15])

# 5. Jarque-Bera Test
jarque_bera_stat, jarque_bera_p = stats.jarque_bera(returns)
print("\nJarque-Bera Test for Real Returns:")
print(f"Statistic: {jarque_bera_stat:.4f}")
print(f"p-value: {jarque_bera_p:.4f}")

# Visual Tests
plt.figure(figsize=(15, 10))

# Q-Q Plot
plt.subplot(2, 2, 1)
stats.probplot(returns, dist="norm", plot=plt)
plt.title("Q-Q Plot of Real Returns")

# Histogram with Normal Distribution
plt.subplot(2, 2, 2)
plt.hist(returns, bins=50, density=True, alpha=0.7)
xmin, xmax = plt.xlim()
x = np.linspace(xmin, xmax, 100)
p = stats.norm.pdf(x, returns.mean(), returns.std())
plt.plot(x, p, 'k', linewidth=2)
plt.title("Histogram of Real Returns with Normal Distribution")

# Box Plot
plt.subplot(2, 2, 3)
plt.boxplot(returns)
plt.title("Box Plot of Real Returns")

# Time Series Plot of Returns
plt.subplot(2, 2, 4)
plt.plot(returns.index, returns)
plt.title("Time Series of Real Returns")
plt.xticks(rotation=45)

plt.tight_layout()
plt.show()

# Print summary statistics
print("\nSummary Statistics for Real Returns:")
print(f"Mean: {returns.mean():.4f}")
print(f"Standard Deviation: {returns.std():.4f}")
print(f"Skewness: {stats.skew(returns):.4f}")
print(f"Kurtosis: {stats.kurtosis(returns):.4f}")

# Plot both nominal and real prices
plt.figure(figsize=(12,6))
plt.plot(prices.index, prices['real_copper'], label='Real Prices')
plt.title('Copper Prices Over Time (Nominal vs Real)')
plt.xlabel('Year')
plt.ylabel('Price (USD/mt)')
plt.legend()
plt.grid(True)
plt.show()

