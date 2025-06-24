setwd(dirname(getActiveDocumentContext()$path))
getwd()
censo <- read_excel("Datos Ejercitacion 9.xlsx")
edades <- censo$Edad
hist(edades)

