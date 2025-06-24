"""
Created on Thu Apr 28 22:26:10 2022

@author: Alfonso Grosz, Juan Francisco Sanchez, Kiaro Rormoser, Franco, Ramiro Soler.
"""


class cashflow13:
    
    def __init__(self, cashflows):
        
        
        self.all_flows = cashflows
    
    def NPV(self, rate):
        flujos_desc = []
        iteraciones = 0
        for flow in self.all_flows:
            valor_presente = flow/((1+rate)**iteraciones)
            flujos_desc.append(valor_presente)
            iteraciones+=1
        return sum(flujos_desc)
    
def IRR13(cashflow, lower_guess=0.01, higher_guess=2):
    
    iteraciones = 0
    nmax = 50
    #if lower_guess<0 or higher_guess>1:
     #   raise TypeError("Initial guess number are not within range 0<r<1")
     #Dejo esto como comentario porque la TIR no necesariamente es menor a 100%
    rate = (lower_guess+higher_guess)/2
    
    while cashflow.NPV(rate)!=0 and iteraciones<nmax:
        rate = (lower_guess+higher_guess)/2
        if cashflow.NPV(rate)>0:
            lower_guess = rate
        else:
            higher_guess = rate
        iteraciones+=1
    return rate
    





class RootFinderTIR():
    def __init__(self, cashflows, degrees, derivative=None):
          
        self.cashflows = cashflows    
        self.degrees = degrees       
        self.derivative = derivative
    

    def f(self, x):
        L = []
        for k in range(0, len(self.cashflows)-1):
            L.append(((x)**self.degrees[k])*self.cashflows[k])
        return sum(L)
    
    def AS(self, guess=0.01, delta=1, nmax=1000, ytol=0.0001):
         
        iteraciones = 0
        direccion = 1.0
        cambios_signo = 0
        
        #guess_original = guess
        sols=[guess]                    # la lista va almacenando las soluciones
        
        y_actual = self.f(guess)        
        ys = [y_actual]
        
        while abs(y_actual)>ytol and iteraciones<nmax:
            iteraciones += 1
            guess += delta*direccion
            y_nuevo = self.f(guess)
            sols.append(guess)
            ys.append(y_nuevo)
            
            if  y_actual*y_nuevo <0 or (y_actual > 0 and y_nuevo>y_actual) or ((y_actual < 0 and y_nuevo< y_actual)):
                delta*= -0.5           # multiplicando por -0.5 corrige direccion y sentido x igual
                cambios_signo += 1
                            
            y_actual = y_nuevo
        
        self.xs = sols
        self.ys = ys
        return sols[-1]


#%%
class date_worker:
    
    def __init__(self, date, convention='Actual/Actual'):
        
        '''Las convention son: /n
        0 es Actual/Actual
        1 es 30/360
        '''
        
        
        self.date = date
        self.convention = convention
        
        self.numdays = self.days_gone_by()
        
    def es_bisiesto(self, year):
        
        if (year%100 == 0) and ((year%400 == 0) and (year%4 == 0)):
            return True
        elif (year%100 == 0):
            return False
        elif (year%400 == 0) or (year%4 == 0):
            return True
        else:
            return False
        
    def days_gone_by(self):
        
        # dia de base 01/01/0000
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
        
    def finde(self):
            
        some_saturday = (2,4,2022)
        some_sunday = (3,4,2022)
            
            
        dom = date_worker(some_sunday).days_gone_by()
        sab = date_worker(some_saturday).days_gone_by()
            
            
        if (self.numdays-dom) % 7 == 0:
            return 1
        elif (self.numdays-sab) % 7 == 0:
            return 2
        else:
            return 0
        
                


class days_as_date_worker:
    
    def __init__(self, days, convention='Actual/Actual'):
        
        self.days = days
        self.convention = convention
        self.date_tuple = self.date_tuple()
    
    def es_bisiesto(self, year):
        
        if (year%100 == 0) and ((year%400 == 0) and (year%4 == 0)):
            return True
        elif (year%100 == 0):
            return False
        elif (year%400 == 0) or (year%4 == 0):
            return True
        else:
            return False
    
    
    def date_tuple(self):
        
        
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


def add2date(date, plus_days=0, plus_months=0, plus_years=0, daycount='Actual/Actual', operation='sum'):
    
    
    
    day = date[0]
    month = date[1]
    year = date[2]
    
    
    if operation=='sum':
        #Codigo de Gabriel adaptado para nuestras clases de objetos
        
        mod_year = year + plus_years
        extrayears = (month + plus_months -1)//12
        newyear = mod_year + extrayears
        
        current_month = (month+plus_months)-12*extrayears
        
        auxdate = (day, current_month, newyear)
        auxnum = date_worker(auxdate, daycount).numdays
        salida = days_as_date_worker(auxnum+plus_days, daycount).date_tuple
        return salida
    else:
        '''operation is substract'''
        mod_year = year - plus_years
        if month-plus_months<1:
            mod_year-=1
        current_month = month-plus_months
        if current_month<1:
            current_month += 12
        
        auxdate = (day, current_month, mod_year)
        auxnum = date_worker(auxdate, daycount).numdays
        salida = days_as_date_worker(auxnum-plus_days, daycount).date_tuple
        return salida
        




def nextbusinessday(date, daycount='Actual/Actual'):
    
    date = date_worker(date, daycount)
    
    if date.finde()==0:
        return date.date
    else:
        r = date.numdays + date.finde()
        return days_as_date_worker(r, daycount).date_tuple
    
def daysbetween(date1, date2, daycount='Actual/Actual'):
    
    val1 = date_worker(date1, daycount).numdays
    val2 = date_worker(date2, daycount).numdays
    
    return abs(val1-val2)

def order_dates(lista_fechas, daycount='Actual/Actual'):
    
    for i in range(0, len(lista_fechas)):
        lista_fechas[i] = date_worker(lista_fechas[i], daycount).numdays
    lista_fechas.sort()
    for i in range(0, len(lista_fechas)):
        lista_fechas[i] = days_as_date_worker(lista_fechas[i], daycount).date_tuple
    return lista_fechas

def tir_degreefinder(fechas, annualfreq, daycount='Actual/Actual'):
    
    dif = []
    pv = fechas[0]
    
    for k in range(0, len(fechas)):
        dif.append(daysbetween(pv, fechas[k], daycount))
    
    for k in range(1, len(dif)):
        
        obj = date_worker(fechas[k], daycount)
        if obj.es_bisiesto(obj.date[2])==0:
            f = 365
        else:
            f = 366
        dif[k] = dif[k]/f #// annualfreq)
    
    degrees = [(-1)*k for k in dif]
    print(degrees)
    return degrees

def tirevaluator(x, cashflows, degrees):
    
    L = []
    for k in range(0, len(cashflows)):
        L.append((x**degrees[k])*cashflows[k])
    return sum(L)
        

    
    
        

#%%


class GRSS_Bond:
    
    def __init__(self, chars=dict()):
        
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
        self.GIVEN_dirty_price = chars['dirty_price']
        self.GIVEN_clean_price = chars['clean_price']
        
        
        self.settlement_date = self.GabiSetDate()
        self.cashflow_dates = self.cashflow_dates()
        self.cashflows_noset = self.cashflows_noset()
        self.coupon_pmts = self.coupon_payments()
        self.amorts_flows = self.amorts_flows()
        self.cashflows_list = self.cashflows_list()
        self.accrued_interest = self.Accrued_Interest_Func()
        self.clean_price = self.cleanprice()
        
    
    
    
    def GabiSetDate(self):
        
        daynum = date_worker(self.today, self.daycount).numdays
        
        business_days = 0
        
        while business_days<self.Settlement_plus:
            date = days_as_date_worker(daynum, self.daycount).date_tuple
            date_ff = date_worker(date, self.daycount)
            if date_ff.finde()==0:
                business_days+=1
            else:
                pass
            daynum += 1
        
        fecha_dev = date_worker(days_as_date_worker(daynum, self.daycount).date_tuple, self.daycount)
        if not fecha_dev.finde()==0:
            daynum += fecha_dev.finde()
        fecha_dev = date_worker(days_as_date_worker(daynum, self.daycount).date_tuple, self.daycount)
        
        
        return fecha_dev.date
        
            
    def cashflow_dates(self):
        
        
        purchase_dgb = date_worker(self.today, self.daycount).numdays
        mat_as_dgb = date_worker(self.maturity, self.daycount).numdays
        set_as_dgb = date_worker(self.settlement_date, self.daycount).numdays
        issue_as_dgb = date_worker(self.issue_date, self.daycount).numdays
        
        #Vamos a asumir que HOY es posterior al issue date
        
        if purchase_dgb>issue_as_dgb:
        #if True:
            
            fechas_relevantes = [self.today]
            
            fecha_its = mat_as_dgb
            fechas_cupones_al_reves = []
            while fecha_its>purchase_dgb:
                
                en_tupla = days_as_date_worker(fecha_its, self.daycount).date_tuple
                pago_anterior = add2date(en_tupla, 0, (12//self.coupon_freq), 0, self.daycount, operation='sub')
                fechas_cupones_al_reves.append(pago_anterior)
                
                fecha_its = date_worker(pago_anterior, self.daycount).numdays
            fechas_cupones_al_reves.reverse()
            for fecha in fechas_cupones_al_reves:
                fechas_relevantes.append(fecha)
            fechas_relevantes.append(self.maturity)
            
            fechass = [self.today]
            for i in range(1, len(fechas_relevantes)):
                
                if date_worker(fechas_relevantes[i], self.daycount).numdays > set_as_dgb:
                    fechass.append(fechas_relevantes[i])

        return fechass
    
    def cashflows_noset(self):
        
        purchase_dgb = date_worker(self.today, self.daycount).numdays
        mat_as_dgb = date_worker(self.maturity, self.daycount).numdays
        set_as_dgb = date_worker(self.settlement_date, self.daycount).numdays
        issue_as_dgb = date_worker(self.issue_date, self.daycount).numdays
        
        #Vamos a asumir que HOY es posterior al issue date
        
        if purchase_dgb>issue_as_dgb:
        #if True:
            
            fechas_relevantes = [self.today]
            
            fecha_its = mat_as_dgb
            fechas_cupones_al_reves = []
            while fecha_its>purchase_dgb:
                
                en_tupla = days_as_date_worker(fecha_its, self.daycount).date_tuple
                pago_anterior = add2date(en_tupla, 0, (12//self.coupon_freq), 0, self.daycount, operation='sub')
                fechas_cupones_al_reves.append(pago_anterior)
                
                fecha_its = date_worker(pago_anterior, self.daycount).numdays
            fechas_cupones_al_reves.reverse()
            for fecha in fechas_cupones_al_reves:
                fechas_relevantes.append(fecha)
            fechas_relevantes.append(self.maturity)
            
            for i in range(1, len(fechas_relevantes)-1):
                
                if date_worker(fechas_relevantes[i], self.daycount).numdays<set_as_dgb:
                    fechas_relevantes.remove(fechas_relevantes[i])
            
        return fechas_relevantes
        
    
    def coupon_payments(self):
        
        pmts = [0]
        if len(self.coupon_rates)==1:
            coupon_rate = self.coupon_rates[0]
            for i in range(1, len(self.cashflow_dates)):
                pmts.append(self.face_value*(coupon_rate/self.coupon_freq))
            return pmts
        else:
            #En caso de tener mas de una tasa cupon REVISAR CODIGO
            for i in range(1, len(self.cashflow_dates)):
                pmts.append(self.face_value*(self.coupon_rates[i-1]/self.coupon_freq))
            return pmts
    
    def amorts_flows(self):
        flows = []
        if self.Type=='bullet':
            for i in range(0, len(self.cashflow_dates)):
                flows.append(0)
            flows[-1] = self.face_value
        return flows

    def cashflows_list(self):
        
        if self.cashflow_dates[0]==self.today:
            L = []
            for i in range(0, len(self.coupon_pmts)):
                L.append(self.coupon_pmts[i])
            L[0] = -self.GIVEN_dirty_price
            L[-1] = L[-1]+self.face_value
            return L
        elif self.cashflow_dates[0]==self.issue_date:
            L = []
            for i in self.coupon_payments:
                L.append(i)
            L[-1] = L[-1]+self.face_value
            return L
            
            
    
        
    def cashflow_table(self):
        
        import tabulate as tb
        
        dic = {'Fecha': self.cashflow_dates,
                             'Cash Flow': self.cashflows_list,
                            'Interest': self.coupon_pmts,
                            'Amort': self.amorts_flows,
                            }
        
        tabla = tb.tabulate(dic, headers= dic.keys())
        print(tabla)
    
    def Accrued_Interest_Func(self):
        
        lista = self.cashflows_noset.copy()
        lista.remove(self.today)
        if self.Accrued_Interest_Date not in lista:
            lista.append(self.Accrued_Interest_Date)
        if self.settlement_date not in lista:
            lista.append(self.settlement_date)
        lista = order_dates(lista, self.daycount)
        #print(lista)
        
        k = lista.index(self.Accrued_Interest_Date)
        #print(f"{k} es k")
        total_dias = daysbetween(lista[k-1], lista[k+1], self.daycount)
        dias_pasaron = daysbetween(lista[k-1], lista[k], self.daycount)
        
        indice_cupon = self.cashflows_noset.index(lista[k+1])
        #print(f"el indice cupon es {indice_cupon}")
        cupon = self.coupon_pmts[indice_cupon]
        
        if dias_pasaron<total_dias:
            AI = cupon * (dias_pasaron/total_dias)
        else:
            AI = cupon * (total_dias/dias_pasaron)
        
        print("        Accrued Interest Data      ")
        print(f"Last payment date: {lista[k-1]}")
        print(f"Next payment date: {lista[k+1]}")
        print(f"Days elapsed in current period: {dias_pasaron}")
        print(f"Total days in current period: {total_dias}")
        print(f"AI: ${AI}")
        
        return AI
    
    def TIR(self, given_dirty=True):
        
        #degrees = tir_degreefinder(self.cashflow_dates, self.coupon_freq, self.daycount)
        
        if given_dirty==True:
            lista = self.cashflows_list
            lista[0] = -self.GIVEN_dirty_price
            rta = IRR13(cashflow13(lista))
            #rta = RootFinderTIR(lista, degrees).BS()
        
            return ((1+rta)**self.coupon_freq)-1
        else:
            lista = self.cashflows_list
            lista[0] = -(self.GIVEN_clean_price + self.accrued_interest)
            rta = IRR13(cashflow13(lista))
            return ((1+rta)**self.coupon_freq)-1
        
    
    def cleanprice(self):
        cleanprice = self.GIVEN_dirty_price - self.accrued_interest
        #print("Clean Price: $", cleanPrice)
        return cleanprice
    
    

        
specs = dict({'issue_date': (4, 10, 2001),
              'today': (4, 12, 2001),
              'maturity': (5, 6, 2004),
              'coupon_rates': [0.08],
              'coupon_dates': [(5, 6, 2000)],
              'coupon_freq': 2,
              'first_coupon': (5, 12, 2000),
              'irregular_first_coupon': False,
              'amort_percentage': [1.0],
              'amort_dates': [(5, 6, 2004)],
              'face_value': 1000,
              'daycount': 'Actual/Actual',
              'Settlement_plus': 2, 
              'Type': 'bullet',
              'Accrued_Interest_Date': (6, 12, 2001),
              'dirty_price': 1074.57,
              'clean_price': 1074.57})

bono = GRSS_Bond(specs)
print(bono.cashflow_dates)
bono.cashflow_table()
print(bono.amorts_flows)
bono.Accrued_Interest_Func()
print(bono.TIR(False))
print(bono.clean_price)
#print(tir_degreefinder(bono.cashflow_dates, bono.coupon_freq, bono.daycount))