import pandas as pd

# Load the data
df = pd.read_excel('/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06/ECON_INTER/INCAKOLA/last/all-FINAL.xlsx')

# Group data by year, cmdCode, and flowCode, and sum the FOB values
total_fob_by_year_cmd = df.groupby(['refYear', 'cmdCode', 'flowCode'])['primaryValue'].sum().unstack('flowCode').reset_index()

# Rename the columns for clarity
total_fob_by_year_cmd.columns = ['refYear', 'cmdCode', 'TotalImports', 'TotalExports']

# Replace NaN values with 0
total_fob_by_year_cmd.fillna(0, inplace=True)

# Sort the data
total_fob_by_year_cmd.sort_values(by=['refYear', 'cmdCode'], inplace=True)

# Save to Excel
final_excel_path = '/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06/ECON_INTER/INCAKOLA/last/ultimo.xlsx'
total_fob_by_year_cmd.to_excel(final_excel_path, index=False)
