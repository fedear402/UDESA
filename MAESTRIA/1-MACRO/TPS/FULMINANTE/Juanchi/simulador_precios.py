"""
Simulación de precios de cobre y oro siguiendo metodologías benchmark de la literatura académica.

Para el cobre: Modelo de Schwartz (1997) de dos factores
Para el oro: Modelo de régimen cambiante con saltos basado en Hamilton (1989) y Bates (1996)

Referencias principales:
- Schwartz, E. S. (1997). "The Stochastic Behavior of Commodity Prices: Implications for Valuation and Hedging."
  Journal of Finance, 52(3), 923-973.
- Casassus, J., & Collin-Dufresne, P. (2005). "Stochastic Convenience Yield Implied from Commodity Futures and Interest Rates."
  Journal of Finance, 60(5), 2283-2331.
- Hamilton, J. D. (1989). "A New Approach to the Economic Analysis of Nonstationary Time Series and the Business Cycle."
  Econometrica, 57(2), 357-384.
- Choi, K., & Hammoudeh, S. (2010). "Volatility Behavior of Oil, Industrial Commodity and Stock Markets in a Regime-Switching Environment."
  Energy Policy, 38(8), 4388-4399.
"""

import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm
import pandas as pd
from matplotlib.dates import YearLocator, DateFormatter
import seaborn as sns

# Configuración de visualización
plt.style.use('seaborn-v0_8-whitegrid')
np.random.seed(42)  # Para reproducibilidad

def plot_simulations(time, simulations, title, y_label, percentiles=[5, 25, 50, 75, 95]):
    """Visualiza las simulaciones con intervalos de percentiles"""
    plt.figure(figsize=(12, 6))

    # Calcular percentiles a lo largo de todas las simulaciones
    perc_values = np.percentile(simulations, percentiles, axis=0)

    # Graficar líneas de percentiles
    colors = plt.cm.YlOrRd(np.linspace(0.2, 0.8, len(percentiles)))

    for i, p in enumerate(percentiles):
        plt.plot(time, perc_values[i], color=colors[i], label=f'Percentil {p}')

    # Graficar algunas trayectorias individuales para visualización
    num_paths_to_plot = 5
    for i in range(num_paths_to_plot):
        path_idx = np.random.randint(0, simulations.shape[0])
        plt.plot(time, simulations[path_idx], 'k-', alpha=0.1)

    plt.title(title)
    plt.xlabel('Años')
    plt.ylabel(y_label)
    plt.legend()
    plt.grid(True)
    return plt


# ======= Modelo para Cobre: Schwartz (1997) dos factores =======

def simulate_copper_schwartz_two_factor(S0, delta0, T, steps, num_paths,
                                       kappa_S=0.369,    # Velocidad de reversión precio (Cortazar & Schwartz, 2003)
                                       mu_S=9000,        # Nivel de equilibrio precio (ajustar a nivel actual)
                                       sigma_S=0.26,     # Volatilidad precio (Cortazar et al., 2015)
                                       kappa_delta=1.84, # Velocidad de reversión convenience yield
                                       mu_delta=0.03,    # Nivel de equilibrio convenience yield
                                       sigma_delta=0.30, # Volatilidad convenience yield
                                       rho=-0.4,         # Correlación (Gibson & Schwartz, 1990)
                                       r=0.03):          # Tasa libre de riesgo
    """
    Implementa el modelo de dos factores de Schwartz (1997) para el cobre:
    - Factor 1: Precio spot con reversión a la media
    - Factor 2: Convenience yield estocástico

    Parámetros basados en Cortazar & Schwartz (2003) y Cortazar et al. (2015)
    """
    dt = T/steps
    time = np.linspace(0, T, steps+1)

    # Inicializar arrays para almacenar resultados
    S = np.zeros((num_paths, steps+1))
    delta = np.zeros((num_paths, steps+1))

    # Valores iniciales
    S[:, 0] = S0
    delta[:, 0] = delta0

    # Simulación de trayectorias
    for t in range(steps):
        # Generar movimientos brownianos correlacionados
        Z1 = np.random.normal(0, 1, num_paths)
        Z2 = rho*Z1 + np.sqrt(1-rho**2)*np.random.normal(0, 1, num_paths)

        # Actualizar convenience yield (ecuación de Schwartz)
        delta[:, t+1] = delta[:, t] + kappa_delta*(mu_delta - delta[:, t])*dt + \
                       sigma_delta*np.sqrt(dt)*Z2

        # Actualizar precio spot (ecuación de Schwartz con convenience yield)
        dS = (r - delta[:, t] + kappa_S*(np.log(mu_S) - np.log(S[:, t])))*S[:, t]*dt + \
             sigma_S*S[:, t]*np.sqrt(dt)*Z1
        S[:, t+1] = S[:, t] + dS

    return time, S, delta


# ======= Modelo para Oro: Régimen Cambiante con Saltos (CORREGIDO) =======

def simulate_gold_regime_switching_jumps(S0, T, steps, num_paths,
                                         mu_regime1=0.02,    # Tendencia en régimen normal
                                         mu_regime2=0.06,    # Tendencia en régimen de alta demanda (ajustado)
                                         sigma_regime1=0.12, # Volatilidad en régimen normal (reducida)
                                         sigma_regime2=0.20, # Volatilidad en régimen de alta volatilidad (reducida)
                                         p11=0.975,          # Probabilidad de permanecer en régimen 1
                                         p22=0.95,           # Probabilidad de permanecer en régimen 2
                                         lambda_jump=0.75,   # Intensidad de saltos anual (reducida)
                                         mu_jump=0.01,       # Tamaño medio del salto (reducido)
                                         sigma_jump=0.015,   # Volatilidad del tamaño del salto (reducida)
                                         kappa=0.02):        # Componente de reversión a la media (reducido)
    """
    Implementa un modelo de régimen cambiante con saltos para el oro, basado en:
    - Hamilton (1989) para el componente de cambio de régimen
    - Bates (1996) para el componente de saltos
    - Con una débil reversión a la media siguiendo a Schwartz (1997)

    Esta versión usa el log del precio para evitar valores negativos
    """
    dt = T/steps
    time = np.linspace(0, T, steps+1)

    # Inicializar arrays - trabajaremos con log-precios para mayor estabilidad
    log_S = np.zeros((num_paths, steps+1))
    regime = np.zeros((num_paths, steps+1), dtype=int)

    # Valores iniciales
    log_S[:, 0] = np.log(S0)
    # Iniciar en régimen 1 (normal)
    regime[:, 0] = 0

    # Matriz de transición de régimen
    P = np.array([[p11, 1-p11], [1-p22, p22]])

    # Parámetros por régimen
    mu = np.array([mu_regime1, mu_regime2])
    sigma = np.array([sigma_regime1, sigma_regime2])

    # Nivel de equilibrio a largo plazo en log-escala
    log_mu_equilibrium = np.log(S0)

    # Simulación de trayectorias
    for t in range(steps):
        # Determinar régimen para el siguiente paso
        for i in range(num_paths):
            # Transición de régimen según cadena de Markov
            regime[i, t+1] = np.random.choice([0, 1], p=[P[regime[i, t], 0], P[regime[i, t], 1]])

        # Generar proceso de difusión
        dW = np.random.normal(0, np.sqrt(dt), num_paths)

        # Componente de salto (distribución de Poisson para número de saltos)
        jump_counts = np.random.poisson(lambda_jump*dt, num_paths)
        jumps = np.zeros(num_paths)

        # Calcular tamaño de los saltos (en log-escala)
        for i in range(num_paths):
            if jump_counts[i] > 0:
                jump_sizes = np.random.normal(mu_jump, sigma_jump, jump_counts[i])
                jumps[i] = np.sum(jump_sizes)

        # Actualizar log-precios con régimen, reversión débil y saltos
        for i in range(num_paths):
            curr_regime = regime[i, t+1]

            # Drift ajustado para log-precios (Ito correction)
            drift = (mu[curr_regime] - 0.5 * sigma[curr_regime]**2) * dt

            # Componente de volatilidad
            vol_term = sigma[curr_regime] * dW[i]

            # Reversión a la media en log-escala
            mean_reversion = kappa * (log_mu_equilibrium - log_S[i, t]) * dt

            # Actualización de log-precio
            log_S[i, t+1] = log_S[i, t] + drift + mean_reversion + vol_term + jumps[i]

    # Convertir de log-precios a precios
    S = np.exp(log_S)

    return time, S, regime


# ======= Función Principal para Simulación =======

def simulate_copper_and_gold_prices(T_years=30, time_steps_per_year=12, num_simulations=1000):
    """
    Simula precios de cobre y oro para un horizonte de T años.

    Parameters:
    -----------
    T_years : int
        Horizonte de simulación en años
    time_steps_per_year : int
        Pasos de tiempo por año (granularidad de la simulación)
    num_simulations : int
        Número de trayectorias a simular

    Returns:
    --------
    dict con resultados de simulación
    """
    # Parámetros de simulación
    steps = T_years * time_steps_per_year

    # Precios iniciales (ajustar a niveles actuales)
    copper_price_initial = 8500  # USD/tonelada
    gold_price_initial = 1900    # USD/onza

    # Simular cobre (modelo Schwartz dos factores)
    time_copper, copper_prices, convenience_yield = simulate_copper_schwartz_two_factor(
        S0=copper_price_initial,
        delta0=0.03,  # Convenience yield inicial
        T=T_years,
        steps=steps,
        num_paths=num_simulations
    )

    # Simular oro (modelo régimen cambiante con saltos)
    time_gold, gold_prices, regimes = simulate_gold_regime_switching_jumps(
        S0=gold_price_initial,
        T=T_years,
        steps=steps,
        num_paths=num_simulations
    )

    return {
        'time': time_copper,  # Mismo vector de tiempo para ambos
        'copper': copper_prices,
        'gold': gold_prices,
        'convenience_yield': convenience_yield,
        'regimes': regimes
    }


# ======= Análisis y Visualización =======

def analyze_price_simulations(simulation_results, percentiles=[5, 25, 50, 75, 95]):
    """
    Analiza y visualiza los resultados de la simulación.
    """
    time = simulation_results['time']
    copper_prices = simulation_results['copper']
    gold_prices = simulation_results['gold']

    # 1. Visualizar trayectorias de precios
    plt_copper = plot_simulations(time, copper_prices,
                                'Simulación de Precios del Cobre (Modelo Schwartz 2-Factores)',
                                'USD/tonelada', percentiles)
    plt_copper.savefig('copper_price_simulation.png', dpi=300, bbox_inches='tight')

    plt_gold = plot_simulations(time, gold_prices,
                              'Simulación de Precios del Oro (Modelo Régimen Cambiante con Saltos)',
                              'USD/onza', percentiles)
    plt_gold.savefig('gold_price_simulation.png', dpi=300, bbox_inches='tight')

    # 2. Calcular estadísticas de precios finales
    final_copper = copper_prices[:, -1]
    final_gold = gold_prices[:, -1]

    stats = {
        'Cobre': {
            'Media': np.mean(final_copper),
            'Mediana': np.median(final_copper),
            'Desv. Estándar': np.std(final_copper),
            'Min': np.min(final_copper),
            'Max': np.max(final_copper),
            'Percentiles': {p: np.percentile(final_copper, p) for p in percentiles}
        },
        'Oro': {
            'Media': np.mean(final_gold),
            'Mediana': np.median(final_gold),
            'Desv. Estándar': np.std(final_gold),
            'Min': np.min(final_gold),
            'Max': np.max(final_gold),
            'Percentiles': {p: np.percentile(final_gold, p) for p in percentiles}
        }
    }

    # 3. Calcular correlación entre precios finales
    correlation = np.corrcoef(final_copper, final_gold)[0, 1]
    stats['Correlación'] = correlation

    # 4. Visualizar distribución de precios finales
    plt.figure(figsize=(14, 6))

    plt.subplot(1, 2, 1)
    sns.histplot(final_copper, kde=True)
    plt.title('Distribución de Precios Finales del Cobre')
    plt.xlabel('USD/tonelada')

    plt.subplot(1, 2, 2)
    sns.histplot(final_gold, kde=True)
    plt.title('Distribución de Precios Finales del Oro')
    plt.xlabel('USD/onza')

    plt.tight_layout()
    plt.savefig('price_distributions.png', dpi=300, bbox_inches='tight')

    # 5. Calcular tasas de crecimiento anual compuestas
    years = int(time[-1])
    cagr_copper = ((final_copper / copper_prices[:, 0]) ** (1/years) - 1) * 100
    cagr_gold = ((final_gold / gold_prices[:, 0]) ** (1/years) - 1) * 100

    stats['Cobre']['CAGR Media (%)'] = np.mean(cagr_copper)
    stats['Cobre']['CAGR Mediana (%)'] = np.median(cagr_copper)
    stats['Oro']['CAGR Media (%)'] = np.mean(cagr_gold)
    stats['Oro']['CAGR Mediana (%)'] = np.median(cagr_gold)

    return stats


# ======= Ejecución Principal =======

if __name__ == "__main__":
    # Configuración de simulación
    T = 30  # Horizonte de 30 años
    steps_per_year = 12  # Mensual
    n_simulations = 1000  # Número de trayectorias

    # Ejecutar simulación
    print(f"Simulando precios de cobre y oro para {T} años con {n_simulations} trayectorias...")
    simulation_results = simulate_copper_and_gold_prices(
        T_years=T,
        time_steps_per_year=steps_per_year,
        num_simulations=n_simulations
    )

    # Analizar resultados
    print("Analizando resultados...")
    stats = analyze_price_simulations(simulation_results)

    # Mostrar estadísticas
    print("\nEstadísticas de precios finales (año 30):")
    for commodity, values in stats.items():
        if commodity != 'Correlación':
            print(f"\n{commodity}:")
            for stat, value in values.items():
                if stat != 'Percentiles':
                    print(f"  {stat}: {value:.2f}")
                else:
                    print("  Percentiles:")
                    for p, v in value.items():
                        print(f"    {p}%: {v:.2f}")
        else:
            print(f"\nCorrelación entre precios finales: {values:.4f}")

    print("\nSe han guardado visualizaciones en archivos PNG.")

    # Para incorporar en un framework de simulación de fondo soberano
    print("\nEstos modelos de precios pueden ser integrados a un modelo más amplio de fondo soberano")
    print("para simular ingresos por regalías y diversas estrategias de inversión y distribución.")

    # Simulando algunos años de ingresos por regalías
    print("\nEjemplo de cálculo de regalías mineras (3% sobre valor de producción):")

    # Suponer producción constante (simplificación - podría modelarse en detalle)
    annual_copper_production = 250000  # toneladas por año
    annual_gold_production = 200000    # onzas por año

    # Calcular ingresos por regalías para los primeros 5 años (ejemplo)
    royalty_years = 5
    copper_prices_sample = simulation_results['copper'][:, :royalty_years*steps_per_year:steps_per_year]
    gold_prices_sample = simulation_results['gold'][:, :royalty_years*steps_per_year:steps_per_year]

    # Calcular regalías (3% del valor)
    royalties_copper = 0.03 * copper_prices_sample * annual_copper_production
    royalties_gold = 0.03 * gold_prices_sample * annual_gold_production
    total_royalties = royalties_copper + royalties_gold

    # Mostrar proyecciones de regalías (mediana)
    print("\nProyección de regalías anuales (millones USD, percentil 50):")
    median_royalties = np.median(total_royalties, axis=0) / 1e6  # Convertir a millones
    for year in range(royalty_years):
        print(f"  Año {year+1}: ${median_royalties[year]:.2f} millones")
