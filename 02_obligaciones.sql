/*
Archivo: 02_obligaciones.sql
Descripcion: Definición de la tabla de obligaciones financieras.
Relaciona clientes con sus productos , saldos, estados de mora
y fechas clave para procesos de cobranza.

Autor: Evelyn H. Alvarez
Fecha: 2025
*/

CREATE TABLE obligaciones (
  id_obligacion INT PRIMARY KEY,
  id_cliente INT NOT NULL,
  tipo_producto VARCHAR (50),
  saldo_Actual DECIMAL (15,2),
  estado_obligacion VARCHAR (30),
  fecha_vencimiento DATE,
  dias_mora INT,
  FOREIGN KEY (id_cliente) REFERENCES cientes (id_clientes)
);
  
