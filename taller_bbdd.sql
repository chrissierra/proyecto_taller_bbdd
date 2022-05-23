create database proyecto_taller_bbdd;
use proyecto_taller_bbdd;
CREATE TABLE materiales_educativos
(
    id int(11) NOT NULL auto_increment,
    nombre_material VARCHAR(255) NOT NULL,
    titulo VARCHAR(255) NOT NULL default "No Aplica",
    autor VARCHAR(255) NOT NULL default "No Aplica",
    anio_publicacion INT NOT NULL default 0, 
    categoria VARCHAR(255),      
    PRIMARY KEY (id)
);

CREATE TABLE usuarios
(
    id int(11) NOT NULL auto_increment,
    nombre VARCHAR(255)  NOT NULL,
    primer_apellido VARCHAR(255) NOT NULL,
    segundo_apellido VARCHAR(255) NOT NULL,
    direccion VARCHAR(255),    
    numero INT, 

    PRIMARY KEY (id, primer_apellido)
);

CREATE TABLE prestamos_vigentes
(
    id int(11) NOT NULL auto_increment,
    usuarios_id int(11) NOT NULL,
    materiales_educativos_id INT NOT NULL,
    loan_date DATE,
    due_date DATE,

    PRIMARY KEY (id, materiales_educativos_id),
    FOREIGN KEY (materiales_educativos_id) REFERENCES materiales_educativos(id),
    FOREIGN KEY (materiales_educativos_id) REFERENCES usuarios(id)
);

CREATE TABLE historiales
(
    usuarios_id INT NOT NULL,
     materiales_educativos_id INT NOT NULL,
    primer_apellido INT NOT NULL,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE,

    PRIMARY KEY (usuarios_id, materiales_educativos_id, fecha_prestamo),
    FOREIGN KEY (usuarios_id) REFERENCES usuarios(id),
    FOREIGN KEY (materiales_educativos_id) REFERENCES materiales_educativos(id)
);


INSERT INTO `usuarios` (`id`, `nombre`, `primer_apellido`, `segundo_apellido`, `direccion`, `numero`) VALUES (NULL, 'Christpher', 'Sierra', 'Meléndez', 'enrique dle solar 1542', '944750588'), (NULL, 'Romina', 'Santa María', 'Riveros', 'Fermin vivaceta 2418', '98284855');



