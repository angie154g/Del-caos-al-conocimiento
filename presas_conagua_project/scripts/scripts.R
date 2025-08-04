#Actividad transversal "Del caos al conocimiento"
#cargar paquetes y librerias
install.packages("readr")
install.packages("here")
library(readr)
library(readxl)
library(here)
library(dplyr)

#1.  Crear un proyecto en RStudio con estructura profesional 
    # (/data/raw, /scripts, /outputs, /reports)
#crear proyecto
# crear carpeta datos
# crear carpeta output
# crear carpeta scripts
# crear carpeta reports

#2. Importar al menos un archivo local (CSV o Excel) y 
    #uno desde internet (scraping o URL directa).
#archivo local
datos_excel <- read_excel(here("data", "raw", "diccionario-de-datos.xlsx"), sheet = "cdmx-2017", 
                          range = "A1:N12")

#desde internet
download.file("https://datos.cdmx.gob.mx/dataset/7c7a3ce8-0b06-43d7-be6d-5c85618fc834/resource/7a2e768a-d58a-4b33-9bab-7306c17dd25e/download/diccionario-de-datos-10.csv", 
              destfile = here("data", "raw", "diccionario-de-datos-10.csv"))
datos_web <- read_csv(here("data", "raw", "diccionario-de-datos-10.csv"), fileEncoding = "UTF-8")
View(datos_web)


# 3. Documentar la fuente, el formato y la relevancia de cada dataset.
# 4. Guardar los scripts en scripts/import.R/ y escribir una breve 
     #descripción en un README.md.
#crear archivo readme
