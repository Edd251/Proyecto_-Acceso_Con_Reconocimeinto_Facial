SHOW DATABASES
USE reconocimiento_facial;

CREATE TABLE usuarios (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre_completo VARCHAR(100) NOT NULL,
	correo_electronico VARCHAR(100) UNIQUE NOT NULL,
	contrasena VARCHAR(255) NOT NULL,
	cargo ENUM('admin', 'empleado') DEFAULT 'empleado',
	fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
    );
CREATE TABLE rostros (
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    ruta_imagen VARCHAR(255) NOT NULL,
    fecha_captura DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
    );

CREATE TABLE accesos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    tipo ENUM ('entrada', 'salida') NOT NULL,
    fecha_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    observaciones TEXT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
    );
    
    SHOW TABLES;
    
    INSERT INTO usuarios (nombre_completo, correo_electronico, contrasena, cargo) VALUES
    ('Isaac Duarte', 'isaacduarte@example.com', '123456', 'Jefe de Recursos Humanos'),
	('Luisa Palacios', 'luisapa@example.com', '321456', 'Asesora Externa'),
	('Melany Ayure Ochoa', 'melyureo@example.com', '987098', 'Asistente de Presidencia'),
	('Jorge Lopez', 'jorgelop@example.com', 'abcde1', 'Conductor'),
	('Lina Maria Zuluaga', 'linazulu@example.com', 'bcde345', 'Contadora'),
	('Mike Olarte', 'mikeola@example.com', 'erterg', 'Abogado Juridico'),
	('Jhonatan Mendez', 'jhonmend@example.com', '254786d', 'Ingeniero de Sistemas'),
	('Maria Angelica Diaz', 'mangelica@example.com', '7896po', 'Ingeniera de Sistemas'),
	('Felipe Mogollon', 'felipmog@example.com', 'gggg123456', 'Asesor Externo'),
	('Malaquias Perez', 'malaqpe@example.com', '123ttt456', 'Vicepresidente'),
	('Angie Lorena Rodriguez', 'angilro@example.com', '1r2t3u4p56', 'Asesora Externa');
    
    ALTER TABLE usuarios 
    MODIFY cargo VARCHAR(50) DEFAULT 'empleado';
    
	INSERT INTO usuarios (nombre_completo, correo_electronico, contrasena, cargo) VALUES
    ('Isaac Duarte', 'isaacduarte@example.com', '123456', 'Jefe de Recursos Humanos'),
	('Luisa Palacios', 'luisapa@example.com', '321456', 'Asesora Externa'),
	('Melany Ayure Ochoa', 'melyureo@example.com', '987098', 'Asistente de Presidencia'),
	('Jorge Lopez', 'jorgelop@example.com', 'abcde1', 'Conductor'),
	('Lina Maria Zuluaga', 'linazulu@example.com', 'bcde345', 'Contadora'),
	('Mike Olarte', 'mikeola@example.com', 'erterg', 'Abogado Juridico'),
	('Jhonatan Mendez', 'jhonmend@example.com', '254786d', 'Ingeniero de Sistemas'),
	('Maria Angelica Diaz', 'mangelica@example.com', '7896po', 'Ingeniera de Sistemas'),
	('Felipe Mogollon', 'felipmog@example.com', 'gggg123456', 'Asesor Externo'),
	('Malaquias Perez', 'malaqpe@example.com', '123ttt456', 'Vicepresidente'),
	('Angie Lorena Rodriguez', 'angilro@example.com', '1r2t3u4p56', 'Asesora Externa');
    
    DESCRIBE usuarios;
    
    SELECT * FROM usuarios
    
    UPDATE usuarios
    SET cargo = 'supervisor'
    WHERE id = 3;
    
    SELECT * FROM usuarios WHERE id = 3;
    
    INSERT INTO accesos (id_usuario, fecha_hora, tipo) VALUES
    (3, '2025-07-27 08:05:00', 'entrada'),
    (3, '2025-07-27 17:25:00', 'salida');
    
    SELECT * FROM accesos WHERE id = 3;
    SELECT * FROM accesos
    
    INSERT INTO accesos (id_usuario, fecha_hora, tipo) VALUES
    (2, '2025-07-27 09:05:00', 'entrada'),
    (2, '2025-07-27 16:25:00', 'salida'),
    (1, '2025-07-27 08:50:00', 'entrada'),
    (1, '2025-07-27 17:10:00', 'salida'),
    (4, '2025-07-27 07:05:00', 'entrada'),
    (4, '2025-07-27 16:45:00', 'salida'),
    (5, '2025-07-27 08:15:00', 'entrada'),
    (5, '2025-07-27 17:45:00', 'salida'),
    (6, '2025-07-27 07:15:00', 'entrada'),
    (6, '2025-07-27 10:10:00', 'salida'),
    (6, '2025-07-27 10:45:00', 'entrada'),
    (6, '2025-07-27 17:25:00', 'salida'),
    (7, '2025-07-27 12:15:00', 'entrada'),
    (7, '2025-07-27 19:25:00', 'salida'),
    (8, '2025-07-27 09:15:00', 'entrada'),
    (8, '2025-07-27 18:25:00', 'salida'),
    (9, '2025-07-27 07:05:00', 'entrada'),
    (9, '2025-07-27 12:25:00', 'salida'),
    (9, '2025-07-27 13:30:00', 'entrada'),
    (9, '2025-07-27 17:50:00', 'salida'),
    (10, '2025-07-27 08:05:00', 'entrada'),
    (10, '2025-07-27 17:35:00', 'salida'),
    (11, '2025-07-27 07:05:00', 'entrada'),
    (11, '2025-07-27 15:25:00', 'salida');
    
    INSERT INTO usuarios (nombre_completo, correo_electronico, contrasena, cargo) VALUES
    ('123456789', 'Juan Pérez', 'juan.perez@example.com', '2025-07-01', 1),
	('987654321', 'Laura Gómez', 'laura.gomez@example.com', '2025-07-05', 2),
	('456789123', 'Carlos Ruiz', 'carlos.ruiz@example.com', '2025-07-10', 3),
	('321654987', 'María Torres', 'maria.torres@example.com', '2025-07-15', 4);
    
    ALTER TABLE usuarios
    ADD COLUMN cedula INT NOT NULL;
    
    DESCRIBE usuarios;
    
    INSERT INTO usuarios (nombre_completo, correo_electronico, contrasena, cargo, cedula) VALUES
    ('Juan Pérez', 'juan.perez@example.com', 'j165875', 'Jefe de Seguridad', '10245654'),
	('Laura Gómez', 'laura.gomez@example.com', '4587yhr', 'Analista de Datos', '82569874'),
	('Carlos Ruiz', 'carlos.ruiz@example.com', 'Car165478', 'Mantenimiento', '95369874'),
	('María Torres', 'maria.torres@example.com', 'Mar1234', 'Secretaria', '1000547896');
    
    SELECT * FROM usuarios;
    
    INSERT INTO rostros (id_usuario, ruta_imagen, fecha_captura)
    VALUES (3, 'C:\Users\USER\OneDrive\Desktop\nuevo proyecto ADSO\imagenes\melany_ayure.jpg', NOW());
    
    SELECT * FROM rostros;
    
    
    

    