
--CREACION DE USERS 

CREATE USER AM_proy_invitado IDENTIFIED BY 1234;

CREATE USER AM_proy_admin IDENTIFIED BY 12345678;

--DEFINICION DE LOS ROLES

CREATE ROLE role_admin;
GRANT CREATE ANY TABLE, ALTER ANY TABLE, DROP ANY TABLE TO role_admin;
GRANT SELECT ANY TABLE, INSERT ANY TABLE, UPDATE ANY TABLE, DELETE ANY TABLE  TO role_admin;
GRANT CREATE ANY TRIGGER, ALTER ANY TRIGGER, DROP ANY TRIGGER TO role_admin;
GRANT CREATE ANY SEQUENCE, ALTER ANY SEQUENCE, DROP ANY SEQUENCE TO role_admin;
GRANT SELECT ANY SEQUENCE TO role_admin;
GRANT CREATE ANY INDEX, ALTER ANY INDEX, DROP ANY INDEX TO role_admin;
GRANT CREATE ANY PROCEDURE TO role_admin;

CREATE ROLE role_invitado;
GRANT CREATE SESSION TO role_invitado;

--ASIGNACION DE LOS ROLES

GRANT role_admin TO AM_proy_admin;
GRANT role_invitado TO AM_proy_invitado;

