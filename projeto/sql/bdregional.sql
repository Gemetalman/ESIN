PRAGMA foreign_keys = ON;
-- delete the table
-- create the table
CREATE TABLE Utente(
    id integer PRIMARY KEY autoincrement, 
    dadosClinicos text NOT NULL, 
    nome text NOT NULL default 'Unknown Name',
    telefone TEXT, 
    morada text
);
-- insert some values
INSERT INTO Utente (id, nome, telefone, morada, dadosclinicos) VALUES (1, 'João', 932021523, Porto, dadosclinicos);



-- delete the table
--drop table if exist Hospital
--CREATE TABLE Hospital(
--id int PRIMARY KEY autoincrement,
--nome text NOT NULL,
--localidade text NOT NULL,
--email text UNIQUE,
--);

--insert some values
--INSERT INTO Hospital (id, nome, localidade, email) VALUES (1, 'Hospital1', Porto, Hospital1@gmail.com);
--INSERT INTO Hospital (id, nome, localidade, email) VALUES (2, 'Hospital2', Paranhos, Hospital2@gmail.com);
--INSERT INTO Hospital (id, nome, localidade, email) VALUES (3, 'Hospital3', Matosinhos, Hospital3@gmail.com);
--INSERT INTO Hospital (id, nome, localidade, email) VALUES (4, 'Hospital4', Vila nova de gaia, Hospital4@gmail.com);

--get all tuples from table
--Select * from Hospital;


-- delete the table
--drop table if exist Departamento
--CREATE TABLE Departamento(
--id int PRIMARY KEY,
--nome text NOT NULL NOT NULL,
--hospital  int references Hospital NOT NULL
--);


--insert some values
--INSERT INTO Departamento (id, nome, hospital) VALUES (1, 'Departamento administrativo', Hospital1);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (2,'Departamento administrativo', Hospital2);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (3,'Departamento administrativo', Hospital3);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,'Departamento administrativo', Hospital4);

--get all tuples from table
--Select * Departamento

--delete the table
--drop table if exist Medico
--CREATE TABLE Medico(
--id int PRIMARY KEY,
--nome text NOT NULL default 'Unknown Name',
--telefone TEXT, 
--horario text NOT NULL, 
--departamento int references Departamento,
--hospital int refererence);

--insert some values
--INSERT INTO  Medico (id, nome, telefone, horario, hospital) VALUES (1, 'Dr Antonio Jota', horario, Hospital4);
--INSERT INTO  Medico (id, nome, telefone, horario, hospital) VALUES (2, 'Dr Manuel Jorge', horario, Hospital1);
--INSERT INTO  Medico (id, nome, telefone, horario, hospital) VALUES (3, 'Dr Pedro Jeronimo', horario, Hospital2);
--INSERT INTO  Medico (id, nome, telefone, horario, hospital) VALUES (4, 'Dr Nataniel Dias', horario, Hospital3);

--get all tuples from table
--Select * Medico


-- delete the table
--drop table if exist Especialidade
--CREATE TABLE Especialidade(
  --id integer PRIMARY KEY autoincrement, 
  --nome text NOT NULL default 'Unknown Name',
--);

--insert some values
--INSERT INTO Especialidade (id, nome) VALUES (1, 'Dermatologia');
--INSERT INTO Especialidade (id, nome) VALUES (2, 'Oftamologia');
--INSERT INTO Especialidade (id, nome) VALUES (3, 'Estomatologia');
--INSERT INTO Especialidade (id, nome) VALUES (4, 'Nutrição');

--get all tuples from table
--Select * Especialidade


-- delete the table
--drop table if exist Consulta
--CREATE TABLE Consulta( 
--id int references Utente PRIMARY KEY,
--data TEXT NOT NULL
--hora TEXT NOT NULL
--);

--insert some values
--INSERT INTO consulta(id, data, hora,  VALUES (4,Departamento administrativo, Hospital4);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);

--get all tuples from table
--Select * Consulta



-- delete the table
--drop table if exist Consultorio
--CREATE TABLE Consultorio();

--insert some values
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);

--get all tuples from table
--Select * Consultorio


-- delete the table
--drop table if exist Emergência
--CREATE TABLE Emergência();

--insert some values
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);
--INSERT INTO  Departamento (id, nome, hospital) VALUES (4,Departamento administrativo, Hospital4);

--get all tuples from table
--Select * Emergência

