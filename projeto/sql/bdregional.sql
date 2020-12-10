PRAGMA foreign_keys = ON;

CREATE TABLE Utente(
    id int PRIMARY KEY, -- AUTOINCREMENT
    dadosClinicos text NOT NULL, --?????
    nome text NOT NULL,
    telefone int, --char????????????????????????
    morada text,
);

CREATE TABLE Hospital(
    id int PRIMARY KEY,
    nome text NOT NULL,
    localidade text NOT NULL,
    email text UNIQUE,
);

CREATE TABLE Departamento(
    id int PRIMARY KEY,
    nome text NOT NULL NOT NULL,
    hospital int references Hospital NOT NULL,
);

CREATE TABLE Medico(
    id int PRIMARY KEY,
    nome text NOT NULL,
    telefone int NOT NULL, --char????????????????????????
    horario text NOT NULL, --??????????????????
    departamento int references Departamento, -- estes poderão ser null?
    hospital int references Hospital, -- estes poderão ser null?
);

CREATE TABLE Consulta( 
    utente int references Utente PRIMARY KEY,-- tenho a vaga impressão que as primary keys deviam ser todas ids, mas não me lembro porquê
    departamento int references Departamento PRIMARY KEY,


