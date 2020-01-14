# Mariadb-udf
 mariadb 10.4 with UDF plugin 


 # Description
 based on the official image for mariadb at https://hub.docker.com/_/mariadb
 gcc, make, vim and net-tools package was added for review

 # Module UDF
 UDF module compiled at image creation time and copied in mariadb plugin path

 #Funciones
 funciones UDF cargadas en la inicialización de la base de datos
 archivos cargados desde el repositorio https://github.com/mysqludf/lib_mysqludf_sys
 Makefile actualizado con ruta de plugins en mariadb 10.4 trabajando en la imagen oficial.

 # Configuration
 as it is based on the official mariadb image, it supports all the configurations that the mariadb image supports:  https://hub.docker.com/_/mariadb
