SHOW DATABASES;

CREATE DATABASE dbMatricula;

USE dbMatricula;

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

INSERT INTO APODERADO (CODAPOD, DOCINDAPOD, NOMAPOD, APEAPOD, CELAPOD, DIRAPOD, PROAPOD, GMAAPOD) VALUES
('0010', '75254526', 'Maria', 'Ramos', '988665789', 'avenida 02', 'Cañete', 'maria@gmail.com');

INSERT INTO APODERADO (CODAPOD, DOCINDAPOD, NOMAPOD, APEAPOD, CELAPOD, DIRAPOD, PROAPOD, GMAAPOD) VALUES
('0012', '76872398', 'Juan', 'Sanchez', '980123666', 'avenida las flores ', 'Nazca', 'Juan@gmail.com');

INSERT INTO APODERADO (CODAPOD, DOCINDAPOD, NOMAPOD, APEAPOD, CELAPOD, DIRAPOD, PROAPOD, GMAAPOD) VALUES
('0014', '74323232', 'Jonathan', 'Rojas', '987989797', 'avenida manzanilla', 'Cañete', 'Jonathan@gmail.com');

INSERT INTO APODERADO (CODAPOD, DOCINDAPOD, NOMAPOD, APEAPOD, CELAPOD, DIRAPOD, PROAPOD, GMAAPOD) VALUES
('0016', '75342323', 'Livia', 'Canales', '982367432', 'las casuarinas', 'Cañete', 'Livia@gmail.com');

INSERT INTO APODERADO (CODAPOD, DOCINDAPOD, NOMAPOD, APEAPOD, CELAPOD, DIRAPOD, PROAPOD, GMAAPOD) VALUES
('0018', '75235463', 'David', 'Sandoval', '988665789', 'avenida los tulipanes', 'Cañete', 'David@gmail.com');

INSERT INTO APODERADO (CODAPOD, DOCINDAPOD, NOMAPOD, APEAPOD, CELAPOD, DIRAPOD, PROAPOD, GMAAPOD) VALUES
('0020', '75253789', 'Chritina', 'Rodriguez', '986788678', 'fabrica union', 'Cañete', 'Christina@gmail.com');

INSERT INTO APODERADO (CODAPOD, DOCINDAPOD, NOMAPOD, APEAPOD, CELAPOD, DIRAPOD, PROAPOD, GMAAPOD) VALUES
('0022', '78989809', 'Jovana', 'Barrios', '978797878', 'avenida gamarra', 'Cañete', 'Jovana@gmail.com');

INSERT INTO APODERADO (CODAPOD, DOCINDAPOD, NOMAPOD, APEAPOD, CELAPOD, DIRAPOD, PROAPOD, GMAAPOD) VALUES
('0024', '76353454', 'Jesus', 'Luyo', '967647577', 'avenida las margaritas', 'Cañete', 'Jesus@gmail.com');

INSERT INTO APODERADO (CODAPOD, DOCINDAPOD, NOMAPOD, APEAPOD, CELAPOD, DIRAPOD, PROAPOD, GMAAPOD) VALUES
('0026', '78789866', 'Marcelino', 'Gonzales', '9876868798', 'avenida tacna', 'Cañete', 'Marcelino@gmail.com');

INSERT INTO APODERADO (CODAPOD, DOCINDAPOD, NOMAPOD, APEAPOD, CELAPOD, DIRAPOD, PROAPOD, GMAAPOD) VALUES
('0028', '76769025', 'Javier', 'Quinto', '982343278', 'avenida herbay', 'Cañete', 'Javiar@gmail.com');

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

INSERT INTO ESTUDIANTES (CODEST, DOCINDEST, NOMEST, APEEST, CELEST, DIREST, PROEST, GMAEST) VALUES
('000010', '74323232', 'Jonathan', 'RojaN', '986787687', 'avenida TACNA', 'Cañete', 'Jonathan@gmail.com');

INSERT INTO ESTUDIANTES (CODEST, DOCINDEST, NOMEST, APEEST, CELEST, DIREST, PROEST, GMAEST) VALUES
('000012', '74234233', 'Maria', 'Rosas', '988676567', 'las casuarinas', 'Cañete', 'Maria@gmail.com');

INSERT INTO ESTUDIANTES (CODEST, DOCINDEST, NOMEST, APEEST, CELEST, DIREST, PROEST, GMAEST) VALUES
('000014', '75342323', 'Miguel', 'Canales', '982367432', 'libertad', 'Cañete', 'Miguel@gmail.com');

INSERT INTO ESTUDIANTES (CODEST, DOCINDEST, NOMEST, APEEST, CELEST, DIREST, PROEST, GMAEST) VALUES
('000016', '75342323', 'Mario', 'Gonzales', '988665789', 'union casuarinas', 'Cañete', 'Mario@gmail.com');

INSERT INTO ESTUDIANTES (CODEST, DOCINDEST, NOMEST, APEEST, CELEST, DIREST, PROEST, GMAEST) VALUES
('000018', '75989809', 'Patricia', 'Sandoval', '988665797', 'los tulipanes', 'Cañete', 'Patricia@gmail.com');

INSERT INTO ESTUDIANTES (CODEST, DOCINDEST, NOMEST, APEEST, CELEST, DIREST, PROEST, GMAEST) VALUES
('000020', '75342323', 'Anghela', 'Barrios', '988666787', 'valle las rosas', 'Cañete', 'Anghela@gmail.com');

INSERT INTO ESTUDIANTES (CODEST, DOCINDEST, NOMEST, APEEST, CELEST, DIREST, PROEST, GMAEST) VALUES
('000022', '75349868', 'Antonio', 'Gonzales', '988662324', 'tacna', 'Cañete', 'Antonio@gmail.com');

INSERT INTO ESTUDIANTES (CODEST, DOCINDEST, NOMEST, APEEST, CELEST, DIREST, PROEST, GMAEST) VALUES
('000024', '75342412', 'Maximo', 'Camacho', '988663565', 'libertad', 'Cañete', 'Maximo@gmail.com');

INSERT INTO ESTUDIANTES (CODEST, DOCINDEST, NOMEST, APEEST, CELEST, DIREST, PROEST, GMAEST) VALUES
('000026', '75341278', 'Ismael', 'Navarrete', '988662357', 'lindas rosas', 'ica', 'Ismael@gmail.com');

INSERT INTO ESTUDIANTES (CODEST, DOCINDEST, NOMEST, APEEST, CELEST, DIREST, PROEST, GMAEST) VALUES
('000028', '75342389', 'Gael', 'Cama', '988665643', 'arco de san agustin', 'Cañete', 'Gael@gmail.com');

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

INSERT INTO MATRICULA (CODMAT, FECHORMAT, COSMAT, NUMVACMAT, CODESTU, GRAMAT, SECMAT, CODSEC) VALUES
('000010', '2022/08/02', '250$', '06', '00010', 'I/P/S', 'A/B/C', '00010');

INSERT INTO MATRICULA (CODMAT, FECHORMAT, COSMAT, NUMVACMAT, CODESTU, GRAMAT, SECMAT, CODSEC) VALUES
('000012', '2022/08/09', '250$', '06', '00012', 'I/P/S', 'A/B/C', '00012');

INSERT INTO MATRICULA (CODMAT, FECHORMAT, COSMAT, NUMVACMAT, CODESTU, GRAMAT, SECMAT, CODSEC) VALUES
('000014', '2022/08/10', '250$', '06', '00014', 'I/P/S', 'A/B/C', '00014');

INSERT INTO MATRICULA (CODMAT, FECHORMAT, COSMAT, NUMVACMAT, CODESTU, GRAMAT, SECMAT, CODSEC) VALUES
('000016', '2022/09/15', '250$', '06', '00016', 'I/P/S', 'A/B/C', '00016');

INSERT INTO MATRICULA (CODMAT, FECHORMAT, COSMAT, NUMVACMAT, CODESTU, GRAMAT, SECMAT, CODSEC) VALUES
('000018', '2022/09/20', '250$', '06', '00018', 'I/P/S', 'A/B/C', '00018');

INSERT INTO MATRICULA (CODMAT, FECHORMAT, COSMAT, NUMVACMAT, CODESTU, GRAMAT, SECMAT, CODSEC) VALUES
('000020', '2022/10/20', '250$', '06', '00020', 'I/P/S', 'A/B/C', '00020');

INSERT INTO MATRICULA (CODMAT, FECHORMAT, COSMAT, NUMVACMAT, CODESTU, GRAMAT, SECMAT, CODSEC) VALUES
('000022', '2022/10/22', '250$', '06', '00022', 'I/P/S', 'A/B/C', '00022');

INSERT INTO MATRICULA (CODMAT, FECHORMAT, COSMAT, NUMVACMAT, CODESTU, GRAMAT, SECMAT, CODSEC) VALUES
('000024', '2022/11/20', '250$', '06', '00024', 'I/P/S', 'A/B/C', '00024');

INSERT INTO MATRICULA (CODMAT, FECHORMAT, COSMAT, NUMVACMAT, CODESTU, GRAMAT, SECMAT, CODSEC) VALUES
('000026', '2022/11/26', '250$', '06', '00026', 'I/P/S', 'A/B/C', '00026');

INSERT INTO MATRICULA (CODMAT, FECHORMAT, COSMAT, NUMVACMAT, CODESTU, GRAMAT, SECMAT, CODSEC) VALUES
('000028', '2022/11/29', '250$', '06', '00028', 'I/P/S', 'A/B/C', '00028');

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

INSERT INTO SECRETARIO (CODSEC, NOMSEC, APESEC, CELSEC, GMASEC, RESSEC, OBSSEC, ORGSEC) VALUES
('000010', 'Maria', 'Lopez', '989898989', 'Maria@gmail.com', 'Encargada', '000010', 'Institucion Educacion');

INSERT INTO SECRETARIO (CODSEC, NOMSEC, APESEC, CELSEC, GMASEC, RESSEC, OBSSEC, ORGSEC) VALUES
('000012', 'Juana', 'Barrios', '989899836', 'Juana@gmail.com', 'Encargada', '000012', 'Institucion Educacion');

INSERT INTO SECRETARIO (CODSEC, NOMSEC, APESEC, CELSEC, GMASEC, RESSEC, OBSSEC, ORGSEC) VALUES
('000014', 'Livia', 'Canales', '989898623', 'Livia@gmail.com', 'Encargada', '000014', 'Institucion Educacion');

INSERT INTO SECRETARIO (CODSEC, NOMSEC, APESEC, CELSEC, GMASEC, RESSEC, OBSSEC, ORGSEC) VALUES
('000016', 'David', 'Sandoval', '989899836', 'David@gmail.com', 'Encargado', '000016', 'Institucion Educacion');

INSERT INTO SECRETARIO (CODSEC, NOMSEC, APESEC, CELSEC, GMASEC, RESSEC, OBSSEC, ORGSEC) VALUES
('000018', 'Marcelino', 'Ramos', '989894566', 'Marcelino@gmail.com', 'Encargado', '000018', 'Institucion Educacion');

INSERT INTO SECRETARIO (CODSEC, NOMSEC, APESEC, CELSEC, GMASEC, RESSEC, OBSSEC, ORGSEC) VALUES
('000020', 'Ismael', 'Sanchez', '989899836', 'Ismael@gmail.com', 'Encargado', '000020', 'Institucion Educacion');

INSERT INTO SECRETARIO (CODSEC, NOMSEC, APESEC, CELSEC, GMASEC, RESSEC, OBSSEC, ORGSEC) VALUES
('000022', 'Hernan', 'Ramon', '989899857', 'Hernan@gmail.com', 'Encargado', '000022', 'Institucion Educacion');

INSERT INTO SECRETARIO (CODSEC, NOMSEC, APESEC, CELSEC, GMASEC, RESSEC, OBSSEC, ORGSEC) VALUES
('000024', 'Susana', 'Camacho', '989899253', 'Susana@gmail.com', 'Encargada', '000024', 'Institucion Educacion');

INSERT INTO SECRETARIO (CODSEC, NOMSEC, APESEC, CELSEC, GMASEC, RESSEC, OBSSEC, ORGSEC) VALUES
('000026', 'Aracely', 'Ramirez', '989899836', 'Aracely@gmail.com', 'Encargada', '000026', 'Institucion Educacion');

INSERT INTO SECRETARIO (CODSEC, NOMSEC, APESEC, CELSEC, GMASEC, RESSEC, OBSSEC, ORGSEC) VALUES
('000028', 'Luis', 'Guzman', '989899836', 'Luis@gmail.com', 'Encargado', '000028', 'Institucion Educacion');

ALTER TABLE APODERADO ADD CONSTRAINT APODERADO_ESTUDIANTES
    FOREIGN KEY (CODEST) REFERENCES ESTUDIANTES (CODEST);

ALTER TABLE ESTUDIANTES ADD CONSTRAINT MATRICULA_ESTUDIANTES
    FOREIGN KEY (CODMAT) REFERENCES MATRICULA (CODMAT);

ALTER TABLE SECRETARIO ADD CONSTRAINT SECRETARIO_APODERADO
    FOREIGN KEY (CODAPOD) REFERENCES APODERADO (CODAPOD);

ALTER TABLE MATRICULA ADD CONSTRAINT SECRETARIO_MATRICULA
    FOREIGN KEY (CODSEC) REFERENCES SECRETARIO (CODSEC);