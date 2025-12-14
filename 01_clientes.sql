------ Tabla: clientes
------ Descripción: Información base de clientes para
------ procesos de cobranzas y analítica
------ Autor: Evelyn H. Alvarez

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
