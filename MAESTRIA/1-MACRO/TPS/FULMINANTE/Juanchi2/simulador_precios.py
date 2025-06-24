"""
Simulación de precios de cobre y oro siguiendo Movimiento Browniano Geométrico (GBM).

Para el cobre: Movimiento Browniano Geométrico (GBM) con drift
Para el oro: Movimiento Browniano Geométrico (GBM) con drift
"""

import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm
import pandas as pd
from matplotlib.dates import YearLocator, DateFormatter
import seaborn as sns
import datetime as dt

# Configuración de estilo para gráficos
plt.style.use('seaborn-v0_8')
sns.set_palette("husl")

class CommodityPriceSimulator:
    """
    Simulador de precios de commodities basado en Movimiento Browniano Geométrico.

    Para cobre: Movimiento Browniano Geométrico (GBM) con drift
    Para oro: Movimiento Browniano Geométrico (GBM) con drift
    """

    def __init__(self):
        # Parámetros para el cobre (GBM)
        # Modificado para comportarse como un activo financiero típico
        self.copper_params = {
            'S0': 9000,        # Precio inicial (USD/tonelada)
            'drift': 0.06,     # Drift anual (6%)
            'sigma': 0.25      # Volatilidad anualizada (25%)
        }

        # Parámetros para el oro (GBM)
        self.gold_params = {
            'S0': 1850,        # Precio inicial (USD/onza)
            'drift': 0.05,     # Drift anual (5%)
            'sigma': 0.18      # Volatilidad anualizada (18%)
        }

    def simulate_copper_price(self, T=30, dt=1/12, n_paths=10000):
        """
        Simula precios de cobre usando Movimiento Browniano Geométrico.

        dS = mu*S*dt + sigma*S*dW

        Parameters:
        T: horizonte temporal en años
        dt: paso temporal (1/12 = mensual)
        n_paths: número de trayectorias a simular
        """
        n_steps = int(T / dt)
        paths = np.zeros((n_paths, n_steps + 1))
        paths[:, 0] = self.copper_params['S0']

        drift = self.copper_params['drift']
        sigma = self.copper_params['sigma']

        for t in range(1, n_steps + 1):
            Z = np.random.standard_normal(n_paths)
            S_prev = paths[:, t-1]

            # Discretización de Euler-Maruyama para GBM
            paths[:, t] = S_prev * np.exp((drift - 0.5 * sigma**2) * dt +
                                         sigma * np.sqrt(dt) * Z)

        return paths

    def simulate_gold_price(self, T=30, dt=1/12, n_paths=10000):
        """
        Simula precios de oro usando Movimiento Browniano Geométrico.

        dS = mu*S*dt + sigma*S*dW

        Parameters:
        T: horizonte temporal en años
        dt: paso temporal (1/12 = mensual)
        n_paths: número de trayectorias a simular
        """
        n_steps = int(T / dt)
        paths = np.zeros((n_paths, n_steps + 1))
        paths[:, 0] = self.gold_params['S0']

        drift = self.gold_params['drift']
        sigma = self.gold_params['sigma']

        for t in range(1, n_steps + 1):
            Z = np.random.standard_normal(n_paths)
            S_prev = paths[:, t-1]

            # Discretización de Euler-Maruyama para GBM
            paths[:, t] = S_prev * np.exp((drift - 0.5 * sigma**2) * dt +
                                         sigma * np.sqrt(dt) * Z)

        return paths

    def run_simulation(self, T=30, dt=1/12, n_paths=10000):
        """
        Ejecuta la simulación completa para ambos commodities.

        Returns:
        dict con las trayectorias simuladas y estadísticas resumen
        """
        print(f"Simulando {n_paths} trayectorias para un horizonte de {T} años...")

        copper_paths = self.simulate_copper_price(T, dt, n_paths)
        gold_paths = self.simulate_gold_price(T, dt, n_paths)

        # Calcular estadísticas
        time_index = np.arange(0, T + dt, dt)

        results = {
            'copper_paths': copper_paths,
            'gold_paths': gold_paths,
            'time_index': time_index,
            'copper_stats': self._calculate_statistics(copper_paths),
            'gold_stats': self._calculate_statistics(gold_paths)
        }

        return results

    def _calculate_statistics(self, paths):
        """Calcula estadísticas resumen de las trayectorias simuladas."""
        return {
            'mean': np.mean(paths, axis=0),
            'percentile_05': np.percentile(paths, 5, axis=0),
            'percentile_25': np.percentile(paths, 25, axis=0),
            'percentile_50': np.percentile(paths, 50, axis=0),
            'percentile_75': np.percentile(paths, 75, axis=0),
            'percentile_95': np.percentile(paths, 95, axis=0),
            'final_price_distribution': paths[:, -1]
        }

    def plot_simulation_results(self, results, n_sample_paths=100):
        """Visualiza las trayectorias simuladas con estilo académico."""

        # Configurar estilo académico
        plt.style.use('default')
        plt.rcParams.update({
            'font.family': 'serif',
            'font.size': 11,
            'axes.labelsize': 12,
            'axes.titlesize': 13,
            'legend.fontsize': 10,
            'xtick.labelsize': 10,
            'ytick.labelsize': 10,
            'axes.grid': True,
            'grid.alpha': 0.3,
            'axes.spines.top': False,
            'axes.spines.right': False,
            'lines.linewidth': 1.5
        })

        # Crear figura con solo trayectorias
        fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))
        fig.subplots_adjust(wspace=0.3)

        # Colores más sobrios y académicos
        copper_color = '#2E86AB'  # Azul académico
        gold_color = '#A23B72'    # Púrpura rojizo

        time_index = results['time_index']

        # Panel 1: Trayectorias de precios del cobre
        sample_paths = min(30, n_sample_paths)
        for i in range(sample_paths):
            ax1.plot(time_index, results['copper_paths'][i],
                    alpha=0.1, color=copper_color, linewidth=0.5)

        # Estadísticas principales
        stats = results['copper_stats']
        ax1.plot(time_index, stats['percentile_50'],
                color=copper_color, linewidth=2, label='Mediana')
        ax1.plot(time_index, stats['mean'],
                color='red', linewidth=2, linestyle='--', label='Media')

        # Intervalos de confianza
        ax1.fill_between(time_index, stats['percentile_05'], stats['percentile_95'],
                        alpha=0.15, color=copper_color, label='IC 90%')
        ax1.fill_between(time_index, stats['percentile_25'], stats['percentile_75'],
                        alpha=0.25, color=copper_color, label='IC 50%')

        ax1.set_xlabel('Tiempo (años)')
        ax1.set_ylabel('Precio (USD/tonelada)')
        ax1.set_title('(a) Trayectorias Simuladas - Precio del Cobre')

        # Ajustar límites del eje y para el cobre
        ax1.set_ylim([0, np.percentile(results['copper_paths'], 99.5)])

        # Formatear el eje y para incluir comas en los miles
        from matplotlib.ticker import FuncFormatter
        ax1.yaxis.set_major_formatter(FuncFormatter(lambda x, p: f'{int(x):,}'))

        # Leyenda con mejor posicionamiento
        ax1.legend(loc='upper left', frameon=True, fancybox=False,
                edgecolor='black', bbox_to_anchor=(0.02, 0.98))
        ax1.grid(True, alpha=0.3, linestyle=':')

        # Información sobre parámetros en la esquina superior derecha
        param_text = f'S₀=${self.copper_params["S0"]:,}\nμ={self.copper_params["drift"]:.1%}\nσ={self.copper_params["sigma"]:.1%}'
        ax1.text(0.98, 0.98, param_text, transform=ax1.transAxes,
                bbox=dict(boxstyle='round,pad=0.5', facecolor='white', alpha=0.9),
                verticalalignment='top', horizontalalignment='right', fontsize=10)

        # Panel 2: Trayectorias de precios del oro
        for i in range(sample_paths):
            ax2.plot(time_index, results['gold_paths'][i],
                    alpha=0.1, color=gold_color, linewidth=0.5)

        stats = results['gold_stats']
        ax2.plot(time_index, stats['percentile_50'],
                color=gold_color, linewidth=2, label='Mediana')
        ax2.plot(time_index, stats['mean'],
                color='red', linewidth=2, linestyle='--', label='Media')

        ax2.fill_between(time_index, stats['percentile_05'], stats['percentile_95'],
                        alpha=0.15, color=gold_color, label='IC 90%')
        ax2.fill_between(time_index, stats['percentile_25'], stats['percentile_75'],
                        alpha=0.25, color=gold_color, label='IC 50%')

        ax2.set_xlabel('Tiempo (años)')
        ax2.set_ylabel('Precio (USD/onza)')
        ax2.set_title('(b) Trayectorias Simuladas - Precio del Oro')

        # Ajustar límites del eje y para el oro
        ax2.set_ylim([0, np.percentile(results['gold_paths'], 99.5)])

        # Formatear el eje y para incluir comas en los miles
        ax2.yaxis.set_major_formatter(FuncFormatter(lambda x, p: f'{int(x):,}'))

        # Leyenda con mejor posicionamiento
        ax2.legend(loc='upper left', frameon=True, fancybox=False,
                edgecolor='black', bbox_to_anchor=(0.02, 0.98))
        ax2.grid(True, alpha=0.3, linestyle=':')

        # Información sobre parámetros en la esquina superior derecha
        param_text = f'S₀=${self.gold_params["S0"]:,}\nμ={self.gold_params["drift"]:.1%}\nσ={self.gold_params["sigma"]:.1%}'
        ax2.text(0.98, 0.98, param_text, transform=ax2.transAxes,
                bbox=dict(boxstyle='round,pad=0.5', facecolor='white', alpha=0.9),
                verticalalignment='top', horizontalalignment='right', fontsize=10)

        # Título general de la figura
        fig.suptitle(f'Simulación Monte Carlo de Precios de Commodities: {len(results["copper_paths"]):,} trayectorias',
                    fontsize=14, fontweight='bold')

        # Nota al pie
        fig.text(0.5, 0.02,
                'Nota: Los precios siguen un Movimiento Browniano Geométrico (GBM). ' +
                'Intervalos de confianza (IC) calculados mediante percentiles empíricos.',
                ha='center', fontsize=9, style='italic')

        plt.tight_layout(rect=[0, 0.05, 1, 0.95])

        return fig

# Función de compatibilidad para mantener la interfaz anterior
def simulate_copper_and_gold_prices(T_years=30, time_steps_per_year=12, num_simulations=1000):
    """
    Simula precios de cobre y oro para un horizonte de T años.
    Mantiene la interfaz anterior para compatibilidad con el resto del código.

    NOTA: Ahora ambos commodities usan Movimiento Browniano Geométrico.

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
    # Crear simulador
    simulator = CommodityPriceSimulator()

    # Ajustar parámetros iniciales si es necesario
    dt = 1 / time_steps_per_year

    # Ejecutar simulación
    copper_paths = simulator.simulate_copper_price(T_years, dt, num_simulations)
    gold_paths = simulator.simulate_gold_price(T_years, dt, num_simulations)

    # Preparar formato de resultados compatible con la interfaz anterior
    time = np.linspace(0, T_years, copper_paths.shape[1])

    # No hay regímenes o convenience yield en estos modelos simplificados
    # pero devolvemos arrays vacíos para mantener la interfaz
    regimes = np.zeros_like(gold_paths)
    convenience_yield = np.zeros_like(copper_paths)

    return {
        'time': time,
        'copper': copper_paths,
        'gold': gold_paths,
        'convenience_yield': convenience_yield,
        'regimes': regimes
    }

# Si se ejecuta como script principal
if __name__ == "__main__":
    # Crear simulador
    simulator = CommodityPriceSimulator()

    # Ejecutar simulación
    results = simulator.run_simulation(T=30, dt=1/12, n_paths=1000)

    # Visualizar resultados
    fig = simulator.plot_simulation_results(results, n_sample_paths=100)

    # Guardar visualización
    timestamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    fig.savefig(f'commodity_simulation_{timestamp}.png', dpi=300, bbox_inches='tight')

    # Mostrar estadísticas finales
    print("\nEstadísticas de precios finales (año 30):")

    print("\nCobre:")
    copper_final = results['copper_stats']['final_price_distribution']
    print(f"  Media: {np.mean(copper_final):.2f} USD/tonelada")
    print(f"  Mediana: {np.median(copper_final):.2f} USD/tonelada")
    print(f"  Desv. Estándar: {np.std(copper_final):.2f} USD/tonelada")
    print(f"  Rango: {np.min(copper_final):.2f} - {np.max(copper_final):.2f} USD/tonelada")

    print("\nOro:")
    gold_final = results['gold_stats']['final_price_distribution']
    print(f"  Media: {np.mean(gold_final):.2f} USD/onza")
    print(f"  Mediana: {np.median(gold_final):.2f} USD/onza")
    print(f"  Desv. Estándar: {np.std(gold_final):.2f} USD/onza")
    print(f"  Rango: {np.min(gold_final):.2f} - {np.max(gold_final):.2f} USD/onza")

    # Calcular correlación entre precios finales
    correlation = np.corrcoef(copper_final, gold_final)[0, 1]
    print(f"\nCorrelación entre precios finales: {correlation:.4f}")

    print("\nSe ha guardado la visualización en un archivo PNG.")

    # Para incorporar en un framework de simulación de fondo soberano
    print("\nEstos modelos de precios pueden ser integrados a un modelo más amplio de fondo soberano")
    print("para simular ingresos por regalías y diversas estrategias de inversión y distribución.")
