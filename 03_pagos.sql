/*
Archivo: 03_pagos.sql
Descripción: Registro de pagos realizados por los clientes
sobre sus obligaciones financieras. Permite analizar
comportamiento de pago, recaudo y efectividad de cobranza.

Autor: Evelyn H. Alvarez
Fecha: 2025
*/

CREATE TABLE pagos (
  id_pago INT PRIMARY KEY,
  id_obligacion INT NOT NULL,
  valor_pago DECIMAL (15,2),
  fecha_pago DATE,
  medio_pago VARCHAR (100),
  estado_pago VARCHAR (50) NOT NULL,
  FOREIGN KEY (id_obligacion) REFERENCES obligaciones (id_obligacion)
);
