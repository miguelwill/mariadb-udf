# Mariadb-udf-sys
 mariadb 10.4 with UDF_sys, A UDF library with functions to interact with the operating system


 # Description
 based on the official image for mariadb at https://hub.docker.com/_/mariadb
 gcc, make, vim and net-tools package was added for review and module build

 # Module UDF_sys
 UDF_sys module compiled at image creation time and copied in mariadb plugin path

 # Functions
 UDF functions loaded at database initialization
 files uploaded from the repository https://github.com/mysqludf/lib_mysqludf_sys
 Updated Makefile with plugin path in mariadb 10.4 working on the official image.

 # Configuration
 as it is based on the official mariadb image, it supports all the configurations that the mariadb image supports:  https://hub.docker.com/_/mariadb
