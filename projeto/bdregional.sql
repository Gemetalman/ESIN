PRAGMA foreign_keys = ON;

CREATE TABLE Hospital(
    id int PRIMARY KEY AUTOINCREMENT,
    nome text NOT NULL,
    localidade text NOT NULL,
    email text UNIQUE,
);

CREATE TABLE Departamento(
    id int PRIMARY KEY AUTOINCREMENT,
    nome text NOT NULL NOT NULL,
    hospital int references Hospital NOT NULL,
);

CREATE TABLE Pessoa(
    id int PRIMARY KEY AUTOINCREMENT,
    nome text NOT NULL,
    telefone int,  --char????????????????????????
)

CREATE TABLE Utente(
    id int REFERENCES Pessoa PRIMARY KEY, -- AUTOINCREMENT
    dadosClinicos text NOT NULL, --?????
    idade int NOT NULL,
    morada text,
);

CREATE TABLE Medico(
    id int REFERENCES Pessoa PRIMARY KEY,
    horario text NOT NULL, --??????????????????
    departamento int references Departamento NOT NULL, 
    hospital int references Hospital NOT NULL,
);

CREATE TABLE Consulta( 
    id int references Utente PRIMARY KEY,
    departamento int references Departamento PRIMARY KEY,
    data text NOT NULL,  --??????????????????
    hora text NOT NULL,  --??????????????????
);

CREATE TABLE Emergencia(
    id int PRIMARY KEY AUTOINCREMENT,
    hospital int references Hospital NOT NULL,
    dataAdmissao int NOT NULL, --??????????????????
    horaAdmissao int NOT NULL,
    dataSaida int CHECK(dataSaida>dataAdmissao), -- check usado corretamente?
    horaSaida int CHECK(horaSaida>horaAdmissao), -- check usado corretamente?
);

CREATE TABLE Consultorio(
    id int PRIMARY KEY,
    piso int NOT NULL,
    hospital int references Hospital NOT NULL,
);

CREATE TABLE Especialidade(
    id int PRIMARY KEY,
    nome text NOT NULL UNIQUE, 
);
