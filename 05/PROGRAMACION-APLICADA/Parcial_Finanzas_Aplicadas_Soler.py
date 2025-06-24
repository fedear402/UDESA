"""
@author: Ramiro Soler 

Clase date y settlement pensados con Alfonso Grosz, Juan Francisco Sanchez Mayol, Kiara Rormoser, Franco.
"""
import pandas as pd 

# ESTE MODULO DE DATES FUE IDEADO EN CONJUNTO CON ALFONSO y JUAN FRANCISCO PRICIPALMENTE
# Igualmente tiene cambios estructurales muy grandes desde la primera version (que due la que pesnamos juntos)
class Date:
    def __init__(self, days=None, tupla=None, convention='Actual/Actual'):
        
        #Defincion de variables que se van a utlizar
        self.days = days
        self.date = tupla
        self.convention = convention

        # Para que funcione el modulo se necesita entender que valor quiere calcular el usuario
        if self.date != None:
            self.InDays = self.ToDays()
            
        elif self.days != None:
            self.InDays = self.days
            self.InTup = self.ToTup()
        
    def es_bisiesto(self, year):
        # Son condiciones y devuelve un booleando de si es un año bisiesto o no
        if (year%100 == 0) and ((year%400 == 0) and (year%4 == 0)):
            return True
        elif (year%100 == 0):
            return False
        elif (year%400 == 0) or (year%4 == 0):
            return True
        else:
            return False
        
    def ToDays(self, tupla=None, convention='Actual/Actual'):
        # Se le pasa una tupla y se convierte a dias
        
        # Esto es para que se pueda llamar a la funcion desde un child
        if tupla != None:
            self.date = tupla
            self.convention = convention
        
        # El dia de base es 01/01/0000
        normal_days_per_month = [31,28,31,30,31,30,31,31,30,31,30,31]
        bi_days_per_month = [31,29,31,30,31,30,31,31,30,31,30,31]
        
        month = self.date[1]
        year = self.date[2]
        
        
        if self.convention=='30/360':            
            #SI ES 1 USAMOS 30/360
            day = min(self.date[0],30)
            days_gb = 360*year +30*(month-1)+day #days_gb es DAYS GONE BY
            return days_gb
        
        elif self.convention=='Actual/Actual':
            # SI ES 0 USAMOS ACTUAL/ACTUAL            
            day = self.date[0]            
            days_gb = 0
            
            for k in range(1, year):               
                if self.es_bisiesto(k)==False:                    
                    days_gb += 365
                    #days_per_month = normal_days_per_month
                else:
                    days_gb += 366
                    #days_per_month = bi_days_per_month
                    
            for k in range(1, month):
                if self.es_bisiesto(self.date[2])==False:
                    days_per_month = normal_days_per_month
                else:
                    days_per_month = bi_days_per_month
                days_gb += days_per_month[k-1]
            days_gb += day
            return days_gb

    def ToTup(self, days=None, convention='Actual/Actual'):
        # Se pasa dias y se saca tupla
        
        # Esto es para que pueda ser utilizado como child
        if days != None:
            self.days = days
            self.convention = convention
        
        if self.convention=='Actual/Actual':
            days_accounted = 0
            its = 0
            while days_accounted<self.days and (self.days-days_accounted>364):
                its +=1
                if self.es_bisiesto(its):
                    days_accounted+=366
                else:
                    days_accounted+=365
            year = its+1
            dias_rest = self.days - days_accounted
            if self.es_bisiesto(year):
                days_per_month = [31,29,31,30,31,30,31,31,30,31,30,31]  
            else:
                days_per_month = [31,28,31,30,31,30,31,31,30,31,30,31]    
            meses = 1
            for mes in days_per_month:
    
                if dias_rest>mes:
                    dias_rest -= mes
                    meses+=1
            return (dias_rest, meses, year)
        elif self.convention=='30/360':
            year = int(self.days/360)
            dias_rest = self.days - 360*year
            mes = 1 + int(dias_rest/30)
            dias_rest_del_mes = dias_rest - (mes-1)*30
            if dias_rest_del_mes==0:
                dias_rest_del_mes = 1
            return (dias_rest_del_mes, mes, year)
        
    def finde(self, days=None, convention='Actual/Actual'):
        # Buscar si el dia es fin de semana y si es sabado o domingo
        if days != None:
            self.InDays = days
            self.convention = convention  
        some_saturday = (2,4,2022)
        some_sunday = (3,4,2022)
            
        dom = self.ToDays(tupla=some_sunday, convention=convention)
        sab = self.ToDays(tupla=some_saturday, convention=convention)
            
        if (self.InDays-dom) % 7 == 0:
            return 1
        elif (self.InDays-sab) % 7 == 0:
            return 2
        else:
            return 0

class Bond(Date):
    def __init__(self, chars=dict()):
        # inicializamos el bono
        self.issue_date = chars['issue_date']
        self.today = chars['today']
        self.maturity = chars['maturity']
        self.coupon_rates = chars['coupon_rates']
        self.coupon_dates = chars['coupon_dates']
        self.coupon_freq = chars['coupon_freq']
        self.first_coupon = chars['first_coupon']
        self.irregular_first_coupon = chars['irregular_first_coupon']
        self.amort_percentage = chars['amort_percentage']
        self.amort_dates = chars['amort_dates']
        self.face_value = chars['face_value']
        self.daycount = chars['daycount']
        self.Settlement_plus = chars['Settlement_plus']
        self.Type = chars['Type'] #Es bullet??
        self.Accrued_Interest_Date = chars['Accrued_Interest_Date']
        self.AI_NextCF = None
        
        # Se llaman a las funciones necesarias
        self.Settlement = self.SettlementDate()
        
        self.Cashflow_Dates = self.Fechas()
           
        self.df = self.BondFormat()
        self.Irr = self.irr()
        
        self.IntCorrido = self.Accrued()  
        self.dvbp = self.DV01()

    def PrintBond(self):
        # Funcion para printear el bono
        print(self.df.to_string())
        print("-----")
        print("Irr = ", self.Irr*100, "%")
        print("-----")
        auxsum = self.df["Cashflows"].tolist()
        print("Bond Return = ", sum(auxsum), "(Sum of all inflows minus face value)")
        print("-----")
        print("Accrued Interest = ", self.IntCorrido, "$")
        print("Accrued Interest: Purchase Price = ", self.IntCorrido + self.face_value, "$")
        print("Accrued Interest: Next Coupon Payment = ", self.AI_NextCF, "$")
        print("-----")
        print("DV01", self.dvbp)
        print("----- Punto c")
        print("Irr para la compra en (28, 4, 2022) a 32% de par = ",self.PuntoC()*100, "%")
        
    def BondFormat(self):
        # Iniciar pandas y despues formatearlo
        df = pd.DataFrame(index=range(len(self.Cashflow_Dates)), columns=["Dates","Cashflows","Flujos_Bonos","Flujos_Amort", "Acumulado", "Valor_Residual", "Amort", "Rate"])
        
        for i in range(len(self.Cashflow_Dates)):
            df.Dates[i] = self.Cashflow_Dates[i]
            
        n = 0
        for i in df["Dates"]:
            df.Rate[n] = self.RateCalc(i)/self.coupon_freq
            n += 1
            
        # Rate de amortizaciónes
        aux1 = True
        aux2 = 0
        aux3 = 1
        for i in df["Dates"]:
            if self.ToDays(tupla=i, convention=self.daycount) < self.ToDays(tupla=self.amort_dates[0], convention=self.daycount) or self.ToDays(tupla=i, convention=self.daycount) > self.ToDays(tupla=self.amort_dates[1], convention=self.daycount):
                aux1 = False
            else:
                aux1 = True
            if aux1 == True:
                df.Amort[aux2] = self.AmortCalc(aux3)
                aux3 += 1
            aux2 += 1
        
        for i in range(len(df.Valor_Residual)):
            if i == 0:
                df.Valor_Residual[i] = self.face_value
            else:
                if pd.isna(self.face_value*df.Amort[i]) == False:
                    df.Valor_Residual[i] = df.Valor_Residual[i-1] - self.face_value*df.Amort[i]
                else:
                    df.Valor_Residual[i] = df.Valor_Residual[i-1]
        
        
        for i in range(1,len(df.Cashflows)):
            df.Flujos_Bonos[i] = df.Valor_Residual[i-1]*df.Rate[i]
            df.Flujos_Amort[i] = self.face_value*df.Amort[i]
            
            if pd.isna(df.Valor_Residual[i]*df.Amort[i]) == False:
                df.Cashflows[i] = df.Flujos_Bonos[i] + df.Flujos_Amort[i]
            else:
                df.Cashflows[i] = df.Flujos_Bonos[i]
            
        df.Cashflows[0] = -self.face_value
    
        if self.Type == "Bullet":
            df["Cashflows"].iat[-1] = df["Cashflows"].iat[-1]+(self.amort_percentage[0][0]*self.face_value)
            df["Cashflows"].iat[-1] = df["Cashflows"].iat[-1]+self.face_value
        
        for i in range(len(df.Cashflows)):
            if i == 0:
                df.Acumulado[i] = df.Cashflows[i]
            else:
                df.Acumulado[i] = df.Acumulado[i-1]+df.Cashflows[i]
        
        return df
        
        
    
    def Fechas(self):  
        #Meses cada cashflow
        m = 12/self.coupon_freq
        
        
        Fechas = [self.Settlement, self.first_coupon]
        Fecha_Inicio = self.coupon_dates[0]
        
        while self.ToDays(tupla=Fecha_Inicio, convention=self.daycount) < self.ToDays(tupla=self.maturity, convention=self.daycount):

            month = Fecha_Inicio[1]
            year = Fecha_Inicio[2]
            
            extrayears = (month + m -1)//12
            newyear = year + extrayears
            
            current_month = (month+m)-12*extrayears
            
            auxdate = (Fecha_Inicio[0], int(current_month), int(newyear))

            Fecha_Inicio = auxdate
            
            if self.ToDays(tupla=Fecha_Inicio, convention=self.daycount) > self.ToDays(tupla=self.first_coupon, convention=self.daycount):
                Fechas.append(Fecha_Inicio)
        

        return Fechas
    
    def SettlementDate(self, dia=None):
        # Calcular settlement date
        if dia == None:
            dia = self.issue_date
        
        daynum = self.ToDays(tupla=dia, convention=self.daycount)
        
        business_days = 0
        
        while business_days<self.Settlement_plus:

            date = self.ToTup(days=daynum, convention=self.daycount)          
            date_ff = self.ToDays(tupla=date, convention=self.daycount)
            
            if self.finde(days=date_ff, convention=self.daycount)==0:
                business_days+=1
            else:
                pass
            daynum += 1
        
        fecha_dev = self.ToDays(tupla=self.ToTup(days=daynum, convention=self.daycount), convention=self.daycount)
        if not self.finde(days=fecha_dev, convention=self.daycount)==0:
            daynum += self.finde(days=fecha_dev, convention=self.daycount)
        fecha_dev = self.ToDays(tupla=self.ToTup(days=daynum, convention=self.daycount), convention=self.daycount)
        
        return self.ToTup(days=fecha_dev, convention=self.daycount)
        
    def Accrued(self):
        # Buscar el AI
        n = 0
        for i, row in self.df.iterrows():
            if self.ToDays(tupla=row[0], convention=self.daycount)>=self.ToDays(tupla=self.SettlementDate(dia=self.Accrued_Interest_Date), convention=self.daycount):
                n -= 1
                AR_Cupon = self.df.Flujos_Bonos[n]
                AR_TimeSinceLastCoupon = self.ToDays(tupla=self.SettlementDate(dia=self.Accrued_Interest_Date), convention=self.daycount) - self.ToDays(tupla=self.df.Dates[n], convention=self.daycount)
                AR_Cupon_Interval = self.ToDays(tupla=self.df.Dates[n+1], convention=self.daycount) - self.ToDays(tupla=self.df.Dates[n], convention=self.daycount)
                
                AI = AR_Cupon*(AR_TimeSinceLastCoupon/AR_Cupon_Interval)
                    
                self.AI_NextCF =  self.df.Cashflows[n+1] - AI
                break
            n +=1 
        
        return AI
        
    def PuntoC(self):
        # Calcular punto c
        df = self.df
        aux = 0
        for i in df["Dates"]:
            if self.ToDays(tupla=i, convention=self.daycount)  > self.ToDays(tupla=(28, 4, 2022), convention=self.daycount):
                aux -= 1
                break
            aux += 1
        df = df.drop(df.index[range(aux)])
        df = df.reset_index()
        del df["index"]
        del df["Acumulado"]
        df.Dates[0] = (28, 4, 2022)
        df.Cashflows[0] = -self.face_value*0.32
        
        CashFlow = df["Cashflows"].tolist()
        CashFlow[0] = abs(CashFlow[0])
        

        rta = self.irr(data=CashFlow)

        return rta
    
    def DV01(self):
        # Buscar cashflows
        Cup_CF = self.df["Flujos_Bonos"].tolist()
        Amort_CF = self.df["Flujos_Amort"].tolist()
        
        # Sacar NaN
        for i in range(len(Cup_CF)):
            if pd.isna(Cup_CF[i]) == True:
                Cup_CF[i] = 0
                
        for i in range(len(Amort_CF)):
            if pd.isna(Amort_CF[i]) == True:
                Amort_CF[i] = 0
        
        # Calculos para devolver la respuesta
        aux1 = self.npv(self.Irr, Cup_CF)
        aux2 = self.npv(self.Irr, Amort_CF)
        
        aux3 = aux1 + aux2
        
        aux4 = self.npv(self.Irr+0.0001, Cup_CF)
        aux5 = self.npv(self.Irr+0.0001, Amort_CF)
        
        aux6 = aux4 + aux5
        
        rta = abs(aux6 - aux3)
        
        return rta
    
    def RateCalc(self, fecha):
        # Buscar el rate según la fecha
        fecha_d = self.ToDays(tupla=fecha, convention=self.daycount)
        for i in self.coupon_rates:
            if (fecha_d >= self.ToDays(tupla=i[0], convention=self.daycount)) and (fecha_d <= self.ToDays(tupla=i[1], convention=self.daycount)):
                return i[2]
        return 0
    
    def AmortCalc(self, num):
        # Para el numero que se pasa, buscar el rate.
        for i in self.amort_percentage:
            if num == i[1]:
                return i[0]
            
            return self.amort_percentage[-1][0]
        
    def npv(self, r, cashflows):
        
        pv_cashflows = 0
        #Calculo con formula present value
        for i, cashflow in enumerate(cashflows):

            pv_cashflows += cashflow / (1+r)**(i+1)
        npv_calc = pv_cashflows - cashflows[0]
        return npv_calc
    
    def irr(self, data=None, Precision=0.0001):
        if data==None:
            CashFlow = self.df["Cashflows"].tolist()
            CashFlow[0] = abs(CashFlow[0])
        else:
            CashFlow = data
        #Rate y step provisorio
        rate = 1
        step = 1
    
        #Se chequea que el rate sea suficiente para que el primer npv sea negativo.
        npv_c = self.npv(rate, CashFlow)

        while npv_c > 0:
            rate += 0.01
            npv_c = self.npv(rate, CashFlow)

        #Esto se cambia para que entre en las condiciones del while
        npv_c = Precision + 1
        
        #Definicion de variables para el calculo del step
        a = False
        b = False
        
        # Se entra a un while con la condicion de que si el npv se encuentra dentro del rango de presicion,
        # El while se termina cuando npv_c se encuentra dentro del rango deseado
        while (npv_c > Precision or npv_c < -Precision):
            npv_c = self.npv(rate, CashFlow)
            if npv_c > 0:
                rate += step
    
                a = True
                
                #Si ya se calcularon por ambos lados por lo menos una vez, se llego al max de precisión
                #Posible con ese step, entonces se reduce a la mitad
                if a == True and b == True:
                    a = False
                    b = False
                    step = step/2
    
            else:
                rate -= step
                b = True
                
        return rate
    
    # Si el objeto está dentro de un print
    def __repr__(self):
        return self.df
            
specs = dict({'issue_date': (4, 9, 2020),   #INCIO DEL BONO
              'today': (28, 4, 2022),
              'maturity': (9, 7, 2030),  #DIA FINAL
              'coupon_rates': [((4, 9, 2020), (8, 7, 2021), 0.00125), ((9, 7, 2021), (8, 7, 2023), 0.005), ((9, 7, 2023), (8, 7, 2027), 0.0075), ((9, 7, 2027), (8, 7, 2030), 0.0175)],
              'coupon_dates': [(9, 1, 2021)],
              'coupon_freq': 2,
              'first_coupon': (9, 7, 2021),   #PRIMER CUPO
              'irregular_first_coupon': True,
              'amort_percentage': [(0.04, 1), (0.08, None)],   #CUANTO 
              'amort_dates': [(9, 7, 2024), (9, 7, 2030)],   
              'face_value': 1,    #CUANTO TE PAGA AL FINAL
              'daycount': '30/360',
              'Settlement_plus': 2, 
              'Type': 'stepup',
              'Accrued_Interest_Date': (28, 4, 2022)})

bono = Bond(specs)
bono.PrintBond()

