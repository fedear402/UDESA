# Sovereign_Wealth_Fund-SVRegression-Analysis
This repository contains a comprehensive, data-driven framework designed to analyze and benchmark the performance of the Norway Government Pension Fund Global. The project integrates advanced statistical techniques and machine learning to extract key economic drivers, detect regime shifts, forecast annual returns, and perform robust stress testing.

# Key Components
## Data Ingestion & Cleaning:
Import and preprocess macroeconomic and portfolio data ensuring high-quality inputs for further analysis.

## Dimensionality Reduction with PCA:
Use Principal Component Analysis (PCA) to extract latent factors (e.g., Factor1, Factor2, and Factor4) that capture over 87% of the variance in the data, representing the core economic drivers.

## Regime Detection via GMM:
Apply Gaussian Mixture Models (GMM) to identify distinct economic regimes (growth vs. downturn), enhancing our understanding of market cycles and informing the forecasting model.

## Forecasting with SVR:
Develop a Support Vector Regression (SVR) model that forecasts annual returns using the PCA-derived factors and regime indicators. Model performance is evaluated using metrics such as MSE, MAE, and 𝑅^2

## Stress Testing & Sensitivity Analysis:
Conduct stress testing by bootstrapping residuals to simulate an ensemble of scenarios, and perform sensitivity analyses to gauge the impact of perturbations on key factors.

# Purpose and Impact
This repository serves as a blueprint for policymakers and financial analysts interested in establishing or benchmarking sovereign wealth funds. By leveraging rigorous data processing, advanced modeling techniques, and comprehensive risk assessment, the project provides actionable insights into fund performance, risk management, and economic resilience.

