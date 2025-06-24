import pandas as pd
import numpy as np
import json

# Load gold prices
with open('gold_prices.json') as f:
    gold_data = json.load(f)
    
# Convert to dataframe
gold_df = pd.DataFrame(gold_data)
gold_df['Gold ($/troy oz)'] = pd.to_numeric(gold_df['Gold ($/troy oz)'])
gold_df['month'] = pd.to_datetime(gold_df['month'], format='%YM%m')
gold_df = gold_df.set_index('month')

# Calculate gold returns
gold_returns = gold_df['Gold ($/troy oz)'].pct_change().dropna()

# Load copper prices (assuming similar JSON format)
with open('copper_prices.json') as f:
    copper_data = json.load(f)
    
copper_df = pd.DataFrame(copper_data)
copper_df['Copper ($/mt)'] = pd.to_numeric(copper_df['Copper ($/mt)'])
copper_df['month'] = pd.to_datetime(copper_df['month '], format='%YM%m')
copper_df = copper_df.set_index('month')

# Calculate copper returns
copper_returns = copper_df['Copper ($/mt)'].pct_change().dropna()

# Print statistics
print("\nGold Returns:")
print(f"Mean: {gold_returns.mean():.4f}")
print(f"Standard Deviation: {gold_returns.std():.4f}")

print("\nCopper Returns:")
print(f"Mean: {copper_returns.mean():.4f}") 
print(f"Standard Deviation: {copper_returns.std():.4f}")
# Annualize statistics (assuming monthly data)
print("\nAnnualized Statistics:")
print("\nGold Returns:")
print(f"Mean: {gold_returns.mean() * 12:.4f}")
print(f"Standard Deviation: {gold_returns.std() * np.sqrt(12):.4f}")

print("\nCopper Returns:") 
print(f"Mean: {copper_returns.mean() * 12:.4f}")
print(f"Standard Deviation: {copper_returns.std() * np.sqrt(12):.4f}")

