CREATE TABLE planeta_residencia(
    codigo_interplanetario  SERIAL PRIMARY KEY,
    nombre_planeta          VARCHAR(20)
);

CREATE TABLE nave(
    id_nave                 SERIAL PRIMARY KEY,
    modelo_nave             VARCHAR(20)
);

CREATE TYPE mision_tipo AS ENUM('Exitosa', 'En planeacion', 'De regreso');


CREATE TABLE mision(
    id_mision               SERIAL PRIMARY KEY,
    codigo_interplanetario  INT NOT NULL,
    fecha_lanzamiento       DATE,
    horas_duracion          INT,
    estado_mision           mision_tipo NOT NULL,
    FOREIGN KEY codigo_interplanetario 
    REFERENCES planeta_residencia(codigo_interplanetario)

);

CREATE TYPE carga_especial AS ENUM('Turistica', 'Investigativa');



CREATE TABLE carga(
    carga_id                SERIAL PRIMARY KEY,
    id_mision               INT NOT NULL,
    tipo_carga              carga_especial NOT NULL,
    descripcion             VARCHAR(40),
    peso_kgs                INT,
    FOREIGN KEY id_mision REFERENCES mision(id_mision)
);
CREATE TABLE empresa_AEG(
    id_empresa              SERIAL PRIMARY KEY,
    nombre_empresa          VARCHAR(20)
);
CREATE TABLE medio(
    id_medio                SERIAL PRIMARY KEY,
    descripcion_medio       VARCHAR(30)
);

CREATE TABLE usuario(
    id_usuario              SERIAL PRIMARY KEY,
    id_medio                INT NOT NULL,
    firs_name               VARCHAR(20),
    last_name               VARCHAR(20),
    FOREIGN KEY id_medio REFERENCES medio(id_medio)

);

CREATE TABLE tripulacion(
    id_tripulacion          SERIAL PRIMARY KEY,
    id_usuario              INT NOT NULL,
    oficio                  VARCHAR(20),
    salario                 INT,
    FOREIGN KEY id_usuario REFERENCES usuario(id_usuario)

);

CREATE TYPE tipo_de_cliente AS ENUM('Turista', 'Cientifico');


CREATE TABLE cliente(
    id_cliente              SERIAL PRIMARY KEY,
    id_usuario              INT NOT NULL,
    tipo                    tipo_de_cliente NOT NULL,
    nacionalidad            VARCHAR(30),
    FOREIGN KEY id_usuario REFERENCES usuario(id_usuario)
);

CREATE TABLE mensaje(
    id_mensaje              SERIAL PRIMARY KEY,
    contenido_msj           TEXT NOT NULL
)

CREATE TYPE estado_notificacion AS ENUM('Enviada', 'Retenida');

CREATE TABLE notificacion(
    id_notificacion         SERIAL PRIMARY KEY,
    id_usuario              INT NOT NULL,
    id_medio                INT NOT NULL,
    id_mensaje              INT NOT NULL,
    fecha_envio             DATE,
    estado_n                estado_notificacion NOT NULL,
    FOREIGN KEY id_usuario REFERENCES usuario(id_usuario),
    FOREIGN KEY id_medio REFERENCES medio(id_medio),
    FOREIGN KEY id_mensaje REFERENCES mensaje(id_mensaje)
)