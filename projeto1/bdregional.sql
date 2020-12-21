PRAGMA foreign_keys = ON;
-- delete the table
--drop table if exist Utente;
-- create the table
CREATE TABLE Utente(
    id integer PRIMARY KEY autoincrement, 
    dadosClinicos text NOT NULL, 
    nome text NOT NULL default 'Unknown Name',
    telefone integer, 
    morada text
);
-- insert some values
INSERT INTO Utente (id, dadosClinicos, nome, telefone, morada) VALUES (1, 'dadosclinicos', 'Joao', 932021523, 'Porto');
INSERT INTO Utente (id, dadosClinicos, nome, telefone, morada) VALUES (2, 'dadosclinicos', 'Maria', 912034567, 'Paranhos');
INSERT INTO Utente (id, dadosClinicos, nome, telefone, morada) VALUES (3, 'dadosClinicos', 'Mafalda', 982730912, 'Vila nova de gaia');


-- delete the table
--drop table if exist Hospital
CREATE TABLE Hospital(
   id integer PRIMARY KEY autoincrement,
   nome text NOT NULL,
   localidade text NOT NULL,
   email text UNIQUE
);

--insert some values
--INSERT INTO Hospital (id, nome, localidade, email) VALUES (1, 'HospitalA', 'Porto', 'Hospital1@gmail.com');
--INSERT INTO Hospital (id, nome, localidade, email) VALUES (2, 'HospitalB', 'Paranhos', 'Hospital2@gmail.com');


-- delete the table
--drop table if exist Departamento
CREATE TABLE Departamento(
  id int PRIMARY KEY,
  nome text NOT NULL NOT NULL,
  hospital  int references Hospital NOT NULL
);


--insert some values
--INSERT INTO Departamento (id, nome, hospital) VALUES (1, 'Departamentoadministrativo', 'HospitalA');
--INSERT INTO  Departamento (id, nome, hospital) VALUES (2,'Departamentoadministrativo', 'HospitalB');

--delete the table
--drop table if exist Medico
CREATE TABLE Medico(
  id int PRIMARY KEY,
  nome text NOT NULL default 'Unknown Name',
  telefone integer, 
  horario text NOT NULL, 
  hospital int references Hospital,
  especialidade int references Especialidade
);

--insert some values
--INSERT INTO  Medico (id, nome, telefone, horario, hospital, especialidade) VALUES (1, 'Dr Antonio Jota', 92345678, 'horario', 'HospitalA', 'Dermatologia');
--INSERT INTO  Medico (id, nome, telefone, horario, hospital, especialidade) VALUES (2, 'Dr Manuel Jorge', 98765456, 'horario', 'HospitalB', 'Oftamologia' );

-- delete the table
--drop table if exist Especialidade
CREATE TABLE Especialidade(
  id integer PRIMARY KEY autoincrement, 
  nome text NOT NULL UNIQUE
);

--insert some values
--INSERT INTO Especialidade (id, nome) VALUES (1, 'Dermatologia');
--INSERT INTO Especialidade (id, nome) VALUES (2, 'Oftamologia');

-- delete the table
--drop table if exist Consulta
CREATE TABLE Consulta( 
  id int references Utente PRIMARY KEY,
  date text NOT NULL,
  hora text NOT NULL, 
  especialidade references Especialidade
);

--insert some values
--INSERT INTO consulta (id, date, hora, especialidade) VALUES (1, '12-06-2020', '13:00 AM', 'Dermatologia');
--INSERT INTO consulta (id, date, hora, especialidade) VALUES (4, '30-12-2020', '10:00 AM', 'Oftamologia');


-- delete the table
--drop table if exist Consultorio
CREATE TABLE Consultorio(
  numero integer,
  piso integer NOT NULL,
  hospital references Hospital NOT NULL
);

--insert some values
--INSERT INTO Consultorio (numero, piso, hospital) VALUES (2, 1, 'HospitalB');
--INSERT INTO  Consultorio (numero, piso, hospital) VALUES (4, 6, 'HospitalA');


-- delete the table
--drop table if exist Emergência
CREATE TABLE Emergencia(
  id integer PRIMARY KEY autoincrement,
  dataAdmissao text NOT NULL,
  horaAdmissao text NOT NULL,
  dataSaida text check,
  horaSaida text check,
  sala text,
  tratamentosAdicionais text
);

--insert some values
--INSERT INTO Emergencia (id, dataAdmissao, horaAdmissao, dataSaida, horaSaida, sala, tratamentosAdicionais ) VALUES (1, '24-12-2020', '23:00 PM', '25-12-2020', '10:00 AM', 'Urgencia', 'Paracetamol');
--INSERT INTO Emergencia (id, dataAdmissao, horaAdmissao, dataSaida, horaSaida, sala, tratamentosAdicionais) VALUES (2, '26-12-2020', '12:30 AM', '26-12-2020', '20:00 PM','Urgencia', 'Cloroquina');