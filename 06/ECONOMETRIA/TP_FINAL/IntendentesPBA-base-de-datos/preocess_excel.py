import math
import requests
from bs4 import BeautifulSoup
import pandas as pd
import json
import os
import re
#faltan = ['Punta Indio']
#as_lista_int = ['Suipacha', 'Saladillo', 'Lanus', 'General Arenales']

partidos_syn = {'PJ': ['FdT','FDT', 'PJ', 'Partido Justicialista', 'PJ (FPV)', 'Polo Social (FpV)', 'FpV', 'Frente Renovador-UxP', 'UP', 'Frente Renovador', 'Partido Justicialista - Frente para la Victoria', 'PJ (PJ+UCeDé)', 'Frente de Todos', 'Frente para la Victoria-PJ', 'Intendente Partido Justicialista-Frente para la Victoria',
                       'Acción Marplatense - Frente para la Victoria', ],
                'UCR': ['UCR', 'PRO', 'Unión Cívica Radical', 'JxC', 'JXC', 'Juntos Por el Cambio', 'PRO-JxC', 'Cambiemos', 'PI', 'Cambio', 'Radical']}

end_per = ['actualidad', 'al presente', 'presente', 'Actualidad', 'Presente', 'en el cargo', '']


dfs_muni = {}
xlsx_file = 'processed_test1.xlsx'

# Read the Excel file to get the sheet names
xls = pd.ExcelFile(xlsx_file)

# Load each sheet into a separate DataFrame
for sheet_name in xls.sheet_names:
    dfs_muni[sheet_name] = pd.read_excel(xlsx_file, sheet_name=sheet_name, header=0)


def process_periodos(df):
    salida = {'start': [],
              'end': []}
    second_column = df.iloc[:, 1]
    for text in second_column:
        years = re.findall(r'\b\d{4}\b', text)
        salida['start'].append(years[0])
        salida['end'].append(years[1])
    df_salida=pd.DataFrame(salida)
    return df_salida
        

def process_partido_pol(df):
    salida = []
    third_column = df.iloc[:, 2]
    for i, text in enumerate(third_column):
        if text == "":
            third_column[i] = third_column[i-1]
        text_list = text.split()
        if any(item in text_list for item in [partidos_syn['UCR']]):
            salida.append('UCR')
        elif any(item in text_list for item in [partidos_syn['PJ']]):
            salida.append('PJ')
    return salida

for muni, df_m in dfs_muni.items():
    dfs_muni['muni'].iloc[:, 2] = process_partido_pol(df_m)
    dfs_muni['muni'] = dfs_muni['muni'].append(process_periodos(df_m), ignore_index=True)


with pd.ExcelWriter(dfs_muni, engine='xlsxwriter') as writer:
    for sheet_name, df in dfs_muni.items():
        df.to_excel(writer, sheet_name=sheet_name, index=False)

import pandas as pd
import re

# Synonyms for political parties
partidos_syn = {
    'PJ': [
        'FdT', 'FDT', 'PJ', 'Partido Justicialista', 'PJ (FPV)', 'Polo Social (FpV)', 'FpV',
        'Frente Renovador-UxP', 'UP', 'Frente Renovador',
        'Partido Justicialista - Frente para la Victoria', 'PJ (PJ+UCeDé)',
        'Frente de Todos', 'Frente para la Victoria-PJ',
        'Intendente Partido Justicialista-Frente para la Victoria',
        'Acción Marplatense - Frente para la Victoria',
    ],
    'UCR': [
        'UCR', 'PRO', 'Unión Cívica Radical', 'JxC', 'JXC', 'Juntos Por el Cambio',
        'PRO-JxC', 'Cambiemos', 'PI', 'Cambio', 'Radical'
    ]
}

# Strings representing ongoing terms
end_per = ['actualidad', 'al presente', 'presente', 'Actualidad', 'Presente', 'en el cargo', '']

# Read the Excel file to get the sheet names
xlsx_file = 'processed_test1.xlsx'
xls = pd.ExcelFile(xlsx_file)

# Load each sheet into a separate DataFrame and process it
dfs_muni = {}
for sheet_name in xls.sheet_names:
    df = pd.read_excel(xlsx_file, sheet_name=sheet_name, header=0)
    
    # Process the 'Mandato' column for period start and end
    period_data = df['Mandato'].apply(process_periodos)
    df['Start'] = [period[0] for period in period_data]
    df['End'] = [period[1] for period in period_data]
    
    # Process the 'Partido' column for party names
    df['Partido'] = df['Partido'].apply(process_partido_pol)
    
    # Add the processed DataFrame to the dictionary
    dfs_muni[sheet_name] = df

# Calculate the years in government for each party for each municipality
results = {}
for muni, df in dfs_muni.items():
    # Initialize the sub-dictionary for this municipality
    results[muni] = {'PJ': 0, 'UCR': 0, 'Otro': 0}
    for index, row in df.iterrows():
        # Skip rows where the start or end year is not available
        if not row['Start'] or not row['End']:
            continue
        
        # Calculate the length of the term
        term_length = int(row['End']) - int(row['Start'])
        
        # Add the term length to the appropriate party in the results
        results[muni][row['Partido']] += term_length

# Normalize the results so that only 'PJ', 'UCR', or 'Otro' keys exist
for muni in results:
    # We'll keep only the three specified keys and sum any other keys under 'Otro'
    other_keys = set(results[muni].keys()) - {'PJ', 'UCR', 'Otro'}
    for key in other_keys:
        results[muni]['Otro'] += results[muni].pop(key)

# Display the first few items in the results to verify
for muni in list(results.keys())[:5]:
    print(f"{muni}: {results[muni]}")
