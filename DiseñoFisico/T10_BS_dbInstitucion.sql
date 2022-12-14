SHOW DATABASES;

CREATE DATABASE dbInstitucion;

USE dbInstitucion;

CREATE TABLE APODERADO (
    CODAPOD char(6) NOT NULL COMMENT 'Contiene el Código del Apoderado',
    DOCINDAPOD char(8) NOT NULL COMMENT 'Contiene los datos de la persona',
    NOMAPOD varchar(60) NOT NULL COMMENT 'Contiene el nombre de la persona',
    APEAPOD varchar(60) NOT NULL COMMENT 'Contiene el apellido de la persona',
    CELAPOD char(9) NOT NULL COMMENT 'Contiene el número de comunicación de la persona',
    DIRAPOD varchar(80) NOT NULL COMMENT 'Contiene la direcion de la persona',
    PROAPOD varchar(60) NOT NULL COMMENT 'Contiene en que provincia se encuentra',
    GMAAPOD varchar(80) NOT NULL COMMENT 'Contiene el correo electrónico de la persona',
    CODEST char(6) NOT NULL COMMENT 'La identificación de la relación entre el estudiante y el apoderado',
    CONSTRAINT CODAPOD_pk PRIMARY KEY (CODAPOD)
);

CREATE TABLE ESTUDIANTES (
    CODEST char(6) NOT NULL COMMENT 'Contiene el código del estudiante',
    DOCINDEST char(8) NOT NULL COMMENT 'Contiene los documentos del estudiante',
    NOMEST varchar(60) NOT NULL COMMENT 'Contiene el nombre del estudiante',
    APEEST varchar(60) NOT NULL COMMENT 'Contiene el apellido del estudiante',
    CELEST char(9) NOT NULL COMMENT 'Contiene el número de celular del estudiante',
    FECNACEST date NOT NULL COMMENT 'El fecha de nacimiento el estudiante',
    DIREST varchar(70) NOT NULL COMMENT 'Contiene la ubicación del estudiante',
    PROEST varchar(70) NOT NULL COMMENT 'Contiene la provincia del estudiante',
    GMAEST varchar(50) NOT NULL COMMENT 'Contiene el correo electrónico del estudiante',
    CODMAT char(10) NOT NULL COMMENT 'La identificación de la relación entre la matricula y el estudiante',
    CONSTRAINT CODEST_pk PRIMARY KEY (CODEST)
);

CREATE TABLE MATRICULA (
    CODMAT char(10) NOT NULL COMMENT 'Contiene el código de la matrícula',
    FECHORMAT time NOT NULL COMMENT 'Contiene la fecha y hora en que se realizó la matrícula',
    COSMAT varchar(20) NOT NULL COMMENT 'Contiene el costo de la matrícula',
    NUMVACMAT varchar(60) NOT NULL COMMENT 'Contiene el número de la vacante',
    CODESTU char(10) NOT NULL COMMENT 'Contiene el código del estudiante donde está su información personal',
    GRAMAT char(10) NOT NULL COMMENT 'Contiene el grado a donde se le asignara al estudiante',
    SECMAT char(10) NOT NULL COMMENT 'Contiene la sección donde se le asignara al estudiante',
    CODSEC char(6) NOT NULL COMMENT 'La identificación de la relación entre el secretario y la matrícula',
    CONSTRAINT CODMAT_pk PRIMARY KEY (CODMAT)
);

CREATE TABLE SECRETARIO (
    CODSEC char(6) NOT NULL COMMENT 'Contiene el código del secretario',
    NOMSEC varchar(65) NOT NULL COMMENT 'Contiene el nombre del personal',
    APESEC varchar(60) NOT NULL COMMENT 'Contiene el apellido del personal',
    CELSEC char(9) NOT NULL COMMENT 'Contiene el contacto telefonico del personal',
    GMASEC varchar(70) NOT NULL COMMENT 'Contiene el correo electronico del personal',
    RESSEC varchar(50) NOT NULL COMMENT 'El entrega puntual del personal a los padres',
    OBSSEC varchar(60) NOT NULL COMMENT 'La actitud del personal con el cliente',
    ORGSEC varchar(60) NOT NULL COMMENT 'El orden del personal  conteniendo todos los documentos',
    CODAPOD char(6) NOT NULL COMMENT 'La identificación de la relación entre el apoderado y el secretario',
    CONSTRAINT CODSEC_pk PRIMARY KEY (CODSEC)
);

ALTER TABLE APODERADO ADD CONSTRAINT APODERADO_ESTUDIANTES
    FOREIGN KEY (CODEST) REFERENCES ESTUDIANTES (CODEST);
    
ALTER TABLE ESTUDIANTES ADD CONSTRAINT MATRICULA_ESTUDIANTES
    FOREIGN KEY (CODMAT) REFERENCES MATRICULA (CODMAT);

ALTER TABLE SECRETARIO ADD CONSTRAINT SECRETARIO_APODERADO
    FOREIGN KEY (CODAPOD) REFERENCES APODERADO (CODAPOD);

ALTER TABLE MATRICULA ADD CONSTRAINT SECRETARIO_MATRICULA
    FOREIGN KEY (CODSEC) REFERENCES SECRETARIO (CODSEC);