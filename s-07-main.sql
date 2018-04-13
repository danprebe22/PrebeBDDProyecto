-- Inicializar la variable de ambiente NLS_LANG
-- antes de ejecutar este script para que los
-- caracteres como ñ, acentos se vean bien
-- ejecutar: export NLS_LANG=American_America.UTF8

Prompt Proyecto BDD prebes 22 (DANIEL) 7 (SERJ)

connect sys/system as sysdba


--CREA USUARIOS, ROLES Y ASIGNACIONES
@s-01-usuarios.sql

Prompt Creando objetos. . .
@s-02-entidades.sql 

Prompt Carga de datos . . .

--SECUENCIAS
@s-05-secuencias.sql
--TABLAS TEMPORALES
--@s-03-tablas-temporales.sql
--CARGA
@s-06-carga-inicial.sql 

Prompt Listo


