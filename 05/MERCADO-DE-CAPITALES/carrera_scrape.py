#!/usr/bin/env python3
import requests
from bs4 import BeautifulSoup
import json
 
url_eco = "https://gestion.udesa.edu.ar/consultas/plan_carrera?utf8=%E2%9C%93&student_id=107196&commit=Consultar"
url_fin = 'https://gestion.udesa.edu.ar/consultas/plan_carrera?utf8=%E2%9C%93&student_id=125696&commit=Consultar'

def get_subject_data(url):
    login_url = 'https://gestion.udesa.edu.ar/users/sign_in'
    username = 'falopez@udesa.edu.ar'
    password = 'q-A24EkO2K'

    # Log in to the website
    session = requests.Session()

    # Get the login page
    print("Getting login page...")
    response = session.get(login_url, timeout=60)
    soup = BeautifulSoup(response.text, 'html.parser')

    # Extract the CSRF token
    csrf_token = soup.find('meta', {'name': 'csrf-token'})['content']

    # Prepare the payload with the CSRF token, username, and password
    payload = {
        'user[login]': username,
        'user[password]': password,
        'authenticity_token': csrf_token
    }

    # Send the login request
    print("Attempting to log in...")
    response = session.post(login_url, data=payload, timeout=60)

    # Navigate to the student section
    print("Navigating to student section...")
    student_url = 'https://gestion.udesa.edu.ar/menu/student'
    response = session.get(student_url, timeout=60)

    # Check if the login was successful
    if response.status_code == 200 and 'Ingreso al Sistema' not in response.text:
        marks_url = url
        print("Fetching subject data...")
        response = session.get(marks_url, timeout=60)

        # Parse the HTML and extract the required data
        soup = BeautifulSoup(response.text, 'html.parser')
        table = soup.find('table', {'id': 'dataTableNormal'})
        if table is not None:
            tbody = table.find('tbody')
            rows = tbody.find_all('tr')
            subject_data = []
            for row in rows:
                data_elements = row.find_all('td')
                if data_elements:
                    periodo = data_elements[1].text.strip()
                    modulo = data_elements[2].text.strip()

                    materia_link = data_elements[3].find('a')
                    materia = materia_link.text.strip()

                    # Extracting the data-target attribute to get the modal's ID
                    modal_id = materia_link.get('data-target').replace('#', '')
                    modal = soup.find('div', {'id': modal_id})

                    if modal:
                        title = modal.find('h4', {'class': 'modal-title'}).text.strip()

                        resumen = modal.find('div', {'class': 'modal-body'}).find_all('p')[0].text.strip()
                        ultima_cursada = modal.find('div', {'class': 'modal-body'}).find_all('p')[1].text.strip()
                        profesores = modal.find('div', {'class': 'modal-body'}).find_all('p')[2].text.strip()
                        nota = modal.find('div', {'class': 'modal-body'}).find_all('p')[3].text.strip()
                        correlativas = modal.find('div', {'class': 'modal-body'}).find_all('p')[4].text.strip()

                        subject_data.append({
                            "periodo": periodo,
                            "modulo": modulo,
                            "materia": materia,
                            "title": title,
                            "resumen": resumen,
                            "ultima_cursada": ultima_cursada,
                            "profesores": profesores,
                            "nota": nota,
                            "correlativas": correlativas
                        })
                    else:
                        print(f"Modal not found for materia: {materia}")
            return subject_data
        else:
            return "Could not find the data table"
    else:
        return "Login failed"

# Uncomment the line below for testing purposes
# print(get_subject_data())
def transform_to_dict(data):
    new_data = {}
    for item in data:
        key = item['materia']
        value = {k: v for k, v in item.items() if k != 'materia'}
        new_data[key] = value
    return new_data


compeco = transform_to_dict(get_subject_data(url_eco))
compfin = transform_to_dict(get_subject_data(url_fin))
compfin.update(compeco)
import pandas as pd
# df = pd.DataFrame(compeco)
# df.to_excel("compeco.xlsx", index=False,engine='openpyxl')
# df = pd.DataFrame(compfin)
# df.to_excel("compfin.xlsx", index=False, engine='openpyxl')
df = pd.DataFrame(compfin)
df.to_excel("completo.xlsx", index=False, engine='openpyxl')
data = compfin

# Writing to a JSON file
with open("completo.json", "w") as outfile:
    json.dump(data, outfile)