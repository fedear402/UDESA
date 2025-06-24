import requests
from bs4 import BeautifulSoup
import pandas as pd
import json

# wiki_municipios = pd.read_csv('wiki_municipios.csv')
# PBA_municipios = pd.read_excel("PBA_data_clean.xls")

# municipios_grammatic = [m.replace('General Juan Madariaga', 'General Madariaga').replace('Coronel de Marina Leonardo Rosales', 'Coronel Rosales') for m in wiki_municipios['Partido'].tolist() if m != 'TOTAL']
# municipios_ungrammatc = [m.replace('á', 'a').replace('é', 'e').replace('í', 'i').replace('ó', 'o').replace('ú', 'u').replace('ñ', 'n') for m in municipios_grammatic]
# municipios_caps_grammatic = [m.upper() for m in municipios_grammatic]
# municipios_caps_ungrammatic = [m.upper() for m in municipios_ungrammatc]
# municipios_search_format = ['_'.join(m.split()) for m in municipios_grammatic]

# formats = pd.DataFrame({
#     'grammatic' : municipios_grammatic,
#     'ungrammatic' : municipios_ungrammatc,
#     'caps_grammatic' : municipios_caps_grammatic,
#     'caps_ungrammatic' : municipios_caps_ungrammatic,
#     'search' : municipios_search_format
# })

# gramaticas = {i:j for i, j in zip( formats['grammatic'].tolist() , formats['ungrammatic'].tolist()  )}

# with open('gramaticas.json', 'w', encoding='utf-8') as f:
#     json.dump(gramaticas, f, ensure_ascii=False, indent=4)

# with open('municipios.json', 'w', encoding='utf-8') as f:
#     json.dump(formats.to_dict(orient='records'), f, ensure_ascii=False, indent=4)

# caps_to_search_format = {i:'_'.join(j.split()) for i, j in 
#                          zip(sorted(municipios_caps_ungrammatic), 
#                              sorted(municipios_grammatic))}


# for i,j in caps_to_search_format.items():
#     print(i, j)

# ## Diccionario de data de intendentes 
# intendentes_clean = {}

# # Chequea el formato en que estan
# def bool_wiki_table():
#     pass

# # Agarra la tabla de wikipedia que le siga a algun header que diga 'intendentes'
# def wiki_table(input_partido:str):
#     input_partido = caps_to_search_format[input_partido.upper()]
#     site = requests.get(f"https://es.wikipedia.org/wiki/Partido_de_{input_partido}")
#     site.raise_for_status()

#     soup = BeautifulSoup(site.content, 'html.parser')
#     sections = soup.find_all('span', id=lambda x: x and ("Intendentes" in x or "intendentes" in x ) )

#     salida = {}

#     for section in sections:
#         table = section.find_next('table')
#         if table:
#             salida = {}
#             rows = table.find_all('tr')
#             rowspan = 1
#             partido_politico = ''
#             for row, i in zip(rows, range(len(rows))):
#                 columns = row.find_all(['td', 'th'])
                
#                 salida[i] = []
#                 if rowspan > 0:
#                     salida[i].append(partido_politico)
#                     rowspan -= 1

#                 for col in columns:
#                     if col.get('rowspan'):
#                         rowspan = int(col.get('rowspan')) - 1
#                         partido_politico = col.find('a').string.strip() if col.find('a') else (col.text.strip())
#                     salida[i].insert(0, (col.text.strip()))
            
#             return salida
#         else:
#             return f"No table found after section with id: {section['id']}"



# wikipedia_formatos = {
    
# }
# for i in [m.replace('ñ', 'n') for m in wiki_municipios['Partido'].tolist() if m != 'TOTAL']:
#     wikipedia_formatos[i] = ''

# # Los que estan como tablas simples
# as_wiki_table = ['Almirante Brown', 'Avellaneda', 'Berisso', 'Canuelas', 'Ensenada', 'Ezeiza', 'General Las Heras', 'General Rodríguez',  'Hurlingham', 'Ituzaingó', 'José C. Paz', 'Brandsen', 'Esteban Echeverría', 'Escobar', 'Exaltación de la Cruz', 'La Matanza', 'Lomas de Zamora', 'Luján', 'Malvinas Argentinas', 'Marcos Paz', 'Merlo', 'Moreno', 'Moreno', 'Pilar', 'Presidente Perón', 'Quilmes', 'San Fernando',  'San Miguel', 'San Vicente', 'Vicente López', 'Zárate']
# as_ul_sin_partido = ['Berazategui', 'Lanús']
# as_wiki_table_caso_especial = ['Tres de Febrero']

# # Los que solo estan como anexos
# as_anexo_table = ['Campana', 'La Plata', 'Tigre']
# as_anexo_table_sin_partido = ['San Isidro']
# as_anexo_ul_sin_partido = ['Florencio Varela']

# # Estan en la pagina web y no en Wikipedia
# as_otro = ['General Man Martin']


# wikipedia_formatos['Almirante Brown'] = wikipedia_formatos['Avellaneda'] = 'wikitable'
# wikipedia_formatos[''] = 'ul sin partidos'



# # def casos_especiales():
# #     casos_especiales = []

# #     for partido in municipios_grammatic:
# #         print('------------' , partido)
# #         if partido in ['Benito Juárez', 'Coronel de Marina Leonardo Rosales', 'Monte Hermoso', 'Pergamino']:
# #             continue
# #         if wiki_table(grammatic_to_sin_tilde[partido]) is None:
# #             print(partido, ' es caso especial')
# #             casos_especiales.append(partido)
# #         else:
# #             print(partido, ' funciona')
    
# #     return casos_especiales

# # casos_especiales = casos_especiales()
# # print(casos_especiales)
# '''
# ['Arrecifes', 'Chacabuco', 'Chivilcoy', 'General San Martín', 
# 'José C. Paz', 'Junín', 'La Plata', 'Lezama', 'Monte', 'Punta Indio', 'San Isidro', 
# 'Tandil', 'Tigre', 'Tres de Febrero']
# ['Benito Juárez', 'Monte Hermoso', 'Pergamino']
# '''
        
response = requests.get('https://www.wikitable2json.com/api/Partido_de_Baradero?lang=es&cleanRef=false')
data = response.json()
print(data)
