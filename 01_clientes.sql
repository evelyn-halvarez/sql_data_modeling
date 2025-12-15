/*
Archivo: 01_clientes.sql
Descripción: Creación de la tabla de clientes.
Incluye información básica, segmentación y estado del cliente
para análisis de cobranza.

Autor: Evelyn H. Alvarez
fecha: 2025
*/

CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY,
  tipo_documento VARCHAR (5),
  numero_documento VARCHAR (20),
  nombre_completo VARCHAR (150),
  fecha_nacimiento DATE,
  correo_electronico VARCHAR (150),
  telefono VARCHAR (20),
  ciudad VARCHAR (100),
  fecha_creacion DATE;
);
