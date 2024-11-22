-- biblioteca02.categoria definition

CREATE TABLE `categoria` (
                             `codigo` varchar(100) NOT NULL,
                             `nombre` varchar(100) DEFAULT NULL,
                             PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- biblioteca02.libros definition

CREATE TABLE `libros` (
                          `precio` double DEFAULT NULL,
                          `fecha` datetime(6) DEFAULT NULL,
                          `autor` varchar(255) DEFAULT NULL,
                          `isbn` varchar(255) NOT NULL,
                          `titulo` varchar(255) DEFAULT NULL,
                          `codigo_categoria` varchar(100) DEFAULT NULL,
                          PRIMARY KEY (`isbn`),
                          KEY `libros_categoria_FK` (`codigo_categoria`),
                          CONSTRAINT `libros_categoria_FK` FOREIGN KEY (`codigo_categoria`) REFERENCES `categoria` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- biblioteca.estudiantes definition

CREATE TABLE `estudiantes` (
                               `idEstudiante` varchar(100) NOT NULL,
                               `nombres` varchar(100) DEFAULT NULL,
                               `apellidos` varchar(100) DEFAULT NULL,
                               `correo` varchar(100) DEFAULT NULL,
                               `fechaNacimiento` date DEFAULT NULL,
                               PRIMARY KEY (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- biblioteca.cursos definition

CREATE TABLE `cursos` (
                          `idCurso` varchar(100) NOT NULL,
                          `nombre` varchar(100) DEFAULT NULL,
                          `especialidad` varchar(100) DEFAULT NULL,
                          PRIMARY KEY (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- biblioteca.matricula definition

CREATE TABLE `matricula` (
                             `idEstudiante` varchar(100) NOT NULL,
                             `idCurso` varchar(100) NOT NULL,
                             PRIMARY KEY (`idEstudiante`,`idCurso`),
                             KEY `matricula_cursos_FK` (`idCurso`),
                             CONSTRAINT `matricula_cursos_FK` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`),
                             CONSTRAINT `matricula_estudiantes_FK` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;