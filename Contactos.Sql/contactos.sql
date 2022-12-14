/* Crear base de datos dbContactos */
CREATE DATABASE dbContactos;

/* Poner en uso la base de datos */
USE dbContactos;

/* Crear tabla Pedido */
CREATE TABLE CLIENTE
(
     IDCLI int AUTO_INCREMENT,
     USERCLI varchar(80), /*usuario*/
     EMAICLI varchar(80), /*email*/
     CELCLI char(9), /*numero de celular*/
     INFOCLI varchar(80), /*informacion */
     MSGCLI  varchar(250), /*mensaje*/
     PRIMARY KEY (IDCLI)
);

/* Insertar registros */
INSERT INTO CLIENTE
(USERCLI, EMAICLI, CELCLI, INFOCLI, MSGCLI)
VALUES
('José Ramírez', 'jose.ramirez@outlook.com', '974815236', 'matricula', 'quisiera saber el costo de las matricula'),
('Ana Guerra Solano', 'ana.guerra@gmail.com', '981526321', 'matricula', 'todavia sobran vacantes?');

/* Listar los registros de la tabla PEDIDO */
SELECT * FROM CLIENTE;