-- ---------------- PLANETA_RESIDENCIA ----------------
INSERT INTO planeta_residencia (nombre_planeta) VALUES
('Mercurio'), ('Venus'), ('Tierra'), ('Marte'), ('Júpiter'),
('Saturno'), ('Urano'), ('Neptuno'), ('Plutón'), ('Kepler-22b');

-- ---------------- NAVE ----------------
INSERT INTO nave (modelo_nave) VALUES
('Falcon X'), ('Starship'), ('Orion'), ('Enterprise'), ('Discovery'),
('Galactica'), ('Endeavour'), ('Atlantis'), ('Voyager'), ('Horizon');

-- ---------------- MISION ----------------
INSERT INTO mision (codigo_interplanetario, id_nave, fecha_lanzamiento, horas_duracion, disponible) VALUES
(1,1,'2025-01-10',72,TRUE),
(2,2,'2025-02-15',48,FALSE),
(3,3,'2025-03-20',96,TRUE),
(4,4,'2025-04-05',120,FALSE),
(5,5,'2025-05-12',60,TRUE),
(6,6,'2025-06-18',80,FALSE),
(7,7,'2025-07-22',90,TRUE),
(8,8,'2025-08-30',100,FALSE),
(9,9,'2025-09-15',110,TRUE),
(10,10,'2025-10-01',50,FALSE);

-- ---------------- CARGA ----------------
INSERT INTO carga (id_mision, tipo_carga, descripcion, peso_kgs) VALUES
(1,'Turistica','Pasajeros VIP',500),
(2,'Investigativa','Experimento biológico',300),
(3,'Turistica','Turistas generales',450),
(4,'Investigativa','Equipos de laboratorio',350),
(5,'Turistica','Turistas premium',400),
(6,'Investigativa','Muestras de suelo',200),
(7,'Turistica','Turistas básicos',380),
(8,'Investigativa','Instrumentos de medición',250),
(9,'Turistica','Turistas VIP',420),
(10,'Investigativa','Prototipos robóticos',300);

-- ---------------- EMPRESA_AEG ----------------
INSERT INTO empresa_AEG (nombre_empresa) VALUES
('AEG Space'), ('Galactic Corp'), ('Stellar Ventures'), ('NovaTech'), ('Cosmo Industries'),
('Orbital Ltd'), ('Astro Enterprises'), ('Lunar Labs'), ('Mars Inc'), ('SpaceXplore');

-- ---------------- MEDIO ----------------
INSERT INTO medio (referencia) VALUES
('correo1@example.com'),('correo2@example.com'),('telefono1'),('telefono2'),('correo3@example.com'),
('correo4@example.com'),('telefono3'),('telefono4'),('correo5@example.com'),('correo6@example.com');

-- ---------------- USUARIO ----------------
INSERT INTO usuario (id_medio, firs_name, last_name) VALUES
(1,'Juan','Perez'),(2,'Maria','Lopez'),(3,'Carlos','Gomez'),(4,'Ana','Martinez'),(5,'Luis','Diaz'),
(6,'Sofia','Hernandez'),(7,'Pedro','Ramirez'),(8,'Lucia','Torres'),(9,'Diego','Vargas'),(10,'Camila','Santos');

-- ---------------- TRIPULACION ----------------
INSERT INTO tripulacion (id_usuario, oficio, salario) VALUES
(1,'Piloto',8000),(2,'Ingeniero',7500),(3,'Medico',7000),(4,'Piloto',8200),(5,'Cientifico',7300),
(6,'Ingeniero',7600),(7,'Cabo',6000),(8,'Piloto',8100),(9,'Cientifico',7400),(10,'Ingeniero',7700);

-- ---------------- CLIENTE ----------------
INSERT INTO cliente (id_usuario, tipo, nacionalidad) VALUES
(1,'Turista','Colombiana'),(2,'Cientifico','Argentina'),(3,'Turista','Mexicana'),(4,'Cientifico','Chilena'),(5,'Turista','Peruana'),
(6,'Cientifico','Española'),(7,'Turista','Italiana'),(8,'Cientifico','Francesa'),(9,'Turista','Brasileña'),(10,'Cientifico','Canadiense');

-- ---------------- MENSAJE ----------------
INSERT INTO mensaje (contenido_msj) VALUES
('Bienvenido a la misión'),('Actualización de vuelo'),('Recordatorio de reserva'),('Informe de experimento'),
('Mensaje de tripulación'),('Alerta de sistema'),('Confirmación de asiento'),('Notificación de lanzamiento'),
('Instrucciones de seguridad'),('Reporte diario');

-- ---------------- NOTIFICACION ----------------
INSERT INTO notificacion (id_usuario, id_medio, id_mensaje, fecha_envio, estado_n) VALUES
(1,1,1,'2025-01-05','Enviada'),
(2,2,2,'2025-02-10','Retenida'),
(3,3,3,'2025-03-15','Enviada'),
(4,4,4,'2025-04-01','Retenida'),
(5,5,5,'2025-05-10','Enviada'),
(6,6,6,'2025-06-15','Retenida'),
(7,7,7,'2025-07-20','Enviada'),
(8,8,8,'2025-08-25','Retenida'),
(9,9,9,'2025-09-10','Enviada'),
(10,10,10,'2025-10-05','Retenida');

-- ---------------- RESERVA ----------------
INSERT INTO reserva (id_usuario, id_mision, fecha_reserva, silla_asignada, estado) VALUES
(1,1,'2025-01-01',1,'confirmada'),
(2,2,'2025-02-05',2,'pendiente'),
(3,3,'2025-03-10',3,'confirmada'),
(4,4,'2025-04-02',4,'pendiente'),
(5,5,'2025-05-08',5,'confirmada'),
(6,6,'2025-06-12',6,'pendiente'),
(7,7,'2025-07-18',7,'confirmada'),
(8,8,'2025-08-22',8,'pendiente'),
(9,9,'2025-09-07',9,'confirmada'),
(10,10,'2025-10-01',10,'pendiente');

-- ---------------- REGISTRO ----------------
INSERT INTO registro (id_usuario, id_empresa, condicion_especial) VALUES
(1,1,'requiere traje presurizado avanzado'),
(2,2,'sensibilidad gravitacional'),
(3,3,'entrenamiento EVA limitado'),
(4,4,'requiere traje presurizado avanzado'),
(5,5,'sensibilidad gravitacional'),
(6,6,'entrenamiento EVA limitado'),
(7,7,'requiere traje presurizado avanzado'),
(8,7,'sensibilidad gravitacional'),
(9,8,'entrenamiento EVA limitado'),
(10,9,'requiere traje presurizado avanzado');
