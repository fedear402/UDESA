"""
Simulación de Extracciones Mineras para Filo del Sol y Josemaría
---------------------------------------------------------------
Basado en el comunicado de Lundin Mining (Mayo 2025)

Este código simula las extracciones de cobre, oro y plata del proyecto
Filo del Sol/Josemaría en San Juan, calculando las regalías potenciales
para un fondo soberano.
"""

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from scipy import stats
import datetime as dt

# Configuración de visualización
plt.style.use('seaborn-v0_8-whitegrid')
plt.rcParams['figure.figsize'] = (12, 8)
plt.rcParams['font.size'] = 12
sns.set_palette("viridis")
np.random.seed(42)  # Para reproducibilidad

def convert_triangular_params(left, mode, right):
    """
    Convierte parámetros intuitivos de distribución triangular a los parámetros
    que usa scipy.stats.triang

    Args:
        left: límite inferior
        mode: valor más probable
        right: límite superior

    Returns:
        dict con los parámetros c, loc, scale para stats.triang
    """
    loc = left
    scale = right - left
    c = (mode - left) / scale  # Posición relativa del pico
    return {'c': c, 'loc': loc, 'scale': scale}

class SimuladorMina:
    """
    Simulador de extracciones mineras a lo largo del tiempo
    """
    def __init__(self, nombre_proyecto, año_inicio=2027):
        """
        Inicializa el simulador con los parámetros básicos del proyecto

        Args:
            nombre_proyecto: Nombre del proyecto minero
            año_inicio: Año de inicio de la construcción
        """
        self.nombre_proyecto = nombre_proyecto
        self.año_inicio = año_inicio

        # Parámetros del yacimiento (según comunicado Lundin Mining)
        self.recursos = {
            'Cu': {
                'M&I': 13e6,       # toneladas de cobre M&I
                'Inferido': 25e6    # toneladas de cobre inferido
            },
            'Au': {
                'M&I': 32e6,       # onzas de oro M&I
                'Inferido': 49e6    # onzas de oro inferido
            },
            'Ag': {
                'M&I': 659e6,      # onzas de plata M&I
                'Inferido': 808e6   # onzas de plata inferido
            }
        }

        # Distribución de recursos por tipo de material
        self.distribución_recursos = {
            'oxidos': 434/3638,     # Fracción de material de óxidos
            'alto_grado': 606/3638, # Fracción de material de alto grado
            'resto': 1 - (434/3638) - (606/3638)
        }

        # Recuperación metalúrgica (según comunicado)
        self.recuperación = {
            'oxidos': {'Cu': 0.67, 'Au': 0.63, 'Ag': 0.78},
            'sulfuros': {'Cu': 0.78, 'Au': 0.62, 'Ag': 0.62}
        }

        # Parámetros de tiempo por defecto
        self.años_construcción = 3
        self.años_rampa = 3
        self.años_meseta = 17
        self.años_declive = 5

        # Precios de metales por defecto (USD)
        self.precios = {
            'Cu': 4.43 * 2204.62,  # USD/ton (desde USD/lb)
            'Au': 2185,            # USD/oz
            'Ag': 28.80            # USD/oz
        }

        # Tasa de regalía
        self.tasa_regalía = 0.03   # 3% del valor bruto

        # Resultados de simulación
        self.resultados = None
        self.regalías = None

    def definir_parametros_temporales(self, construcción=3, rampa=3, meseta=17, declive=5):
        """
        Define los parámetros temporales del proyecto

        Args:
            construcción: años de construcción (sin producción)
            rampa: años de incremento de producción
            meseta: años de producción estable
            declive: años de reducción de producción
        """
        self.años_construcción = construcción
        self.años_rampa = rampa
        self.años_meseta = meseta
        self.años_declive = declive

    def definir_precios(self, precio_cu=None, precio_au=None, precio_ag=None):
        """
        Define los precios de los metales

        Args:
            precio_cu: precio del cobre en USD/ton
            precio_au: precio del oro en USD/oz
            precio_ag: precio de la plata en USD/oz
        """
        if precio_cu is not None:
            self.precios['Cu'] = precio_cu
        if precio_au is not None:
            self.precios['Au'] = precio_au
        if precio_ag is not None:
            self.precios['Ag'] = precio_ag

    def simular_perfil_base(self, metal, recursos_total, tasa_max_extracción, años_extra=0):
        """
        Genera un perfil de producción base para un metal

        Args:
            metal: símbolo del metal ('Cu', 'Au', 'Ag')
            recursos_total: recursos totales del metal
            tasa_max_extracción: tasa máxima anual de extracción
            años_extra: años adicionales para ajustar la simulación

        Returns:
            lista con producción anual
        """
        extracción_anual = []

        # Fase pre-operativa (construcción)
        for _ in range(self.años_construcción):
            extracción_anual.append(0)

        # Fase de rampa
        for i in range(self.años_rampa):
            factor = (i + 1) / self.años_rampa  # Factor creciente: 1/3, 2/3, 3/3
            extracción_anual.append(tasa_max_extracción * factor)

        # Fase de meseta productiva
        for _ in range(self.años_meseta + años_extra):
            extracción_anual.append(tasa_max_extracción)

        # Fase de declive
        recursos_extraídos = sum(extracción_anual)
        recursos_restantes = max(0.01, recursos_total - recursos_extraídos)

        # Calculamos una tasa de declive que agote los recursos restantes
        tasa_declive = recursos_restantes / sum([(self.años_declive - i) for i in range(self.años_declive)])

        for i in range(self.años_declive):
            factor_declive = (self.años_declive - i) / self.años_declive
            extracción = min(tasa_declive * factor_declive, recursos_restantes)
            recursos_restantes -= extracción
            extracción_anual.append(extracción)

        return extracción_anual

    def simular_perfil_producción(self, escenario='base'):
        """
        Simula el perfil de producción para todos los metales

        Args:
            escenario: 'base', 'optimista' o 'conservador'

        Returns:
            DataFrame con la producción anual por metal
        """
        # Factores de ajuste según escenario
        factores = {
            'base': {
                'construcción': 0,
                'rampa': 0,
                'meseta': 0,
                'extracción': 1.0
            },
            'optimista': {
                'construcción': -0.5,
                'rampa': -0.5,
                'meseta': 2,
                'extracción': 1.1
            },
            'conservador': {
                'construcción': 1,
                'rampa': 1,
                'meseta': -2,
                'extracción': 0.9
            }
        }

        factor = factores[escenario]

        # Ajustar parámetros temporales según escenario
        años_construcción = max(1, self.años_construcción + factor['construcción'])
        años_rampa = max(1, self.años_rampa + factor['rampa'])
        años_meseta = max(5, self.años_meseta + factor['meseta'])

        # Calcular tasas máximas de extracción
        recursos_MI = {
            'Cu': self.recursos['Cu']['M&I'],
            'Au': self.recursos['Au']['M&I'],
            'Ag': self.recursos['Ag']['M&I']
        }

        # Usado factor recuperación promedio para simplificar
        recuperacion_promedio = {
            'Cu': (self.recuperación['oxidos']['Cu'] * self.distribución_recursos['oxidos'] +
                   self.recuperación['sulfuros']['Cu'] * (1 - self.distribución_recursos['oxidos'])),
            'Au': (self.recuperación['oxidos']['Au'] * self.distribución_recursos['oxidos'] +
                   self.recuperación['sulfuros']['Au'] * (1 - self.distribución_recursos['oxidos'])),
            'Ag': (self.recuperación['oxidos']['Ag'] * self.distribución_recursos['oxidos'] +
                   self.recuperación['sulfuros']['Ag'] * (1 - self.distribución_recursos['oxidos']))
        }

        # Calcular tasas máximas basadas en la vida útil y la recuperación
        vida_util = años_construcción + años_rampa + años_meseta + self.años_declive

        tasa_max = {
            metal: (recursos_MI[metal] * recuperacion_promedio[metal]) /
                   (años_rampa/2 + años_meseta + self.años_declive/3) * factor['extracción']
            for metal in ['Cu', 'Au', 'Ag']
        }

        # Generar perfiles de producción
        perfiles = {
            metal: self.simular_perfil_base(
                metal,
                recursos_MI[metal] * recuperacion_promedio[metal],
                tasa_max[metal],
                años_extra=0
            )
            for metal in ['Cu', 'Au', 'Ag']
        }

        # Crear DataFrame con resultados
        años = range(self.año_inicio, self.año_inicio + len(perfiles['Cu']))
        df = pd.DataFrame({
            'Año': años,
            'Cu_ton': perfiles['Cu'],
            'Au_oz': perfiles['Au'],
            'Ag_oz': perfiles['Ag']
        })

        return df

    def simular_monte_carlo(self, n_simulaciones=1000):
        """
        Realiza simulación Monte Carlo de la producción minera

        Args:
            n_simulaciones: número de simulaciones a realizar

        Returns:
            DataFrame con estadísticas de las simulaciones
        """
        # Definir variables inciertas
        variables = {
            'tiempo_construcción': {
                'tipo': 'triangular',
                'params': convert_triangular_params(2.5, 3, 4.5)
            },
            'recuperación_Cu': {
                'tipo': 'normal',
                'params': {'loc': 0.78, 'scale': 0.03}
            },
            'recuperación_Au': {
                'tipo': 'normal',
                'params': {'loc': 0.62, 'scale': 0.05}
            },
            'recuperación_Ag': {
                'tipo': 'normal',
                'params': {'loc': 0.62, 'scale': 0.05}
            },
            'tasa_max_producción': {
                'tipo': 'triangular',
                'params': convert_triangular_params(0.85, 1.0, 1.1)
            },
            'dilución': {
                'tipo': 'normal',
                'params': {'loc': 0.05, 'scale': 0.01}
            },
            'años_meseta': {
                'tipo': 'discreto',
                'params': {'valores': [15, 17, 20], 'probs': [0.25, 0.5, 0.25]}
            },
            'retrasos_operativos': {
                'tipo': 'poisson',
                'params': {'mu': 0.15}
            }
        }

        # Resultados de las simulaciones
        resultados_simulaciones = []

        for sim in range(n_simulaciones):
            # Generar valores para variables inciertas
            valores = {}

            for var, config in variables.items():
                if config['tipo'] == 'triangular':
                    valores[var] = stats.triang.rvs(**config['params'])
                elif config['tipo'] == 'normal':
                    valores[var] = stats.norm.rvs(**config['params'])
                elif config['tipo'] == 'discreto':
                    valores[var] = np.random.choice(
                        config['params']['valores'],
                        p=config['params']['probs']
                    )
                elif config['tipo'] == 'poisson':
                    valores[var] = stats.poisson.rvs(**config['params'])

            # Ajustar parámetros para esta simulación
            self.definir_parametros_temporales(
                construcción=int(valores['tiempo_construcción']),
                rampa=self.años_rampa,
                meseta=int(valores['años_meseta']),
                declive=self.años_declive
            )

            # Actualizar recuperación para esta simulación
            self.recuperación['sulfuros']['Cu'] = min(0.95, max(0.5, valores['recuperación_Cu']))
            self.recuperación['sulfuros']['Au'] = min(0.9, max(0.4, valores['recuperación_Au']))
            self.recuperación['sulfuros']['Ag'] = min(0.9, max(0.4, valores['recuperación_Ag']))

            # Simular producción con estos parámetros
            df_sim = self.simular_perfil_producción()

            # Añadir factor de dilución
            factor_dilución = 1 - valores['dilución']
            df_sim['Cu_ton'] = df_sim['Cu_ton'] * factor_dilución
            df_sim['Au_oz'] = df_sim['Au_oz'] * factor_dilución
            df_sim['Ag_oz'] = df_sim['Ag_oz'] * factor_dilución

            # Añadir retrasos operativos
            if valores['retrasos_operativos'] > 0:
                # Simular retrasos como caídas aleatorias de producción
                n_años = len(df_sim)
                for _ in range(int(valores['retrasos_operativos'])):
                    año_retraso = np.random.randint(
                        self.años_construcción + 1,
                        n_años - 1
                    )
                    factor_retraso = np.random.uniform(0.7, 0.9)
                    df_sim.loc[df_sim['Año'] == self.año_inicio + año_retraso, 'Cu_ton'] *= factor_retraso
                    df_sim.loc[df_sim['Año'] == self.año_inicio + año_retraso, 'Au_oz'] *= factor_retraso
                    df_sim.loc[df_sim['Año'] == self.año_inicio + año_retraso, 'Ag_oz'] *= factor_retraso

            # Calcular métricas para esta simulación
            total_cu = df_sim['Cu_ton'].sum()
            total_au = df_sim['Au_oz'].sum()
            total_ag = df_sim['Ag_oz'].sum()

            # Calcular valor actualizado
            tasa_descuento = 0.08
            años = df_sim['Año'] - df_sim['Año'].min()

            valor_presente = sum(
                (df_sim['Cu_ton'] * self.precios['Cu'] +
                 df_sim['Au_oz'] * self.precios['Au'] +
                 df_sim['Ag_oz'] * self.precios['Ag']) /
                (1 + tasa_descuento) ** años
            )

            # Almacenar resultados
            resultados_simulaciones.append({
                'Simulación': sim + 1,
                'Años Construcción': valores['tiempo_construcción'],
                'Años Meseta': valores['años_meseta'],
                'Recuperación Cu': valores['recuperación_Cu'],
                'Recuperación Au': valores['recuperación_Au'],
                'Recuperación Ag': valores['recuperación_Ag'],
                'Factor Dilución': valores['dilución'],
                'Retrasos': valores['retrasos_operativos'],
                'Total Cu (ton)': total_cu,
                'Total Au (oz)': total_au,
                'Total Ag (oz)': total_ag,
                'NPV (USD)': valor_presente
            })

        # Convertir a DataFrame
        df_resultados = pd.DataFrame(resultados_simulaciones)

        # Calcular estadísticas por percentiles
        percentiles = [10, 25, 50, 75, 90]

        stats_cu = df_resultados['Total Cu (ton)'].quantile(np.array(percentiles)/100).to_dict()
        stats_au = df_resultados['Total Au (oz)'].quantile(np.array(percentiles)/100).to_dict()
        stats_ag = df_resultados['Total Ag (oz)'].quantile(np.array(percentiles)/100).to_dict()
        stats_npv = df_resultados['NPV (USD)'].quantile(np.array(percentiles)/100).to_dict()

        self.resultados = {
            'detalle': df_resultados,
            'resumen': {
                'percentiles': percentiles,
                'Cu': stats_cu,
                'Au': stats_au,
                'Ag': stats_ag,
                'NPV': stats_npv
            }
        }

        return df_resultados

    def calcular_regalías(self, df_producción=None, detallado=False):
        """
        Calcula las regalías generadas por la producción minera

        Args:
            df_producción: DataFrame con la producción anual
            detallado: si True, devuelve regalías por metal

        Returns:
            DataFrame con las regalías anuales
        """
        if df_producción is None:
            # Si no se proporciona, usar el escenario base
            df_producción = self.simular_perfil_producción()

        # Calcular valor de producción anual
        df_regalías = df_producción.copy()

        df_regalías['Valor_Cu'] = df_regalías['Cu_ton'] * self.precios['Cu']
        df_regalías['Valor_Au'] = df_regalías['Au_oz'] * self.precios['Au']
        df_regalías['Valor_Ag'] = df_regalías['Ag_oz'] * self.precios['Ag']

        df_regalías['Valor_Total'] = (
            df_regalías['Valor_Cu'] +
            df_regalías['Valor_Au'] +
            df_regalías['Valor_Ag']
        )

        # Calcular regalías (3% del valor bruto)
        df_regalías['Regalías_Cu'] = df_regalías['Valor_Cu'] * self.tasa_regalía
        df_regalías['Regalías_Au'] = df_regalías['Valor_Au'] * self.tasa_regalía
        df_regalías['Regalías_Ag'] = df_regalías['Valor_Ag'] * self.tasa_regalía
        df_regalías['Regalías_Total'] = df_regalías['Valor_Total'] * self.tasa_regalía

        # Convertir a millones USD para facilitar lectura
        for col in ['Valor_Cu', 'Valor_Au', 'Valor_Ag', 'Valor_Total',
                    'Regalías_Cu', 'Regalías_Au', 'Regalías_Ag', 'Regalías_Total']:
            df_regalías[col] = df_regalías[col] / 1e6

        # Renombrar columnas
        df_regalías = df_regalías.rename(columns={
            'Valor_Cu': 'Valor Cu (M USD)',
            'Valor_Au': 'Valor Au (M USD)',
            'Valor_Ag': 'Valor Ag (M USD)',
            'Valor_Total': 'Valor Total (M USD)',
            'Regalías_Cu': 'Regalías Cu (M USD)',
            'Regalías_Au': 'Regalías Au (M USD)',
            'Regalías_Ag': 'Regalías Ag (M USD)',
            'Regalías_Total': 'Regalías Total (M USD)'
        })

        self.regalías = df_regalías

        if detallado:
            return df_regalías
        else:
            return df_regalías[['Año', 'Regalías Total (M USD)']]

    def visualizar_producción(self, df_producción=None, guardar=True):
        """
        Visualiza el perfil de producción de los diferentes metales

        Args:
            df_producción: DataFrame con la producción anual
            guardar: si True, guarda la figura en un archivo
        """
        if df_producción is None:
            # Si no se proporciona, usar el escenario base
            df_producción = self.simular_perfil_producción()

        # Crear figura con subplots
        fig, axs = plt.subplots(3, 1, figsize=(14, 12), sharex=True)

        # Gráfico 1: Producción de Cobre
        axs[0].plot(df_producción['Año'], df_producción['Cu_ton']/1000,
                    marker='o', linestyle='-', linewidth=2)
        axs[0].set_ylabel('Miles de Toneladas')
        axs[0].set_title('Producción Anual de Cobre')
        axs[0].grid(True)

        # Gráfico 2: Producción de Oro
        axs[1].plot(df_producción['Año'], df_producción['Au_oz']/1000,
                    marker='s', linestyle='-', linewidth=2, color='goldenrod')
        axs[1].set_ylabel('Miles de Onzas')
        axs[1].set_title('Producción Anual de Oro')
        axs[1].grid(True)

        # Gráfico 3: Producción de Plata
        axs[2].plot(df_producción['Año'], df_producción['Ag_oz']/1000,
                    marker='^', linestyle='-', linewidth=2, color='silver')
        axs[2].set_ylabel('Miles de Onzas')
        axs[2].set_title('Producción Anual de Plata')
        axs[2].set_xlabel('Año')
        axs[2].grid(True)

        # Ajustar layout
        plt.tight_layout()

        # Título global
        fig.suptitle(f'Perfil de Producción Proyectado - {self.nombre_proyecto}',
                     fontsize=16, y=1.02)

        if guardar:
            plt.savefig('produccion.png', dpi=300, bbox_inches='tight')

        plt.show()

    def visualizar_regalías(self, df_regalías=None, acumulado=True, guardar=True):
        """
        Visualiza las regalías generadas por año

        Args:
            df_regalías: DataFrame con las regalías calculadas
            acumulado: si True, muestra también regalías acumuladas
            guardar: si True, guarda la figura en un archivo
        """
        if df_regalías is None:
            if self.regalías is None:
                # Calcular regalías con escenario base
                self.calcular_regalías()
            df_regalías = self.regalías

        # Crear figura con subplots
        if acumulado:
            fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(14, 10), height_ratios=[3, 2])
        else:
            fig, ax1 = plt.subplots(figsize=(14, 6))

        # Gráfico 1: Regalías por metal
        ax1.bar(df_regalías['Año'], df_regalías['Regalías Cu (M USD)'],
                label='Cobre', color='#1f77b4')
        ax1.bar(df_regalías['Año'], df_regalías['Regalías Au (M USD)'], bottom=df_regalías['Regalías Cu (M USD)'],
                label='Oro', color='#ff7f0e')
        ax1.bar(df_regalías['Año'], df_regalías['Regalías Ag (M USD)'],
                bottom=df_regalías['Regalías Cu (M USD)'] + df_regalías['Regalías Au (M USD)'],
                label='Plata', color='#2ca02c')

        # Añadir línea de total
        ax1.plot(df_regalías['Año'], df_regalías['Regalías Total (M USD)'],
                 marker='o', linestyle='-', linewidth=2, color='red', label='Total')

        ax1.set_ylabel('Millones USD')
        ax1.set_title('Regalías Anuales por Metal')
        ax1.legend()
        ax1.grid(True)

        # Gráfico 2: Regalías acumuladas (si se solicita)
        if acumulado:
            df_regalías['Regalías_Acumuladas'] = df_regalías['Regalías Total (M USD)'].cumsum()

            ax2.plot(df_regalías['Año'], df_regalías['Regalías_Acumuladas'],
                     marker='s', linestyle='-', linewidth=3, color='darkred')
            ax2.fill_between(df_regalías['Año'], df_regalías['Regalías_Acumuladas'], alpha=0.3, color='darkred')

            ax2.set_ylabel('Millones USD')
            ax2.set_xlabel('Año')
            ax2.set_title('Regalías Acumuladas')
            ax2.grid(True)
        else:
            ax1.set_xlabel('Año')

        # Ajustar layout
        plt.tight_layout()

        # Título global
        fig.suptitle(f'Proyección de Regalías - {self.nombre_proyecto} (Tasa: {self.tasa_regalía*100}%)',
                     fontsize=16, y=1.02)

        if guardar:
            plt.savefig('regalias.png', dpi=300, bbox_inches='tight')

        plt.show()

    def visualizar_monte_carlo(self, guardar=True):
        """
        Visualiza los resultados de la simulación Monte Carlo

        Args:
            guardar: si True, guarda la figura en un archivo
        """
        if self.resultados is None:
            print("No hay resultados de simulación Monte Carlo. Ejecute primero simular_monte_carlo().")
            return

        # Extraer datos
        df_resultados = self.resultados['detalle']

        # Crear figura con subplots
        fig, axs = plt.subplots(2, 2, figsize=(16, 12))

        # Histograma de producción total de cobre
        sns.histplot(df_resultados['Total Cu (ton)']/1e6, kde=True, ax=axs[0, 0], color='blue')
        axs[0, 0].set_xlabel('Millones de Toneladas')
        axs[0, 0].set_ylabel('Frecuencia')
        axs[0, 0].set_title('Producción Total de Cobre')

        # Histograma de producción total de oro
        sns.histplot(df_resultados['Total Au (oz)']/1e6, kde=True, ax=axs[0, 1], color='goldenrod')
        axs[0, 1].set_xlabel('Millones de Onzas')
        axs[0, 1].set_ylabel('Frecuencia')
        axs[0, 1].set_title('Producción Total de Oro')

        # Histograma de producción total de plata
        sns.histplot(df_resultados['Total Ag (oz)']/1e6, kde=True, ax=axs[1, 0], color='silver')
        axs[1, 0].set_xlabel('Millones de Onzas')
        axs[1, 0].set_ylabel('Frecuencia')
        axs[1, 0].set_title('Producción Total de Plata')

        # Histograma de VPN
        sns.histplot(df_resultados['NPV (USD)']/1e9, kde=True, ax=axs[1, 1], color='green')
        axs[1, 1].set_xlabel('Miles de Millones USD')
        axs[1, 1].set_ylabel('Frecuencia')
        axs[1, 1].set_title('Valor Presente Neto')

        # Ajustar layout
        plt.tight_layout()

        # Título global
        fig.suptitle(f'Resultados de Simulación Monte Carlo - {self.nombre_proyecto} ({len(df_resultados)} simulaciones)',
                     fontsize=16, y=1.02)

        if guardar:
            plt.savefig('monte_carlo.png', dpi=300, bbox_inches='tight')

        plt.show()

    def generar_informe(self, escenarios=True, monte_carlo=True):
        """
        Genera un informe completo con los resultados de las simulaciones

        Args:
            escenarios: si True, incluye comparación de escenarios
            monte_carlo: si True, incluye resultados de Monte Carlo
        """
        print(f"=== INFORME DE SIMULACIÓN: {self.nombre_proyecto.upper()} ===")
        print(f"Fecha: {dt.datetime.now().strftime('%d/%m/%Y')}")
        print("\n1. PARÁMETROS DE SIMULACIÓN")
        print(f"   - Año de inicio: {self.año_inicio}")
        print(f"   - Años de construcción: {self.años_construcción}")
        print(f"   - Años de rampa: {self.años_rampa}")
        print(f"   - Años de meseta: {self.años_meseta}")
        print(f"   - Años de declive: {self.años_declive}")
        print(f"   - Precios: Cu={self.precios['Cu']/2204.62:.2f} USD/lb, Au={self.precios['Au']:.2f} USD/oz, Ag={self.precios['Ag']:.2f} USD/oz")
        print(f"   - Tasa de regalía: {self.tasa_regalía*100:.1f}%")

        print("\n2. RECURSOS")
        print(f"   - Cobre: {self.recursos['Cu']['M&I']/1e6:.2f} millones de toneladas (M&I)")
        print(f"   - Oro: {self.recursos['Au']['M&I']/1e6:.2f} millones de onzas (M&I)")
        print(f"   - Plata: {self.recursos['Ag']['M&I']/1e6:.2f} millones de onzas (M&I)")

        print("\n3. ESCENARIO BASE")
        df_base = self.simular_perfil_producción(escenario='base')
        df_regalías = self.calcular_regalías(df_base)

        producción_total = {
            'Cu': df_base['Cu_ton'].sum()/1e6,
            'Au': df_base['Au_oz'].sum()/1e6,
            'Ag': df_base['Ag_oz'].sum()/1e6
        }
        regalías_total = df_regalías['Regalías Total (M USD)'].sum()

        print(f"   - Duración total: {len(df_base)} años")
        print(f"   - Producción total: {producción_total['Cu']:.2f} M ton Cu, {producción_total['Au']:.2f} M oz Au, {producción_total['Ag']:.2f} M oz Ag")
        print(f"   - Regalías totales: {regalías_total:.2f} millones USD")

        if escenarios:
            print("\n4. COMPARACIÓN DE ESCENARIOS")
            df_opt = self.simular_perfil_producción(escenario='optimista')
            df_cons = self.simular_perfil_producción(escenario='conservador')

            df_regalías_opt = self.calcular_regalías(df_opt)
            df_regalías_cons = self.calcular_regalías(df_cons)

            regalías_opt = df_regalías_opt['Regalías Total (M USD)'].sum()
            regalías_cons = df_regalías_cons['Regalías Total (M USD)'].sum()

            print(f"   - Escenario Base: {regalías_total:.2f} millones USD")
            print(f"   - Escenario Optimista: {regalías_opt:.2f} millones USD (+{(regalías_opt-regalías_total)/regalías_total*100:.1f}%)")
            print(f"   - Escenario Conservador: {regalías_cons:.2f} millones USD ({(regalías_cons-regalías_total)/regalías_total*100:.1f}%)")

        if monte_carlo and self.resultados is not None:
            print("\n5. RESULTADOS MONTE CARLO")

            for metal, stats in [('Cu', self.resultados['resumen']['Cu']),
                               ('Au', self.resultados['resumen']['Au']),
                               ('Ag', self.resultados['resumen']['Ag'])]:
                print(f"   - {metal} (Producción Total):")
                for p, val in stats.items():
                    if metal == 'Cu':
                        print(f"     P{p}: {val/1e6:.2f} millones de toneladas")
                    else:
                        print(f"     P{p}: {val/1e6:.2f} millones de onzas")

            print("   - Valor Presente Neto (USD):")
            for p, val in self.resultados['resumen']['NPV'].items():
                print(f"     P{p}: {val/1e9:.2f} miles de millones USD")

        print("\n=== FIN DEL INFORME ===")


# Ejemplo de uso
if __name__ == "__main__":
    # Crear simulador para el proyecto Filo del Sol / Josemaría
    simulador = SimuladorMina("Filo del Sol / Josemaría", año_inicio=2027)

    # Definir parámetros temporales
    simulador.definir_parametros_temporales(construcción=3, rampa=3, meseta=17, declive=5)

    # Definir precios actualizados si se desea
    # simulador.definir_precios(precio_cu=9750, precio_au=2300, precio_ag=30)

    # Simular escenario base
    df_producción = simulador.simular_perfil_producción()
    print("Perfil de producción generado.")

    # Calcular regalías
    df_regalías = simulador.calcular_regalías(df_producción, detallado=True)
    print("Regalías calculadas.")

    # Visualizar resultados
    print("Guardando visualizaciones...")
    simulador.visualizar_producción(df_producción, guardar=True)
    simulador.visualizar_regalías(df_regalías, guardar=True)

    # Realizar simulación Monte Carlo
    print("Ejecutando simulación Monte Carlo (1000 iteraciones)...")
    simulador.simular_monte_carlo(n_simulaciones=1000)
    simulador.visualizar_monte_carlo(guardar=True)

    # Generar informe
    simulador.generar_informe()

    print("Visualizaciones guardadas en el directorio actual.")
