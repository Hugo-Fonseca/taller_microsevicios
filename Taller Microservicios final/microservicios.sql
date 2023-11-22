-- Crear tabla para los docentes
CREATE TABLE Docentes (
    Codigo INTEGER PRIMARY KEY,
    Nombre TEXT,
    OcupacionId INTEGER,
    FOREIGN KEY (OcupacionId) REFERENCES Ocupaciones(Id)
);

-- Crear tabla para las ocupaciones
CREATE TABLE Ocupaciones (
    Id INTEGER PRIMARY KEY,
    Nombre TEXT
);

-- Crear tabla para los cursos
CREATE TABLE Cursos (
    Codigo INTEGER PRIMARY KEY,
    Nombre TEXT,
    DocenteId INTEGER,
    FOREIGN KEY (DocenteId) REFERENCES Docentes(Codigo)
);

-- Insertar ocupaciones
INSERT INTO Ocupaciones (Nombre) VALUES ('Profesor');
INSERT INTO Ocupaciones (Nombre) VALUES ('Rector');

-- Insertar docentes
INSERT INTO Docentes (Codigo, Nombre, OcupacionId) VALUES (1, 'Juan Pérez', 1);
INSERT INTO Docentes (Codigo, Nombre, OcupacionId) VALUES (2, 'María García', 2);
INSERT INTO Docentes (Codigo, Nombre, OcupacionId) VALUES (3, 'Jhon Bargas', 3);

-- Insertar cursos
INSERT INTO Cursos (Codigo, Nombre, DocenteId) VALUES (101, 'Matemáticas Avanzadas', 1);
INSERT INTO Cursos (Codigo, Nombre, DocenteId) VALUES (102, 'Programación Avanzada', 2);
INSERT INTO Cursos (Codigo, Nombre, DocenteId) VALUES (103, 'Algebra Lineal', 3);
INSERT INTO Cursos (Codigo, Nombre, DocenteId) VALUES (104, 'Deporte Formativo', 4);
INSERT INTO Cursos (Codigo, Nombre, DocenteId) VALUES (105, 'Diseño de Personajes', 5);

ALTER TABLE `cursos`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `codDocente` (`codDocente`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `idOcupacion` (`idOcupacion`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ocupaciones`
--
ALTER TABLE `ocupaciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
