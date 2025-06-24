import math
import requests
from bs4 import BeautifulSoup
import pandas as pd
import json
import os
import re

with open('gramaticas.json') as g:
    gramaticas = json.load(g)

lat_caba, long_caba = -34.61315, -58.37723

PBA_data_dirty = pd.read_excel('PBA_data_dirty.xlsx')
def clean_format(db):
    ############################
    ## datos mal formateados: ##
    ############################
    # ITAE en pesos 20191
    # ITAE per capita en pesos 2019
    # Recaudacion per capita 2021
    # Recaudacion propia 2021

    def str_to_num(lista):
        for i in range(len(lista)):
            lista[i] = float( ((lista[i].split())[1].replace(".", "")).replace("," , ".") )
        return lista
    
    db['ITAE en pesos 20191'] = str_to_num(db['ITAE en pesos 20191'].tolist())
    db['ITAE per capita en pesos 2019'] = str_to_num(db['ITAE per capita en pesos 2019'].tolist())
    db['Recaudacion per capita 2021'] = str_to_num(db['Recaudacion per capita 2021'].tolist())
    db['Recaudacion propia 2021'] = str_to_num(db['Recaudacion propia 2021'].tolist())

    return db
clean_format(PBA_data_dirty).to_excel('PBA_data_clean.xlsx', index=False)

PBA_data_clean = pd.read_excel('PBA_data_clean.xlsx', index_col='Municipio1')
PBA_data_clean.rename(columns={'ITAE en pesos 20191': 'itae', 
                               'Principal Actividad Economica': 'actividad',
                                'Latitud (generado)' : 'lat', 
                                'Longitud (generado)' : 'long',
                                'Cantidad Empresas Exportadoras' : 'empresas_expo', 
                                'Cantidad Empresas' : 'empresas',
                                'ITAE per capita en pesos 2019' : 'itae_pc', 
                                'Participacion en el ITAE PBA' : 'participacion',
                                'Población con NBI' : 'nbi', 
                                'Población' : 'pob',
                                'Porcentaje de personas con NBI respecto a la poblacion Municipal' : 'nbi_pob',
                                'Recaudacion per capita 2021' : 'rec_pc', 
                                'Recaudacion propia 2021' : 'rec_propia'}, inplace=True)
PBA_data_clean['Municipio'] = [{str(v).upper(): k for k, v in gramaticas.items()}.get(str(nom).upper(), None) for nom in PBA_data_clean.index]
PBA_data_clean= PBA_data_clean.set_index('Municipio', drop=False) 

class Municipio():
    partidos_syn = {'PJ': ['PJ', 'Partido Justicialista'],
                    'UCR': ['UCR', 'PRO', 'Unión Cívica Radical', 'JxC', 'JXC', 'Juntos Por el Cambio']}
    
    def __init__(self, nombre):
        self.nombre = self.get_nombre(nombre)
        assert self.nombre is not None
        self.search_format = "_".join(self.nombre.split())
        self.wiki_html = self.get_wikipedia_html()

        for at, val in PBA_data_clean.transpose()[self.nombre].items(): 
            setattr(self, "_".join(at.split()), val)
        
        self.dist_caba = self.haversine(self.lat,self.long,lat_caba, long_caba)


        # anexo_html = requests.get(f"https://es.wikipedia.org/wiki/Partido_de_{nombre}")

    def get_nombre(self, nombre):
        cleaned_name = re.sub(r'[^\w\.]+', ' ', nombre).strip().lower()  # [^\w\.] to keep dots

        # Check if the cleaned name is the correct name (a key in the dictionary)
        if cleaned_name in map(lambda x: x.lower(), gramaticas.keys()):
            return nombre  # Return the original name, because it's correct

        # Check if the cleaned name is an incorrect name (a value in the dictionary)
        for correct, incorrect in gramaticas.items():
            if cleaned_name == incorrect.lower():
                return correct

        return None  # If the name was not found in the dictionary
        
    def get_wikipedia_html(self):
        path = os.path.join("sitios", f"{self.search_format}_wiki.html")
        if os.path.isfile(path):
            with open(path, 'r') as wh:
                html= wh.read()
        else:
            html = requests.get(f"https://es.wikipedia.org/wiki/Partido_de_{self.nombre}")
            with open(path , 'w') as n:
                n.write(html.text)
        return html
    '''
    def wiki_table(self):
        soup = BeautifulSoup(self.wiki_html, 'html.parser')
        sections = soup.find_all('span', id=lambda x: x and ("Intendentes" in x or "intendentes" in x ) )

        salida = {}

        for section in sections:
            table = section.find_next('table')
            if table:
                salida = {}
                rows = table.find_all('tr')
                rowspan = 1
                partido_politico = ''
                for row, i in zip(rows, range(len(rows))):
                    columns = row.find_all(['td', 'th'])
                    
                    salida[i] = []
                    if rowspan > 0:
                        salida[i].append(partido_politico)
                        rowspan -= 1

                    for col in columns:
                        if col.get('rowspan'):
                            rowspan = int(col.get('rowspan')) - 1
                            partido_politico = col.find('a').string.strip() if col.find('a') else (col.text.strip())
                        salida[i].insert(0, (col.text.strip()))
                
                return salida
            else:
                return f"No table found after section with id: {section['id']}"
    '''

    def wiki_table(self):
        soup = BeautifulSoup(self.wiki_html, 'html.parser')
        sections = soup.find_all('span', id=lambda x: x and "Intendentes" in x)

        salida = {}
        rowspan_values = {}  # Keep track of rowspan values for each column

        for section in sections:
            table = section.find_next('table')
            if table:
                rows = table.find_all('tr')
                
                for row_index, row in enumerate(rows):
                    columns = row.find_all(['td', 'th'])
                    if row_index not in salida:
                        salida[row_index] = []
                    
                    col_index = 0  # Reset column index for each row
                    for column in columns:
                        # Skip columns that are occupied by rowspan from previous rows
                        while rowspan_values.get(col_index, 0):
                            if rowspan_values[col_index] > 0:
                                salida[row_index].append(salida[row_index - 1][col_index])
                                rowspan_values[col_index] -= 1
                            col_index += 1

                        # Get cell text
                        cell_text = ' '.join(column.stripped_strings)
                        salida[row_index].append(cell_text)
                        
                        # If column has rowspan, store its count
                        if column.has_attr('rowspan'):
                            rowspan_count = int(column['rowspan'])
                            rowspan_values[col_index] = rowspan_count - 1
                        
                        col_index += 1

                    # Normalize col_index after each row processing in case of missing td's
                    max_cols = max(len(salida[r]) for r in salida)
                    while len(salida[row_index]) < max_cols:
                        salida[row_index].append('')

                return salida
            else:
                return f"No table found after section with id: {section['id']}"


    def haversine(self, lat1, long1, lat2, long2):

        #########################
        ## Distancia a BS. AS. ##
        #########################

        # coordenadas de bsas -> latitud -34.61315 y longitud -58.37723
        

        # funcion para calcular distancia
        lat1 = math.radians(float(lat1))
        long1 = math.radians(float(long1))
        lat2 = math.radians(float(lat2))
        long2 = math.radians(float(long2))

        # formula de Haversine 
        a = math.sin((lat2 - lat1) / 2)**2 + math.cos(lat1) * math.cos(lat2) * math.sin((long2 - long1) / 2)**2
        c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))

        # distancia usando el radio de la tierra en Kms
        d =  6371.0 * c

        return d

    def process_wiki_table_to_dataframe(self, wiki_table_dict):
        # Initialize a list to hold our cleaned rows
        cleaned_rows = []

        # Iterate over the items in the dictionary
        for i, row in wiki_table_dict.items():
            # Your current script seems to store the partido_politico in both the first
            # and last positions when it is present. We need to handle this.
            if row[0] == row[-1] and i != 0:
                row = row[:-1]
            # Remove empty strings and join multi-index names
            row = [item for item in row if item]  # Remove empty strings
            cleaned_rows.append(row)

        # Now we have the cleaned rows, we can create a DataFrame
        df = pd.DataFrame(cleaned_rows, columns=['Partido', 'Intendente', 'Periodo'])

        # The Periodo column may need to be cleaned further depending on its format
        # This will depend on the specific format of the dates in your 'salida.txt'

        return df

PBA_data_clean.to_excel('clean.xlsx')

objetos_munis = {muni: Municipio(muni) for muni in gramaticas.keys()}
PBA_data_clean['dist_caba'] = [0] * len(PBA_data_clean['itae'])

for muni, obj in objetos_munis.items():
    PBA_data_clean.at[muni, 'dist_caba'] = obj.dist_caba

#     #     header = f"-------------------------------- {muni} --------------------------------\n"
#     #     print(header.strip())
#     #     # print(obj.intendentes_df)
#     #     out += header

#     #     try:
#     #         for value in obj.wiki_table().values():
#     #             item = f"{value}\n"
#     #             out += item
#     #             print(value)
#     #     except Exception as e:
#     #         error_msg = f"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx {muni} xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\n"
#     #         print(error_msg.strip())
#     #         out += error_msg
#     #         no_func.append(muni)

#     # print(no_func)

#     # with open('salida.txt', 'w') as s:
#     #     s.write(out)
#     # for muni, obj in objetos_munis.items():
#     #     print(f"-------------------------------- {muni} --------------------------------\n")
#     #     print(obj.intendentes_df)

#     # df = pd.DataFrame.from_dict(objetos_munis['Adolfo Alsina'].wiki_table(), orient="index")
#     # # print(df.drop(df.columns[3], axis=1))
#     # with pd.ExcelWriter('excel_try1.xlsx') as writer:
#     #     for muni, ob in objetos_munis.items():
#     #         try:
#     #             df = pd.DataFrame.from_dict(ob.wiki_table(), orient="index")
#     #             df = df.drop(df.columns[3], axis=1)
            
#     #             df.to_excel(writer, sheet_name=muni, index=False)
#     #             print(muni, 'done')
#     #         except:
#     #             df = pd.DataFrame({})
#     #             df.to_excel(writer, sheet_name=muni, index=False)

#     for muni, ob in objetos_munis.items():
#         response = requests.get(f'https://www.wikitable2json.com/api/{ob.search_format}?lang=es&cleanRef=false')
#         data = response.json()
#         print(f"-------------------------------- {muni} --------------------------------\n")
#         print(data)

PBA_data_clean.to_excel('clean.xlsx')
