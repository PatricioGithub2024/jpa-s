insert into categoria(codigo, nombre) values('C1', 'Teatro');
insert into categoria(codigo, nombre) values('C2', 'Ensayo');
insert into categoria(codigo, nombre) values('C3', 'Novela');
insert into categoria(codigo, nombre) values('C4', 'Poesia');


insert into libros(isbn, titulo, autor, fecha, precio, codigo_categoria) values('A1', 'Java Persistence API (JPA)', 'Cesar', '1983-07-28', 50.90, 'C1');
insert into libros(isbn, titulo, autor, fecha, precio, codigo_categoria) values('A2', 'Hibernate', 'Cesar', '1986-05-04', 30.10, 'C1');
insert into libros(isbn, titulo, autor, fecha, precio, codigo_categoria) values('A3', 'Cálculo 01', 'Venero Corrales', '2020-01-30', 70.23, 'C1');
insert into libros(isbn, titulo, autor, fecha, precio, codigo_categoria) values('A4', 'Don Quijote de La Mancha', 'Miguel De Cervantes', '1994-02-20', 110.25, 'C2');
insert into libros(isbn, titulo, autor, fecha, precio, codigo_categoria) values('A5', 'Los Miserables', 'Victor Hugo', '1980-01-30', 102.00, 'C2');
insert into libros(isbn, titulo, autor, fecha, precio, codigo_categoria) values('A6', 'Cuentos Completos', 'Ribeyro', '1992-01-15', 72.60, 'C2');
insert into libros(isbn, titulo, autor, fecha, precio, codigo_categoria) values('A7', 'Terror Nocturno 01', 'Claudia', '1984-01-15', 42.50, 'C2');
insert into libros(isbn, titulo, autor, fecha, precio, codigo_categoria) values('A8', 'Terror Nocturno 02', 'Claudia', '1985-01-04', 42.50, 'C2');
insert into libros(isbn, titulo, autor, fecha, precio, codigo_categoria) values('A9', 'Terror Nocturno 03', 'Claudia', '1989-05-24', 60.00, 'C4');
insert into libros(isbn, titulo, autor, fecha, precio, codigo_categoria) values('A10', 'Cantar de Mio Cid', null, '2001-12-10', 31.00, 'C4');


-- Registrar estudiantes
INSERT INTO biblioteca.estudiantes (idEstudiante,nombres,apellidos,correo,fechaNacimiento) VALUES ('E1','César','Santos','cesar@mail.com','1983-07-28');
INSERT INTO biblioteca.estudiantes (idEstudiante,nombres,apellidos,correo,fechaNacimiento) VALUES ('E2','Julio','Meza','julio@mail.com','1990-05-30');
INSERT INTO biblioteca.estudiantes (idEstudiante,nombres,apellidos,correo,fechaNacimiento) VALUES ('E3','David','Sanchez','david@mail.com','1980-03-03');
INSERT INTO biblioteca.estudiantes (idEstudiante,nombres,apellidos,correo,fechaNacimiento) VALUES ('E4','María','Romero','mary@mail.com','1992-07-15');
INSERT INTO biblioteca.estudiantes (idEstudiante,nombres,apellidos,correo,fechaNacimiento) VALUES ('E5','Claudia','Vega','claudia@mail.com','1982-08-12');

-- Registrar cursos
INSERT INTO biblioteca.cursos (idCurso,nombre,especialidad) VALUES ('C1','Aritmética','Ciencias');
INSERT INTO biblioteca.cursos (idCurso,nombre,especialidad) VALUES ('C2','Álgebra','Ciencias');
INSERT INTO biblioteca.cursos (idCurso,nombre,especialidad) VALUES ('C3','Literatura','Letras');
INSERT INTO biblioteca.cursos (idCurso,nombre,especialidad) VALUES ('C4','Biología','Ciencias');
INSERT INTO biblioteca.cursos (idCurso,nombre,especialidad) VALUES ('C5','Historia','Letras');

-- Registrar matriculas
INSERT INTO biblioteca.matricula (idEstudiante,idCurso) VALUES ('E1','C1');
INSERT INTO biblioteca.matricula (idEstudiante,idCurso) VALUES ('E1','C2');
INSERT INTO biblioteca.matricula (idEstudiante,idCurso) VALUES ('E1','C3');
INSERT INTO biblioteca.matricula (idEstudiante,idCurso) VALUES ('E2','C4');
INSERT INTO biblioteca.matricula (idEstudiante,idCurso) VALUES ('E2','C5');