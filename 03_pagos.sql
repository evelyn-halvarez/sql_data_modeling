------- Tabla: Pagos
------- Descripción: Pagos realizados por los clientes sobre
------- sus obligaciones financieras

CREATE TABLE pagos (
  id_pago INT PRIMARY KEY,
  id_obligacion INT NOT NULL,
  valor_pago DECIMAL (15,2),
  fecha_pago DATE,
  canal_pago VARCHAR (50),
  FOREIGN KEY (id_obligacion) REFERENCES obligaciones (id_obligacion)
);
