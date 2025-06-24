import comtradeapicall
import time
import pandas as pd
import os
import json
import pandas as pd
# import seaborn as sns
import plotly.express as px
# import matplotlib.pyplot as plt
import plotly.graph_objs as go

## Para graficar : 
import plotly.express as px

os.chdir('/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06/ECON_INTER/INCAKOLA/COMTRADE')

class HarmonizedSystem:
    def __init__(self):
        self.hs = (((pd.read_csv("harmonized-system.csv")).set_index('hscode').to_dict())['description'])
        self.hs.pop('TOTAL')
        self.hs = {int(ids):text for ids, text in self.hs.items()}

    def __getitem__(self, s):
        vals = None
        if s.step == 1:
            vals = 2
        if s.step == 2:
            vals = 4
        if s.step == 3:
            vals = 6

        indexada = {ids: text for ids, text in self.hs.items() if len(str(ids)) == vals and ( ( s.start <= ids < s.stop ) or (s.start <= int(str(ids)[:2]) < s.stop ) or (s.start <= int(str(ids)[:4]) < s.stop)  )}
        return indexada

class DataHandler:
    def __init__(self):
        self.hs = HarmonizedSystem()
        self.partners = self.get_country_codes("partners")
        self.reporters = self.get_country_codes("reporters")

        self.partners_minus_world = {i:j for i,j in self.partners.items() if i != "World"}
        self.reporters_minus_world = {i:j for i,j in self.reporters.items() if i != "World"}        
        self.call_all_partners = ",".join(list(({i:j for i,j in self.partners.items() if i != "All"}).keys()))
        self.call_all_reporters = ",".join(list(({i:j for i,j in self.reporters.items() if i != "All"}).keys()))


    def combine_folder(self, folder):
        '''
        folder : str. directory
            Combina todos los csvs en la carpeta que se ponga como directory
            Elimina instancias repetidas (mismo año, reporter, partner y valor fob)
        '''
        collapsed = [f for f in os.listdir(folder)if f.endswith('.csv')]
        dfs = []

        for data in collapsed:
            filepath = os.path.join(folder, data)
            try:
                df = pd.read_csv(filepath)
                if df.empty:
                    continue
                dfs.append(df)
            except pd.errors.EmptyDataError:
                continue

        combined_df = pd.concat(dfs, ignore_index=True)
        combined_df = combined_df.drop_duplicates(subset=['refYear', 'partnerISO', 'cmdCode', 'fobvalue'])
        output = os.path.join(folder, f"{folder}-FINAL.csv")
        combined_df.to_csv(output, index=False)
        return combined_df

    def get_country_codes(self, direction):
        if direction not in ["partners", "reporters"]:
            raise ValueError("missing direction to get the country code (partners or reporters)")
        
        with open(f'{direction}.json', 'r') as file:
            file = json.load(file)
        # print({country['text']:country['id'].lower() for country in file["results"]})
        return {country['text'].lower():country['id'].lower() for country in file["results"]}
        
    
    def make_folder(self, inp_folder, **kwargs):
        reporters = ",".join(kwargs['reporters'])
        partners = ",".join(kwargs['partners'])
        years = kwargs['years']
        flow = kwargs['flow']

        path = "data/" + inp_folder
        # Si se especificó un nombre
        if inp_folder != "":

            if not os.path.exists(path):
                os.makedirs(path)
            else:
                for ver in range(2, 10):
                    # pregunta si queres borrar el que ya existe
                    delete = input("delete: y/n")
                    if delete == "y":
                        os.rmdir(path)
                        os.makedirs(path)
                    else:
                        # Si decide no borrar, crea otra con (1) al final
                        path += " (1)"
                        if not os.path.exists(path):
                            os.makedirs(path)
                            break
                        else:
                            path += f" ({ver})"
        
            return path 

        # si no se especificó el nombre
        else:
            folder = f"{reporters}_{flow}_{partners}_{years[0]}_{years[-1]}(1)"
            for ver in range(2, 10):
                if not os.path.exists(path):
                    os.makedirs(path)
                    break
                else:
                    folder += f"({ver})"

            return folder

class Trade:
    def __init__(
        self,
        reporters:list,
        partners:list,
        years:list,
        hs_codes:list,
        flow:str,
        monthly:bool,
        folder = "",
        wait= 2
        ):

        '''
        reporters       : str o lista de str (nombres de paises) / int o lista de int (codigos ONU)
                        : en el objeto es una lista de int
        partners        : str o lista de str (nombres de paises) / int o lista de int (codigos ONU)
                        : en el objeto es una lista de int
        years           : lista de años de los que se quieren datos
        hs_codes        : int o lista de int
        flow =  "X"     : str que puede ser 'X' (exportaciones) o 'M' (importaciones) o 'B' (bilateral)
        monthly = False : si se quiere en frecuencia mensual o anual
        folder = ""     : nombre de la carpeta donde se guardan los datos
                        Default: "reporter-flow-partner-hs_codes-año[0]-año[-1]"
        wait = 2        : tiempo de espera entre limites de velocidad    
        '''
        self.dh = DataHandler()
        self.hs = HarmonizedSystem()
        self.reporters = self.case_to_code("reporters", reporters)
        self.partners = self.case_to_code("partners", partners)
        self.years = years if isinstance(years, list) else [years]
        self.hs_codes = hs_codes if isinstance(hs_codes, list) else [hs_codes]
        self.flow = flow
        self.monthly = monthly
        self.folder = self.dh.make_folder(folder, 
                                          partners = self.partners, reporters = self.reporters, years = self.years, flow=self.flow)
        print("folder", self.folder)
        self.wait = wait

    def case_to_code(self, direccion, arg):
        ''' Homogeneiza el formato de input de reporters o partners a lista de int
        '''
        
        out = None
        if isinstance(arg, str):
            
            out = [ (self.dh.get_country_codes(f"{direccion}") )[arg.lower()] ]

        elif isinstance(arg, list) and all(isinstance(i, str) for i in arg):
            out = [self.dh.get_country_codes(f"{direccion}")[i.lower()] for i in arg]

        elif isinstance(arg, int):
            out = [arg]
        
        return out

    def prod(self, l):
        out = 1
        for i in l:
            out *= i
        return out

    
    def lengths_to_call_format(self, starts_vector, lengths_vector):
        years = ",".join([str(i) for i in self.years[starts_vector[0]:lengths_vector[0]+1]])
        reporters = ",".join([str(i) for i in self.reporters[starts_vector[1]:lengths_vector[1]+1]])
        partners = ",".join([str(i) for i in self.partners[starts_vector[2]:lengths_vector[2]+1]])
        hs_codes = ",".join([str(i) for i in self.hs_codes[starts_vector[3]:lengths_vector[2]+1]])

        return {
            'years' : years,
            'reporters' : reporters,
            'partners' : partners,
            'hs_codes' : hs_codes
        }

    def _request_orders(self):
        '''
        devuelve una lista con las calls que conviene hacer si el pedido es mayor a 500 filas
        yrph es un vector con posiciones en las listas de las variables atriibuto del objeto
        '''
        out = []

        # yrph = (self.years, self.reporters, self.partners, self.hs_codes)

        start_yrph = (0,0,0,0)
        
        length_yrph = (len(self.years), len(self.reporters), len(self.partners), len(self.hs_codes))

        # comb_tot = [(y, r, p, h) for y in self.years for r in self.reporters for p in self.partners for h in self.hs_codes]

        if self.prod(length_yrph) < 500:
            out.append(self.call_format(start_yrph, length_yrph))
        else:
            max_len = max(length_yrph)
            i_max = length_yrph.index(max_len)
            if self.prod( [ (length_yrph[a] if i_max != a else max_len/2)   for a in range(len(length_yrph))  ] ) < 500:
                pass

            

        return out
    
    def _request_and_save(self, freq='A', add=0, **call_parameters):
        data = None
        while data is None:
            data = comtradeapicall.previewFinalData( 
                typeCode='C', 
                freqCode=freq,
                clCode='HS', 
                period=call_parameters['years'],
                reporterCode=call_parameters['reporters'], 
                partnerCode=call_parameters['partners'],
                cmdCode=call_parameters['hs_codes'], 
                flowCode= self.flow,
                maxRecords=2500, format_output='JSON', aggregateBy=None, breakdownMode='plus', 
                countOnly=None, includeDesc=True, partner2Code=0, customsCode=None, motCode=None
            )
            if data is None:
                time.sleep(self.wait)
            else:
                df_temp = pd.DataFrame(data)
                df_temp.to_csv(os.path.join(self.folder, 
                        f"{call_parameters['reporters'][0]}_{self.flow}_{call_parameters['partners'][0]}_etc_{ '_'.join(call_parameters['hs_codes']) }_{call_parameters['years']}-{add}.csv"), 
                        index=False) 
                break

    def make_request_and_save(self, optimizar, split):
        if optimizar:
            # no anda
            for r in self._requests_order():
                self._request_and_save(r)
        else:
            if split:
                for period in self.years:
                    # Process all partners if less than 500
                    if (len(self.partners) * len(self.hs_codes)) <= 500:
                        self._request_and_save(years=period, 
                                            reporters=",".join([str(i) for i in self.reporters]),
                                            partners=",".join([str(i) for i in self.partners]),
                                            hs_codes=",".join([str(i) for i in self.hs_codes]))
                    # Process in batches of 500 if there are more than 500 partners
                    else:
                        # Determine the size of each batch (using integer division)
                        batch_size = len(self.partners) // 3

                        # Iterate over the three batches
                        for i in range(3):
                            # Calculate the start and end indices for the current batch
                            start_index = i * batch_size
                            end_index = start_index + batch_size

                            # Special case for the last batch to include any remaining elements
                            if i == 2:
                                end_index = len(self.partners)

                            # Slice the partners list to get the current batch
                            batch_partners = self.partners[start_index:end_index]

                            # Call the request and save function for the current batch
                            self._request_and_save(years=period,
                                                reporters=",".join([str(r) for r in self.reporters]),
                                                partners=",".join([str(p) for p in batch_partners]),
                                                hs_codes=",".join([str(hs) for hs in self.hs_codes]),
                                                add=i+1)
            else:
                for period in self.years:
                    self._request_and_save(years=period, 
                        reporters=",".join([str(i) for i in self.reporters]),
                        partners=",".join([str(i) for i in self.partners]),
                        hs_codes=",".join([str(i) for i in self.hs_codes]))

                
                # print(period, ",".join([str(i) for i in self.reporters]), ",".join([str(i) for i in self.partners]),",".join([str(i) for i in self.hs_codes]))

    def make_request_and_save_all(self):
        pass

################################################################################################################################################################################################################################################
################################################################################################################################################################################################################################################

def combinar_carpeta(carpeta):
    collapsed = [f for f in os.listdir(carpeta) if (f.endswith('.csv') or f.endswith('.xlsx'))]
    dfs = []

    for data in collapsed:
        filepath = os.path.join(carpeta, data)
        try:
            if data.endswith('.csv'):
                df = pd.read_csv(filepath)
            elif data.endswith('.xlsx'):
                df = pd.read_excel(filepath)
            if df.empty:
                continue
            dfs.append(df)
        except pd.errors.EmptyDataError:
            continue

    combined_df = pd.concat(dfs, ignore_index=True)
    output = os.path.join(carpeta, f"{carpeta.split('/')[1]}-FINAL.xlsx")
    combined_df.to_excel(output, index=False)

################################################################################################################################################################################################################################################
################################################################################################################################################################################################################################################


dh = DataHandler()
hs = HarmonizedSystem()
def start():
    a = Trade(
        reporters='argentina',
        partners=[i for i in list( dh.partners.keys() ) if (i != 'world' and i != 'all')] ,
        years=list(range(1990, 2023)),
        hs_codes=[12, 30, 27, 61, 85],
        flow='M',
        monthly=False,
        folder = "allM",
        wait= 2
        )
    a.make_request_and_save(optimizar=False, split=False)

#start()
combinar_carpeta("/Users/fedelopez/Library/CloudStorage/OneDrive-Personal/Documents/UDESA/06/ECON_INTER/INCAKOLA/COMTRADE/data/all")
