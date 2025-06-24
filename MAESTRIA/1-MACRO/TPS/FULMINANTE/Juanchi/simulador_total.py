"""
Integración de Simulador de Extracciones Mineras con Modelo Estocástico de Precios
para el diseño de un Fondo Soberano en San Juan
"""

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from scipy import stats
import datetime as dt
import os

# Asegurar que existe el directorio para guardar los gráficos
os.makedirs('graficos', exist_ok=True)

# Importar simulador de precios de commodities
# (asumiendo que está en un archivo llamado 'simulador_precios.py')
from simulador_precios import simulate_copper_and_gold_prices

# Importar simulador de mina
from simulation_extraction import SimuladorMina

class SimuladorFondoSoberano:
    """
    Simulador integrado de extracciones mineras y precios para modelar un fondo soberano
    """
    def __init__(self, nombre_proyecto, año_inicio=2027, población_inicial=781000):
        """
        Inicializa el simulador integrado

        Args:
            nombre_proyecto: Nombre del proyecto
            año_inicio: Año de inicio de la simulación
            población_inicial: Población de San Juan en el año_inicio
        """
        self.nombre_proyecto = nombre_proyecto
        self.año_inicio = año_inicio
        self.población_inicial = población_inicial

        # Parámetros para proyección demográfica
        self.tasa_crecimiento_población = 0.0094  # Crecimiento anual 0.94% (proyección INDEC)

        # Inicializar simulador de mina (reutilizando la clase que ya creamos)
        self.simulador_mina = SimuladorMina(nombre_proyecto, año_inicio)

        # Parámetros para simulación de precios
        self.horizonte_precios = 50  # Años a simular (suficiente para cubrir la vida de la mina)
        self.pasos_tiempo = 12       # Mensual
        self.n_simulaciones = 1000   # Número de trayectorias

        # Resultados de simulaciones
        self.precios_simulados = None
        self.extracciones_simuladas = None
        self.regalías_simuladas = None
        self.fondo_simulado = None
        self.proyección_población = None

        # Generar proyección de población
        self._proyectar_población()

    def _proyectar_población(self):
        """
        Genera una proyección de la población de San Juan
        """
        # Años de simulación
        años = range(self.año_inicio, self.año_inicio + self.horizonte_precios + 1)

        # Calcular población para cada año
        población = [self.población_inicial * (1 + self.tasa_crecimiento_población) ** (año - self.año_inicio)
                     for año in años]

        # Crear DataFrame
        self.proyección_población = pd.DataFrame({
            'Año': años,
            'Población': población
        })

        return self.proyección_población

    def simular_precios(self):
        """
        Ejecuta la simulación de precios de commodities
        """
        print("Simulando precios de cobre y oro...")

        # Llamar a la función del simulador de precios
        resultado_precios = simulate_copper_and_gold_prices(
            T_years=self.horizonte_precios,
            time_steps_per_year=self.pasos_tiempo,
            num_simulations=self.n_simulaciones
        )

        # Extraer series temporales de precios y convertir a DataFrame
        tiempo = resultado_precios['time']
        precios_cobre = resultado_precios['copper']
        precios_oro = resultado_precios['gold']

        # Agregar precios mensuales a precios anuales (promedio)
        años = np.array([self.año_inicio + int(t) for t in tiempo])

        # Crear un dataframe con todos los datos
        df_simulaciones = []

        for sim in range(self.n_simulaciones):
            # Extraer una trayectoria de precios
            precios_cobre_sim = precios_cobre[sim]
            precios_oro_sim = precios_oro[sim]

            # Calcular promedio anual
            df_anual = pd.DataFrame({
                'Año': años,
                'Simulación': sim,
                'Precio_Cu': precios_cobre_sim,
                'Precio_Au': precios_oro_sim,
                # Podemos inferir precio de plata con correlación al oro
                'Precio_Ag': precios_oro_sim * 0.013  # Relación histórica aproximada
            })

            # Agrupar por año (promedio)
            df_anual = df_anual.groupby(['Año', 'Simulación']).mean().reset_index()
            df_simulaciones.append(df_anual)

        # Combinar todas las simulaciones
        self.precios_simulados = pd.concat(df_simulaciones)

        return self.precios_simulados

    def simular_extracciones(self):
        """
        Simula las extracciones mineras con Monte Carlo
        """
        print("Simulando extracciones mineras...")

        # Ejecutar simulación Monte Carlo de extracciones
        self.extracciones_simuladas = self.simulador_mina.simular_monte_carlo(
            n_simulaciones=self.n_simulaciones
        )

        # Convertir resultados a formato adecuado para integración
        # [Lógica para procesar extracciones simuladas]

        return self.extracciones_simuladas

    def simular_regalías_integradas(self):
        """
        Integra las simulaciones de precios y extracciones para calcular regalías
        """
        print("Calculando regalías con precios y extracciones simuladas...")

        # Verificar si ya tenemos simulaciones
        if self.precios_simulados is None:
            self.simular_precios()

        if self.extracciones_simuladas is None:
            self.simular_extracciones()

        # Obtener perfil de producción base para cada simulación
        perfiles_producción = []

        for sim in range(self.n_simulaciones):
            # Ajustar parámetros según valores de simulación Monte Carlo
            # [Código para configurar simulación específica]

            # Obtener perfil de producción para esta simulación
            df_producción = self.simulador_mina.simular_perfil_producción()
            df_producción['Simulación'] = sim
            perfiles_producción.append(df_producción)

        # Combinar perfiles de producción
        df_perfiles = pd.concat(perfiles_producción)

        # Unir con precios simulados
        df_regalías = pd.merge(
            df_perfiles,
            self.precios_simulados,
            on=['Año', 'Simulación']
        )

        # Calcular valor de producción con precios simulados
        df_regalías['Valor_Cu'] = df_regalías['Cu_ton'] * df_regalías['Precio_Cu']
        df_regalías['Valor_Au'] = df_regalías['Au_oz'] * df_regalías['Precio_Au']
        df_regalías['Valor_Ag'] = df_regalías['Ag_oz'] * df_regalías['Precio_Ag']
        df_regalías['Valor_Total'] = df_regalías['Valor_Cu'] + df_regalías['Valor_Au'] + df_regalías['Valor_Ag']

        # Calcular regalías (3%)
        df_regalías['Regalías'] = df_regalías['Valor_Total'] * 0.03

        # Guardar resultados
        self.regalías_simuladas = df_regalías

        return self.regalías_simuladas

    def simular_fondo_soberano(self, regla_acumulación=0.7, rendimiento_anual=0.04,
                              regla_distribución=0.03):
        """
        Simula la evolución del fondo soberano con diferentes reglas

        Args:
            regla_acumulación: fracción de regalías que se acumula (0-1)
            rendimiento_anual: rendimiento anual de las inversiones
            regla_distribución: fracción del fondo que se distribuye anualmente
        """
        print("Simulando evolución del fondo soberano...")

        # Verificar si ya tenemos regalías simuladas
        if self.regalías_simuladas is None:
            self.simular_regalías_integradas()

        # Simular evolución del fondo para cada trayectoria
        simulaciones = self.regalías_simuladas['Simulación'].unique()
        años = sorted(self.regalías_simuladas['Año'].unique())

        resultados_fondo = []

        for sim in simulaciones:
            # Filtrar regalías para esta simulación
            regalías_sim = self.regalías_simuladas[self.regalías_simuladas['Simulación'] == sim]

            # Inicializar valores
            saldo_fondo = 0
            distribución_acumulada = 0

            for año in años:
                # Filtrar datos del año actual
                regalía_año = regalías_sim[regalías_sim['Año'] == año]['Regalías'].values

                if len(regalía_año) > 0:
                    regalía_año = regalía_año[0]
                else:
                    regalía_año = 0

                # Calcular flujos del fondo
                aporte_fondo = regalía_año * regla_acumulación
                rendimiento = saldo_fondo * rendimiento_anual
                distribución = saldo_fondo * regla_distribución

                # Calcular distribución con componente universal y focalizado
                distribución_universal = saldo_fondo * regla_distribución * 0.3  # 30% universal
                distribución_focalizada = saldo_fondo * regla_distribución * 0.7  # 70% focalizado

                # Obtener población proyectada para este año
                población = self.proyección_población[self.proyección_población['Año'] == año]['Población'].values[0]

                # Cálculos per cápita
                población_universal = población  # Toda la población
                población_focalizada = población * 0.6  # Solo 60% califica (adultos con residencia)

                distribución_pc_universal = distribución_universal / población_universal if población_universal > 0 else 0
                distribución_pc_focalizada = distribución_focalizada / población_focalizada if población_focalizada > 0 else 0

                # Actualizar saldo
                saldo_fondo = saldo_fondo + aporte_fondo + rendimiento - distribución
                distribución_acumulada += distribución

                # Calcular métricas per cápita
                distribución_per_capita = distribución / población
                saldo_per_capita = saldo_fondo / población
                regalías_per_capita = regalía_año / población

                # Guardar resultados
                resultados_fondo.append({
                    'Simulación': sim,
                    'Año': año,
                    'Población': población,
                    'Regalías': regalía_año,
                    'Regalías_Per_Capita': regalías_per_capita,
                    'Aporte_Fondo': aporte_fondo,
                    'Rendimiento': rendimiento,
                    'Distribución': distribución,
                    'Distribución_Universal': distribución_universal,
                    'Distribución_Focalizada': distribución_focalizada,
                    'Población_Universal': población_universal,
                    'Población_Focalizada': población_focalizada,
                    'Distribución_PC_Universal': distribución_pc_universal,
                    'Distribución_PC_Focalizada': distribución_pc_focalizada,
                    'Distribución_Per_Capita': distribución_per_capita,
                    'Saldo_Fondo': saldo_fondo,
                    'Saldo_Per_Capita': saldo_per_capita,
                    'Distribución_Acumulada': distribución_acumulada
                })

        # Convertir a DataFrame
        self.fondo_simulado = pd.DataFrame(resultados_fondo)

        return self.fondo_simulado

    def visualizar_resultados_integrados(self, guardar=True):
        """
        Visualiza los resultados de las simulaciones integradas
        """
        if self.fondo_simulado is None:
            print("No hay resultados de simulación del fondo. Ejecute primero simular_fondo_soberano().")
            return

        # Crear figura con múltiples subplots
        fig, axs = plt.subplots(3, 1, figsize=(14, 18), sharex=True)

        # Agrupar por año para obtener percentiles
        df_agg = self.fondo_simulado.groupby('Año').agg({
            'Regalías': ['mean', 'median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)],
            'Saldo_Fondo': ['mean', 'median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)],
            'Distribución': ['mean', 'median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)]
        })

        # Renombrar columnas
        df_agg.columns = ['_'.join(col).strip() for col in df_agg.columns.values]
        df_agg = df_agg.reset_index()

        # Gráfico 1: Regalías anuales
        axs[0].plot(df_agg['Año'], df_agg['Regalías_median']/1e6, color='blue', linewidth=2)
        axs[0].fill_between(df_agg['Año'],
                           df_agg['Regalías_<lambda_0>']/1e6,
                           df_agg['Regalías_<lambda_1>']/1e6,
                           alpha=0.3, color='blue')
        axs[0].set_ylabel('Millones USD')
        axs[0].set_title('Regalías Anuales Proyectadas (P10-P90)')
        axs[0].grid(True)

        # Gráfico 2: Evolución del saldo del fondo
        axs[1].plot(df_agg['Año'], df_agg['Saldo_Fondo_median']/1e9, color='darkgreen', linewidth=2)
        axs[1].fill_between(df_agg['Año'],
                           df_agg['Saldo_Fondo_<lambda_0>']/1e9,
                           df_agg['Saldo_Fondo_<lambda_1>']/1e9,
                           alpha=0.3, color='green')
        axs[1].set_ylabel('Miles de Millones USD')
        axs[1].set_title('Saldo del Fondo Soberano (P10-P90)')
        axs[1].grid(True)

        # Gráfico 3: Distribuciones anuales
        axs[2].plot(df_agg['Año'], df_agg['Distribución_median']/1e6, color='red', linewidth=2)
        axs[2].fill_between(df_agg['Año'],
                           df_agg['Distribución_<lambda_0>']/1e6,
                           df_agg['Distribución_<lambda_1>']/1e6,
                           alpha=0.3, color='red')
        axs[2].set_ylabel('Millones USD')
        axs[2].set_xlabel('Año')
        axs[2].set_title('Distribución Anual a Ciudadanos (P10-P90)')
        axs[2].grid(True)

        # Ajustar layout
        plt.tight_layout()

        # Título global
        fig.suptitle(f'Proyección del Fondo Soberano - {self.nombre_proyecto}',
                     fontsize=16, y=1.02)

        if guardar:
            plt.savefig('graficos/fondo_soberano.png', dpi=300, bbox_inches='tight')
            print("Visualización guardada en 'graficos/fondo_soberano.png'")

        plt.show()

        # Ahora creamos visualizaciones per cápita
        self.visualizar_resultados_per_capita(guardar=guardar)

    def visualizar_resultados_per_capita(self, guardar=True):
        """
        Visualiza los resultados per cápita
        """
        if self.fondo_simulado is None:
            print("No hay resultados de simulación del fondo. Ejecute primero simular_fondo_soberano().")
            return

        # Crear figura con múltiples subplots
        fig, axs = plt.subplots(3, 1, figsize=(14, 18), sharex=True)

        # Agrupar por año para obtener percentiles de métricas per cápita
        df_agg = self.fondo_simulado.groupby('Año').agg({
            'Población': 'first',  # La población es la misma para todas las simulaciones
            'Regalías_Per_Capita': ['mean', 'median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)],
            'Saldo_Per_Capita': ['mean', 'median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)],
            'Distribución_Per_Capita': ['mean', 'median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)],
            'Distribución_PC_Universal': ['mean', 'median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)],
            'Distribución_PC_Focalizada': ['mean', 'median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)]
        })

        # Renombrar columnas
        df_agg.columns = ['_'.join(col).strip() for col in df_agg.columns.values]
        df_agg = df_agg.reset_index()

        # Gráfico 1: Evolución de la población
        axs[0].plot(df_agg['Año'], df_agg['Población_first']/1e6, color='purple', linewidth=2)
        axs[0].set_ylabel('Millones de Habitantes')
        axs[0].set_title('Proyección de Población de San Juan')
        axs[0].grid(True)

        # Gráfico 2: Distribución per cápita (componentes universal y focalizado)
        axs[1].plot(df_agg['Año'], df_agg['Distribución_PC_Universal_median'], color='blue', linewidth=2, label='Universal (30%)')
        axs[1].fill_between(df_agg['Año'],
                           df_agg['Distribución_PC_Universal_<lambda_0>'],
                           df_agg['Distribución_PC_Universal_<lambda_1>'],
                           alpha=0.2, color='blue')

        axs[1].plot(df_agg['Año'], df_agg['Distribución_PC_Focalizada_median'], color='red', linewidth=2, label='Focalizado (70%)')
        axs[1].fill_between(df_agg['Año'],
                           df_agg['Distribución_PC_Focalizada_<lambda_0>'],
                           df_agg['Distribución_PC_Focalizada_<lambda_1>'],
                           alpha=0.2, color='red')

        axs[1].set_ylabel('USD por Habitante')
        axs[1].set_title('Distribución Anual per Cápita por Componente (P10-P90)')
        axs[1].grid(True)
        axs[1].legend()

        # Gráfico 3: Saldo del fondo per cápita
        axs[2].plot(df_agg['Año'], df_agg['Saldo_Per_Capita_median']/1e3, color='darkgreen', linewidth=2)
        axs[2].fill_between(df_agg['Año'],
                           df_agg['Saldo_Per_Capita_<lambda_0>']/1e3,
                           df_agg['Saldo_Per_Capita_<lambda_1>']/1e3,
                           alpha=0.3, color='green')
        axs[2].set_ylabel('Miles de USD por Habitante')
        axs[2].set_xlabel('Año')
        axs[2].set_title('Patrimonio del Fondo per Cápita (P10-P90)')
        axs[2].grid(True)

        # Ajustar layout
        plt.tight_layout()

        # Título global
        fig.suptitle(f'Métricas per Cápita - {self.nombre_proyecto}',
                     fontsize=16, y=1.02)

        if guardar:
            plt.savefig('graficos/metricas_per_capita.png', dpi=300, bbox_inches='tight')
            print("Visualización guardada en 'graficos/metricas_per_capita.png'")

        plt.show()

    def analizar_sensibilidad_reglas(self,
                                   reglas_acumulación=[0.5, 0.7, 0.9],
                                   reglas_distribución=[0.02, 0.03, 0.04],
                                   guardar=True):
        """
        Analiza la sensibilidad del fondo a diferentes reglas

        Args:
            reglas_acumulación: lista de fracciones de regalías a acumular
            reglas_distribución: lista de fracciones del fondo a distribuir
            guardar: si True, guarda la figura en un archivo
        """
        print("Analizando sensibilidad a diferentes reglas...")

        # Verificar si ya tenemos regalías simuladas
        if self.regalías_simuladas is None:
            self.simular_regalías_integradas()

        # Simular diferentes combinaciones
        resultados = []

        for acum in reglas_acumulación:
            for dist in reglas_distribución:
                # Simular fondo con estas reglas
                fondo = self.simular_fondo_soberano(
                    regla_acumulación=acum,
                    regla_distribución=dist
                )

                # Obtener métricas relevantes
                año_final = fondo['Año'].max()
                saldo_final_mediana = fondo[fondo['Año'] == año_final]['Saldo_Fondo'].median()
                distribución_total = fondo.groupby('Simulación')['Distribución'].sum().median()

                # Métricas per cápita para el último año
                población_final = fondo[fondo['Año'] == año_final]['Población'].iloc[0]
                distrib_pc_final = fondo[fondo['Año'] == año_final]['Distribución_Per_Capita'].median()
                saldo_pc_final = fondo[fondo['Año'] == año_final]['Saldo_Per_Capita'].median()

                # Guardar resultado
                resultados.append({
                    'Regla_Acumulación': acum,
                    'Regla_Distribución': dist,
                    'Saldo_Final_Mediana': saldo_final_mediana,
                    'Distribución_Total_Mediana': distribución_total,
                    'Distribución_Per_Capita_Final': distrib_pc_final,
                    'Saldo_Per_Capita_Final': saldo_pc_final
                })

        # Convertir a DataFrame
        df_sensibilidad = pd.DataFrame(resultados)

        # Visualizar resultados
        fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(16, 6))

        # Graficar saldo final
        saldo_pivot = df_sensibilidad.pivot(
            index='Regla_Acumulación',
            columns='Regla_Distribución',
            values='Saldo_Final_Mediana'
        )

        sns.heatmap(saldo_pivot/1e9, annot=True, fmt='.1f', cmap='YlGn', ax=ax1)
        ax1.set_title('Saldo Final del Fondo (Miles de Millones USD)')

        # Graficar distribución total
        dist_pivot = df_sensibilidad.pivot(
            index='Regla_Acumulación',
            columns='Regla_Distribución',
            values='Distribución_Total_Mediana'
        )

        sns.heatmap(dist_pivot/1e9, annot=True, fmt='.1f', cmap='YlOrRd', ax=ax2)
        ax2.set_title('Distribución Total (Miles de Millones USD)')

        plt.tight_layout()

        if guardar:
            plt.savefig('graficos/sensibilidad_reglas.png', dpi=300, bbox_inches='tight')
            print("Visualización guardada en 'graficos/sensibilidad_reglas.png'")

        plt.show()

        # Visualizar resultados per cápita
        fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(16, 6))

        # Graficar saldo per cápita final
        saldo_pc_pivot = df_sensibilidad.pivot(
            index='Regla_Acumulación',
            columns='Regla_Distribución',
            values='Saldo_Per_Capita_Final'
        )

        sns.heatmap(saldo_pc_pivot/1e3, annot=True, fmt='.1f', cmap='YlGn', ax=ax1)
        ax1.set_title('Saldo Final por Habitante (Miles de USD)')

        # Graficar distribución per cápita final
        dist_pc_pivot = df_sensibilidad.pivot(
            index='Regla_Acumulación',
            columns='Regla_Distribución',
            values='Distribución_Per_Capita_Final'
        )

        sns.heatmap(dist_pc_pivot, annot=True, fmt='.0f', cmap='YlOrRd', ax=ax2)
        ax2.set_title('Distribución Anual por Habitante (USD) - Año Final')

        plt.tight_layout()

        if guardar:
            plt.savefig('graficos/sensibilidad_reglas_per_capita.png', dpi=300, bbox_inches='tight')
            print("Visualización guardada en 'graficos/sensibilidad_reglas_per_capita.png'")

        plt.show()

        return df_sensibilidad

    def generar_informe_completo(self):
        """
        Genera un informe completo con estadísticas clave del fondo soberano
        """
        if self.fondo_simulado is None:
            print("No hay resultados de simulación del fondo. Ejecute primero simular_fondo_soberano().")
            return

        # Obtener año final
        año_final = self.fondo_simulado['Año'].max()

        # Estadísticas para el año final
        df_final = self.fondo_simulado[self.fondo_simulado['Año'] == año_final]

        # Valores medianos (P50)
        saldo_final_p50 = df_final['Saldo_Fondo'].median() / 1e9
        distrib_final_p50 = df_final['Distribución'].median() / 1e6
        distrib_pc_final_p50 = df_final['Distribución_Per_Capita'].median()

        # Valores para componentes de distribución
        distrib_univ_final_p50 = df_final['Distribución_PC_Universal'].median()
        distrib_focal_final_p50 = df_final['Distribución_PC_Focalizada'].median()

        # Percentiles P10 y P90
        saldo_final_p10 = df_final['Saldo_Fondo'].quantile(0.1) / 1e9
        saldo_final_p90 = df_final['Saldo_Fondo'].quantile(0.9) / 1e9

        distrib_final_p10 = df_final['Distribución'].quantile(0.1) / 1e6
        distrib_final_p90 = df_final['Distribución'].quantile(0.9) / 1e6

        distrib_pc_final_p10 = df_final['Distribución_Per_Capita'].quantile(0.1)
        distrib_pc_final_p90 = df_final['Distribución_Per_Capita'].quantile(0.9)

        # Percentiles para componentes
        distrib_univ_final_p10 = df_final['Distribución_PC_Universal'].quantile(0.1)
        distrib_univ_final_p90 = df_final['Distribución_PC_Universal'].quantile(0.9)

        distrib_focal_final_p10 = df_final['Distribución_PC_Focalizada'].quantile(0.1)
        distrib_focal_final_p90 = df_final['Distribución_PC_Focalizada'].quantile(0.9)

        # Población final
        población_final = df_final['Población'].iloc[0] / 1e6
        población_focal_final = df_final['Población_Focalizada'].iloc[0] / 1e6

        # Tasa de rendimiento promedio del fondo
        rendimiento_promedio = self.fondo_simulado['Rendimiento_Porcentual'] = np.where(
            self.fondo_simulado['Saldo_Fondo'] > 0,
            self.fondo_simulado['Rendimiento'] / self.fondo_simulado['Saldo_Fondo'],
            0
        )

        # Obtener el promedio de estos porcentajes anuales
        rendimiento_promedio = self.fondo_simulado.groupby('Simulación')['Rendimiento_Porcentual'].mean().median() * 100

        # Imprimir informe
        print("\n" + "="*80)
        print(f"INFORME COMPLETO DEL FONDO SOBERANO: {self.nombre_proyecto}")
        print("="*80)

        print(f"\nPROYECCIÓN PARA EL AÑO {año_final} (MEDIANA)")
        print(f"- Población proyectada: {población_final:.2f} millones de habitantes")
        print(f"- Saldo del fondo: {saldo_final_p50:.2f} miles de millones USD (rango: {saldo_final_p10:.2f} - {saldo_final_p90:.2f})")
        print(f"- Distribución anual: {distrib_final_p50:.2f} millones USD (rango: {distrib_final_p10:.2f} - {distrib_final_p90:.2f})")
        print(f"- Distribución per cápita: {distrib_pc_final_p50:.2f} USD por habitante (rango: {distrib_pc_final_p10:.2f} - {distrib_pc_final_p90:.2f})")

        print("\nCOMPONENTES DE DISTRIBUCIÓN")
        print(f"- Componente Universal (30%): {distrib_univ_final_p50:.2f} USD por habitante (rango: {distrib_univ_final_p10:.2f} - {distrib_univ_final_p90:.2f})")
        print(f"- Componente Focalizado (70%): {distrib_focal_final_p50:.2f} USD por habitante calificado (rango: {distrib_focal_final_p10:.2f} - {distrib_focal_final_p90:.2f})")
        print(f"- Población que recibe componente focalizado: {población_focal_final:.2f} millones de habitantes (60% del total)")

        print("\nCOMPARACIÓN CON REFERENTES INTERNACIONALES")
        print(f"- Alaska (2023): ~$1,300 por habitante")
        print(f"- Noruega (2023): Equivalente a ~$1,900 por habitante en gasto público")

        print("\nINDICADORES DE EFICIENCIA")
        print(f"- Rendimiento anual promedio del fondo: {rendimiento_promedio:.2f}%")

        # Generar una tabla con resultados por década
        años_clave = [self.año_inicio, self.año_inicio+10, self.año_inicio+20, self.año_inicio+30, año_final]
        if años_clave[-1] == años_clave[-2]:
            años_clave = años_clave[:-1]

        print("\nEVOLUCIÓN POR DÉCADA (VALORES MEDIANOS)")
        print("-"*100)
        print(f"{'Año':<10}{'Población':>15}{'Saldo (MM USD)':>20}{'Universal (USD)':>20}{'Focalizado (USD)':>20}{'Total (USD)':>15}")
        print("-"*100)

        for año in años_clave:
            df_año = self.fondo_simulado[self.fondo_simulado['Año'] == año]
            if len(df_año) == 0:
                continue

            población = df_año['Población'].iloc[0] / 1e6
            saldo = df_año['Saldo_Fondo'].median() / 1e9
            distrib_univ = df_año['Distribución_PC_Universal'].median()
            distrib_focal = df_año['Distribución_PC_Focalizada'].median()
            distrib_pc = df_año['Distribución_Per_Capita'].median()

            print(f"{año:<10}{población:>15.2f}{saldo:>20.2f}{distrib_univ:>20.2f}{distrib_focal:>20.2f}{distrib_pc:>15.2f}")

        print("-"*100)
        print("="*80)

        return {
            'saldo_final_p50': saldo_final_p50,
            'distrib_final_p50': distrib_final_p50,
            'distrib_pc_final_p50': distrib_pc_final_p50,
            'distrib_univ_final_p50': distrib_univ_final_p50,
            'distrib_focal_final_p50': distrib_focal_final_p50,
            'población_final': población_final
        }

    def visualizar_componentes_distribución(self, guardar=True):
        """
        Visualiza los componentes universal y focalizado de la distribución
        """
        if self.fondo_simulado is None:
            print("No hay resultados de simulación del fondo. Ejecute primero simular_fondo_soberano().")
            return

        # Agrupar por año para obtener percentiles
        df_agg = self.fondo_simulado.groupby('Año').agg({
            'Distribución_Universal': ['median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)],
            'Distribución_Focalizada': ['median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)],
            'Distribución_PC_Universal': ['median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)],
            'Distribución_PC_Focalizada': ['median', lambda x: np.percentile(x, 10), lambda x: np.percentile(x, 90)],
            'Población_Universal': 'first',
            'Población_Focalizada': 'first'
        })

        # Renombrar columnas
        df_agg.columns = ['_'.join(col).strip() for col in df_agg.columns.values]
        df_agg = df_agg.reset_index()

        # Crear figura con múltiples subplots
        fig, axs = plt.subplots(2, 2, figsize=(16, 12))

        # Gráfico 1: Montos totales de distribución por componente
        axs[0, 0].plot(df_agg['Año'], df_agg['Distribución_Universal_median']/1e6,
                      color='blue', linewidth=2, label='Universal (30%)')
        axs[0, 0].fill_between(df_agg['Año'],
                              df_agg['Distribución_Universal_<lambda_0>']/1e6,
                              df_agg['Distribución_Universal_<lambda_1>']/1e6,
                              alpha=0.2, color='blue')

        axs[0, 0].plot(df_agg['Año'], df_agg['Distribución_Focalizada_median']/1e6,
                      color='red', linewidth=2, label='Focalizado (70%)')
        axs[0, 0].fill_between(df_agg['Año'],
                              df_agg['Distribución_Focalizada_<lambda_0>']/1e6,
                              df_agg['Distribución_Focalizada_<lambda_1>']/1e6,
                              alpha=0.2, color='red')

        axs[0, 0].set_ylabel('Millones USD')
        axs[0, 0].set_title('Montos Totales por Componente')
        axs[0, 0].grid(True)
        axs[0, 0].legend()

        # Gráfico 2: Distribución per cápita por componente
        axs[0, 1].plot(df_agg['Año'], df_agg['Distribución_PC_Universal_median'],
                      color='blue', linewidth=2, label='Universal')
        axs[0, 1].fill_between(df_agg['Año'],
                              df_agg['Distribución_PC_Universal_<lambda_0>'],
                              df_agg['Distribución_PC_Universal_<lambda_1>'],
                              alpha=0.2, color='blue')

        axs[0, 1].plot(df_agg['Año'], df_agg['Distribución_PC_Focalizada_median'],
                      color='red', linewidth=2, label='Focalizado')
        axs[0, 1].fill_between(df_agg['Año'],
                              df_agg['Distribución_PC_Focalizada_<lambda_0>'],
                              df_agg['Distribución_PC_Focalizada_<lambda_1>'],
                              alpha=0.2, color='red')

        axs[0, 1].set_ylabel('USD por Habitante')
        axs[0, 1].set_title('Distribución per Cápita por Componente')
        axs[0, 1].grid(True)
        axs[0, 1].legend()

        # Gráfico 3: Población cubierta por cada componente
        axs[1, 0].plot(df_agg['Año'], df_agg['Población_Universal_first']/1e6,
                      color='blue', linewidth=2, label='Universal (100%)')
        axs[1, 0].plot(df_agg['Año'], df_agg['Población_Focalizada_first']/1e6,
                      color='red', linewidth=2, label='Focalizado (60%)')

        axs[1, 0].set_ylabel('Millones de Habitantes')
        axs[1, 0].set_xlabel('Año')
        axs[1, 0].set_title('Población Cubierta por Componente')
        axs[1, 0].grid(True)
        axs[1, 0].legend()

        # Gráfico 4: Proporción de componentes en la distribución total
        # Calculamos la proporción como porcentaje
        df_agg['Prop_Universal'] = df_agg['Distribución_Universal_median'] / (df_agg['Distribución_Universal_median'] + df_agg['Distribución_Focalizada_median']) * 100
        df_agg['Prop_Focalizada'] = df_agg['Distribución_Focalizada_median'] / (df_agg['Distribución_Universal_median'] + df_agg['Distribución_Focalizada_median']) * 100

        axs[1, 1].stackplot(df_agg['Año'], df_agg['Prop_Universal'], df_agg['Prop_Focalizada'],
                           labels=['Universal', 'Focalizado'],
                           colors=['blue', 'red'], alpha=0.7)

        axs[1, 1].set_ylabel('Porcentaje del Total')
        axs[1, 1].set_xlabel('Año')
        axs[1, 1].set_title('Proporción de Componentes en la Distribución Total')
        axs[1, 1].grid(True)
        axs[1, 1].legend()
        axs[1, 1].set_ylim(0, 100)

        # Ajustar layout
        plt.tight_layout()

        # Título global
        fig.suptitle(f'Componentes de Distribución - {self.nombre_proyecto}',
                     fontsize=16, y=1.02)

        if guardar:
            plt.savefig('graficos/componentes_distribucion.png', dpi=300, bbox_inches='tight')
            print("Visualización guardada en 'graficos/componentes_distribucion.png'")

        plt.show()

    def comparar_modelos_internacionales(self, guardar=True):
        """
        Analiza comparativamente el desempeño del fondo San Juan contra modelos internacionales
        aplicando sus parámetros fiscales a las proyecciones de regalías de San Juan.

        Args:
            guardar: si True, guarda visualizaciones en archivos

        Returns:
            DataFrame con métricas comparativas
        """
        if self.regalías_simuladas is None:
            print("No hay resultados de simulación. Ejecute primero simular_regalías_integradas().")
            return

        print("Comparando desempeño con modelos internacionales de fondos soberanos...")

        # Definir modelos de referencia basados en literatura empírica
        modelos = {
            'San Juan (Base)': {
                'acumulación': 0.7,     # 70% de regalías al fondo
                'distribución': 0.03,   # 3% del fondo distribuido anualmente
                'rendimiento': 0.04,    # 4% rendimiento anual
                'descripción': 'Modelo base propuesto para San Juan',
                'color': '#1f77b4'      # Color para gráficos
            },
            'Noruega': {
                'acumulación': 1.0,     # 100% de ingresos petroleros al fondo (Norges Bank, 2022)
                'distribución': 0.03,   # 3% distribución (reducido de 4% en 2017)
                'rendimiento': 0.042,   # 4.2% rendimiento real histórico (Chambers et al., 2012)
                'descripción': 'Government Pension Fund Global (GPFG)',
                'color': '#ff7f0e'
            },
            'Chile': {
                'acumulación': 0.75,    # 75% de ingresos extraordinarios (Schmidt-Hebbel, 2012)
                'distribución': 0.0,    # No distribución directa, solo estabilización fiscal
                'rendimiento': 0.035,   # 3.5% rendimiento histórico (más conservador)
                'descripción': 'Economic and Social Stabilization Fund (ESSF)',
                'color': '#2ca02c'
            },
            'Alaska': {
                'acumulación': 0.25,    # 25% estatutario (Alaska Permanent Fund Corporation, 2021)
                'distribución': 0.05,   # 5% aprox. del valor del fondo distribuido
                'rendimiento': 0.062,   # 6.2% rendimiento nominal histórico (1976-2020)
                'descripción': 'Alaska Permanent Fund',
                'color': '#d62728'
            },
            'Alberta': {
                'acumulación': 0.3,     # 30% histórico inicial (Kneebone, 2006)
                'distribución': 0.06,   # Alto nivel histórico de extracciones para presupuesto
                'rendimiento': 0.045,   # Rendimiento histórico moderado
                'descripción': 'Alberta Heritage Savings Trust Fund',
                'color': '#9467bd'
            },
            'Catar': {
                'acumulación': 0.85,    # Muy alta tasa de acumulación (Sovereign Wealth Fund Institute)
                'distribución': 0.02,   # Distribución conservadora
                'rendimiento': 0.075,   # Estrategia de inversión más agresiva (Setser & Ziemba, 2009)
                'descripción': 'Qatar Investment Authority',
                'color': '#8c564b'
            }
        }

        # Preparar datos para simulación
        resultados_modelos = []
        años = sorted(self.regalías_simuladas['Año'].unique())
        simulaciones = self.regalías_simuladas['Simulación'].unique()[:50]  # Usar subset para eficiencia

        # Iterar sobre cada modelo de fondo soberano
        for nombre_modelo, params in modelos.items():
            print(f"Simulando modelo: {nombre_modelo}...")

            # Simular evolución del fondo bajo este modelo
            acumulación = params['acumulación']
            distribución = params['distribución']
            rendimiento = params['rendimiento']

            # Resultados por modelo
            resultados_modelo = []

            # Simular para un subset de trayectorias
            for sim in simulaciones:
                # Filtrar regalías para esta simulación
                regalías_sim = self.regalías_simuladas[self.regalías_simuladas['Simulación'] == sim]

                # Inicializar valores
                saldo_fondo = 0
                distribución_acumulada = 0

                # Evolución temporal para esta simulación
                for año in años:
                    # Datos para este año
                    datos_año = regalías_sim[regalías_sim['Año'] == año]

                    if len(datos_año) > 0:
                        regalía = datos_año['Regalías'].values[0]
                        población = self.proyección_población[self.proyección_población['Año'] == año]['Población'].values[0]
                    else:
                        regalía = 0
                        población = self.proyección_población[self.proyección_población['Año'] == año]['Población'].values[0]

                    # Actualizar saldo según este modelo
                    aporte = regalía * acumulación
                    rend = saldo_fondo * rendimiento
                    distrib = saldo_fondo * distribución

                    saldo_fondo = saldo_fondo + aporte + rend - distrib
                    distribución_acumulada += distrib

                    # Métricas per cápita
                    distrib_pc = distrib / población
                    saldo_pc = saldo_fondo / población

                    # Guardar resultados
                    resultados_modelo.append({
                        'Modelo': nombre_modelo,
                        'Simulación': sim,
                        'Año': año,
                        'Regalías': regalía,
                        'Aporte': aporte,
                        'Rendimiento': rend,
                        'Distribución': distrib,
                        'Distribución_PC': distrib_pc,
                        'Saldo': saldo_fondo,
                        'Saldo_PC': saldo_pc,
                        'Distribución_Acumulada': distribución_acumulada
                    })

            # Agregar resultados de este modelo
            resultados_modelos.extend(resultados_modelo)

        # Convertir a DataFrame
        df_comparativa = pd.DataFrame(resultados_modelos)

        # Calcular estadísticas por modelo y año (mediana entre simulaciones)
        df_agg = df_comparativa.groupby(['Modelo', 'Año']).agg({
            'Saldo': 'median',
            'Distribución': 'median',
            'Distribución_PC': 'median',
            'Saldo_PC': 'median'
        }).reset_index()

        # Visualización: Saldo del fondo por modelo
        plt.figure(figsize=(14, 8))

        for modelo, params in modelos.items():
            datos_modelo = df_agg[df_agg['Modelo'] == modelo]
            plt.plot(datos_modelo['Año'], datos_modelo['Saldo']/1e9,
                     label=modelo, color=params['color'], linewidth=2)

        plt.xlabel('Año')
        plt.ylabel('Miles de Millones USD')
        plt.title('Comparación de Saldo del Fondo Según Diferentes Modelos Internacionales')
        plt.legend(loc='upper left')
        plt.grid(True)

        if guardar:
            plt.savefig('graficos/comparativa_saldo_modelos.png', dpi=300, bbox_inches='tight')
            print("Visualización guardada en 'graficos/comparativa_saldo_modelos.png'")

        plt.show()

        # Visualización: Distribución per cápita por modelo
        plt.figure(figsize=(14, 8))

        for modelo, params in modelos.items():
            datos_modelo = df_agg[df_agg['Modelo'] == modelo]
            plt.plot(datos_modelo['Año'], datos_modelo['Distribución_PC'],
                     label=modelo, color=params['color'], linewidth=2)

        plt.xlabel('Año')
        plt.ylabel('USD por Habitante')
        plt.title('Comparación de Distribución per Cápita Según Diferentes Modelos')
        plt.legend(loc='upper left')
        plt.grid(True)

        if guardar:
            plt.savefig('graficos/comparativa_distribucion_pc_modelos.png', dpi=300, bbox_inches='tight')
            print("Visualización guardada en 'graficos/comparativa_distribucion_pc_modelos.png'")

        plt.show()

        # Visualización: Gráfico de barras con valor final del fondo
        plt.figure(figsize=(12, 6))

        # Obtener valores para el último año
        año_final = df_agg['Año'].max()
        df_final = df_agg[df_agg['Año'] == año_final]

        # Ordenar por saldo final
        df_final = df_final.sort_values('Saldo', ascending=False)

        # Crear gráfico de barras
        bars = plt.bar(df_final['Modelo'], df_final['Saldo']/1e9, color=[modelos[m]['color'] for m in df_final['Modelo']])

        # Agregar etiquetas
        for bar in bars:
            height = bar.get_height()
            plt.text(bar.get_x() + bar.get_width()/2., height + 0.1,
                    f'${height:.1f}B', ha='center', va='bottom', fontweight='bold')

        plt.ylabel('Miles de Millones USD')
        plt.title(f'Saldo Final del Fondo en {año_final} por Modelo')
        plt.xticks(rotation=45, ha='right')
        plt.tight_layout()

        if guardar:
            plt.savefig('graficos/comparativa_saldo_final.png', dpi=300, bbox_inches='tight')
            print("Visualización guardada en 'graficos/comparativa_saldo_final.png'")

        plt.show()

        # Calcular métricas de análisis adicionales
        métricas_comparativas = []

        for modelo in modelos.keys():
            datos_modelo = df_comparativa[df_comparativa['Modelo'] == modelo]

            # Estadísticas para último año
            saldo_final = datos_modelo[datos_modelo['Año'] == año_final]['Saldo'].median() / 1e9
            distrib_final = datos_modelo[datos_modelo['Año'] == año_final]['Distribución'].median() / 1e6
            distrib_pc_final = datos_modelo[datos_modelo['Año'] == año_final]['Distribución_PC'].median()

            # Calcular sostenibilidad (ratio de distribución a regalías en los últimos 5 años)
            últimos_años = datos_modelo[datos_modelo['Año'] >= año_final - 5]
            total_regalías = últimos_años.groupby('Simulación')['Regalías'].sum().median()
            total_distribución = últimos_años.groupby('Simulación')['Distribución'].sum().median()

            if total_regalías > 0:
                ratio_sostenibilidad = total_distribución / total_regalías
            else:
                ratio_sostenibilidad = np.nan

            # Acumulación efectiva (% de regalías totales en el fondo al final)
            total_regalías_hist = datos_modelo.groupby('Simulación')['Regalías'].sum().median()
            acumulación_efectiva = saldo_final * 1e9 / total_regalías_hist if total_regalías_hist > 0 else np.nan

            # Guardar métricas
            métricas_comparativas.append({
                'Modelo': modelo,
                'Saldo_Final_MM_USD': saldo_final,
                'Distribución_Final_M_USD': distrib_final,
                'Distribución_PC_Final_USD': distrib_pc_final,
                'Ratio_Sostenibilidad': ratio_sostenibilidad,
                'Acumulación_Efectiva': acumulación_efectiva,
                'Descripción': modelos[modelo]['descripción']
            })

        # Convertir a DataFrame
        df_métricas = pd.DataFrame(métricas_comparativas)

        # Imprimir tabla comparativa
        print("\n===== COMPARATIVA DE MODELOS INTERNACIONALES =====")
        print("\nParámetros de los modelos:")
        print("-" * 85)
        print(f"{'Modelo':<15} {'Acumulación':<15} {'Distribución':<15} {'Rendimiento':<15} {'Descripción':<30}")
        print("-" * 85)

        for modelo, params in modelos.items():
            print(f"{modelo:<15} {params['acumulación']*100:>6.1f}%{'':<8} {params['distribución']*100:>6.1f}%{'':<8} {params['rendimiento']*100:>6.1f}%{'':<8} {params['descripción']:<30}")

        print("\nResultados comparativos para el año final ({}):".format(año_final))
        print("-" * 100)
        print(f"{'Modelo':<15} {'Saldo Final':<15} {'Distribución':<15} {'Dist. per Cápita':<20} {'Sostenibilidad':<15} {'Acum. Efectiva':<15}")
        print(f"{'':<15} {'(Miles Mill. USD)':<15} {'(Mill. USD)':<15} {'(USD por habitante)':<20} {'(Dist./Regalías)':<15} {'(%)':<15}")
        print("-" * 100)

        for _, row in df_métricas.sort_values('Saldo_Final_MM_USD', ascending=False).iterrows():
            print(f"{row['Modelo']:<15} {row['Saldo_Final_MM_USD']:>13.2f} {row['Distribución_Final_M_USD']:>14.2f} {row['Distribución_PC_Final_USD']:>19.2f} {row['Ratio_Sostenibilidad']:>14.2f} {row['Acumulación_Efectiva']*100:>14.1f}%")

        print("\n===== ANÁLISIS INTERPRETATIVO =====")

        # Identificar modelo con mayor saldo final
        modelo_max_saldo = df_métricas.loc[df_métricas['Saldo_Final_MM_USD'].idxmax(), 'Modelo']
        # Identificar modelo con mayor distribución per cápita final
        modelo_max_distrib = df_métricas.loc[df_métricas['Distribución_PC_Final_USD'].idxmax(), 'Modelo']
        # Identificar modelo con mayor sostenibilidad
        modelo_max_sost = df_métricas.loc[df_métricas['Ratio_Sostenibilidad'].idxmax(), 'Modelo']

        print(f"\n1. El modelo {modelo_max_saldo} genera el mayor patrimonio acumulado (${df_métricas.loc[df_métricas['Modelo'] == modelo_max_saldo, 'Saldo_Final_MM_USD'].values[0]:.2f} MM USD).")
        print(f"2. El modelo {modelo_max_distrib} ofrece la mayor distribución per cápita (${df_métricas.loc[df_métricas['Modelo'] == modelo_max_distrib, 'Distribución_PC_Final_USD'].values[0]:.2f} por habitante).")
        print(f"3. El modelo {modelo_max_sost} presenta la mayor sostenibilidad a largo plazo (ratio: {df_métricas.loc[df_métricas['Modelo'] == modelo_max_sost, 'Ratio_Sostenibilidad'].values[0]:.2f}).")

        # Análisis para el modelo propuesto de San Juan
        sj_metrics = df_métricas[df_métricas['Modelo'] == 'San Juan (Base)'].iloc[0]
        sj_rank_saldo = df_métricas['Saldo_Final_MM_USD'].rank(ascending=False)[df_métricas['Modelo'] == 'San Juan (Base)'].values[0]
        sj_rank_distrib = df_métricas['Distribución_PC_Final_USD'].rank(ascending=False)[df_métricas['Modelo'] == 'San Juan (Base)'].values[0]

        print(f"\nEl modelo propuesto para San Juan se ubica en la posición {int(sj_rank_saldo)} de {len(modelos)} en términos de acumulación")
        print(f"y en la posición {int(sj_rank_distrib)} en términos de distribución per cápita.")

        # Análisis econométrico de equilibrio
        Norway_metric = df_métricas[df_métricas['Modelo'] == 'Noruega'].iloc[0]['Saldo_Final_MM_USD']
        Alaska_metric = df_métricas[df_métricas['Modelo'] == 'Alaska'].iloc[0]['Distribución_PC_Final_USD']
        ratio_norway_sj = Norway_metric / sj_metrics['Saldo_Final_MM_USD']
        ratio_alaska_sj = Alaska_metric / sj_metrics['Distribución_PC_Final_USD']

        print(f"\nLa regla fiscal de Noruega generaría un saldo {ratio_norway_sj:.2f}x mayor que el modelo base de San Juan,")
        print(f"mientras que la de Alaska produciría una distribución per cápita {ratio_alaska_sj:.2f}x mayor.")

        # Estimación de elasticidades
        print("\nEstimación de elasticidades de parámetros (Sensibilidad):")
        print("-" * 60)
        print(f"{'Parámetro':<20} {'Elasticidad Saldo':<20} {'Elasticidad Distribución':<20}")
        print("-" * 60)

        # Elasticidad de acumulación (comparando modelos con diferentes tasas)
        elast_acum_saldo = (
            (df_métricas[df_métricas['Modelo'] == 'Noruega']['Saldo_Final_MM_USD'].values[0] /
            df_métricas[df_métricas['Modelo'] == 'San Juan (Base)']['Saldo_Final_MM_USD'].values[0]) - 1
        ) / ((modelos['Noruega']['acumulación'] / modelos['San Juan (Base)']['acumulación']) - 1)

        elast_acum_distrib = (
            (df_métricas[df_métricas['Modelo'] == 'Noruega']['Distribución_PC_Final_USD'].values[0] /
            df_métricas[df_métricas['Modelo'] == 'San Juan (Base)']['Distribución_PC_Final_USD'].values[0]) - 1
        ) / ((modelos['Noruega']['acumulación'] / modelos['San Juan (Base)']['acumulación']) - 1)

        # Elasticidad de distribución
        elast_dist_saldo = (
            (df_métricas[df_métricas['Modelo'] == 'Alaska']['Saldo_Final_MM_USD'].values[0] /
            df_métricas[df_métricas['Modelo'] == 'San Juan (Base)']['Saldo_Final_MM_USD'].values[0]) - 1
        ) / ((modelos['Alaska']['distribución'] / modelos['San Juan (Base)']['distribución']) - 1)

        elast_dist_distrib = (
            (df_métricas[df_métricas['Modelo'] == 'Alaska']['Distribución_PC_Final_USD'].values[0] /
            df_métricas[df_métricas['Modelo'] == 'San Juan (Base)']['Distribución_PC_Final_USD'].values[0]) - 1
        ) / ((modelos['Alaska']['distribución'] / modelos['San Juan (Base)']['distribución']) - 1)

        print(f"Tasa de acumulación{'':<6} {elast_acum_saldo:>19.2f} {elast_acum_distrib:>19.2f}")
        print(f"Tasa de distribución{'':<4} {elast_dist_saldo:>19.2f} {elast_dist_distrib:>19.2f}")

        # Conclusiones y recomendaciones de política
        print("\nIMPLICANCIAS PARA DISEÑO DE POLÍTICA:")

        if elast_acum_saldo > 1:
            print("- La elasticidad de acumulación > 1 indica retornos crecientes a escala en la acumulación del fondo,")
            print("  sugiriendo que incrementos marginales en la tasa de acumulación generan beneficios más que proporcionales.")
        else:
            print("- La elasticidad de acumulación < 1 indica retornos decrecientes a escala en la acumulación del fondo,")
            print("  sugiriendo que el modelo propuesto se encuentra en un nivel eficiente de acumulación.")

        # Identificar modelo más cercano al óptimo según literatura
        modelo_eficiente = None
        min_distancia = float('inf')

        # Basado en Van der Ploeg & Venables (2011), el óptimo teórico para recursos con horizonte de 25-30 años
        # es una tasa de acumulación de 65-75% y distribución anual de 3-4%
        acum_optima = 0.7
        distrib_optima = 0.035

        for modelo, params in modelos.items():
            distancia = ((params['acumulación'] - acum_optima)**2 + (params['distribución'] - distrib_optima)**2)**0.5
            if distancia < min_distancia:
                min_distancia = distancia
                modelo_eficiente = modelo

        print(f"\nEl modelo que más se aproxima al óptimo teórico según Van der Ploeg & Venables (2011) es: {modelo_eficiente}")

        # Recomendación final
        print("\nRECOMENDACIÓN DE DISEÑO INSTITUCIONAL:")

        sj_deficit = df_métricas.loc[df_métricas['Modelo'] == modelo_eficiente, 'Saldo_Final_MM_USD'].values[0] - \
                   df_métricas.loc[df_métricas['Modelo'] == 'San Juan (Base)', 'Saldo_Final_MM_USD'].values[0]

        if sj_deficit > 0:
            print(f"- Ajustar parámetros hacia el modelo {modelo_eficiente} incrementaría el saldo final en aproximadamente")
            print(f"  ${sj_deficit:.2f} mil millones USD, optimizando el balance entre acumulación intergeneracional y distribución.")
        else:
            print(f"- El modelo base de San Juan ya se encuentra próximo al óptimo teórico, superando al modelo {modelo_eficiente}")
            print(f"  en ${-sj_deficit:.2f} mil millones USD de patrimonio acumulado al final del horizonte de proyección.")

        # Retornar métricas comparativas para uso en otros análisis
        return df_métricas


# Ejemplo de uso
if __name__ == "__main__":
    # Crear simulador integrado con población actual de San Juan
    simulador = SimuladorFondoSoberano("Fondo Soberano San Juan - Filo del Sol/Josemaría",
                                      población_inicial=781000)  # Población aprox. según censo 2022

    # Simular evolución del fondo soberano
    # (esto ejecutará automáticamente las simulaciones de precios y extracciones)
    print("Iniciando simulación del fondo soberano...")
    simulador.simular_fondo_soberano(
        regla_acumulación=0.7,    # 70% de las regalías van al fondo
        rendimiento_anual=0.04,   # 4% rendimiento anual
        regla_distribución=0.03   # 3% del fondo se distribuye anualmente
    )

    # Visualizar resultados
    print("Generando visualizaciones...")
    simulador.visualizar_resultados_integrados(guardar=True)

    # Visualizar componentes de distribución
    print("Generando visualización de componentes de distribución...")
    simulador.visualizar_componentes_distribución(guardar=True)

    # Analizar sensibilidad a diferentes reglas
    simulador.analizar_sensibilidad_reglas(guardar=True)

    # Generar informe completo
    simulador.generar_informe_completo()

    # Realizar análisis comparativo con modelos internacionales
    print("\nRealizando análisis comparativo con modelos internacionales...")
    df_comparativa = simulador.comparar_modelos_internacionales(guardar=True)

    print("Todas las visualizaciones han sido guardadas en la carpeta 'graficos/'.")
