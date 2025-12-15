/*
Archivo: 04_indicadores_recuperacion.sql
Descripción: Consultas para cálculo de indicadores de recuperación,
efectividad de cobranza y comportamiento de pago.

Autor: Evelyn H. Alvarez
Fecha: 2025
*/

----- Indicador 1: Saldo Total por estado de obligación
SELECT 
  o.estado_obligacion,
  COUNT(o.id_obligacion) AS total_obligaciones,
  SUM (o.saldo_actual) AS saldo_total,
FROM obligaciones o
GROUP BY o.estado_obligacion;

----- Indicador 2: Recuperación total por clientes
SELECT 
  c.id_cliente,
  c.nombre_completo,
  SUM(p.valor_pago) AS total pagado,
FROM clientes c
JOIN obligaciones o ON c.id_cliente = o.id_cliente
LEFT JOIN pagos p ON o.id_obligacion = p.id_obligacion
GROUP BY c._id_cliente, c.nombre_completo;

------ Indicador 3: Efectividad de recuperación por obligación
SELECT
  o.id_obligacion,
  o.saldo_actual,
  COALESCE(SUM(p.valor_pago), 0) AS total_pagado,
  (COALESCE(SUM(p.valor_pago),0) / o.saldo_actual) * 100 AS porcentaje_recuperacion
FROM obligaciones o
LEFT JOIN pagos p ON o.id_obligaciones = p.id_obligacion
GROUP BY o.id_obligaciones, o.saldo_actual;
