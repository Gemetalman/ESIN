PRAGMA foreign_keys = ON;


-- create the table
create table Utente(
  id integer primary key autoincrement,
  nome varchar(50) not null, 
  dadosclinicos varchar, 
  telefone char (9) not null,
  morada varchar 
);

-- insert some values
INSERT INTO Utente VALUES (1, 'Joao', 'dadosclinicos', 932021523, 'Porto');
INSERT INTO Utente VALUES (2, 'Maria', 'dadosclinicos', 912034567, 'Paranhos');
INSERT INTO Utente VALUES (3, 'Mafalda', 'dadosClinicos', 982730912, 'Vila Nova de Gaia');

-- create the table
create table Especialidade(
  id integer primary key autoincrement,
  nome varchar(50) not null  
);

-- insert some values
INSERT INTO Especialidade VALUES (1,'Dermatologia');
INSERT INTO Especialidade VALUES (2,'Oftamologia');

-- create the table 
create table Hospital(
  id integer primary key,
  nome varchar(50) not null,
  localidade varchar not null,
  email varchar (15) unique  
);

--insert some values
INSERT INTO Hospital VALUES (1, 'HospitalA', 'Porto', 'Hospital1@gmail.com');
INSERT INTO Hospital VALUES (2, 'HospitalB', 'Paranhos', 'Hospital2@gmail.com');


-- create the table
create table Medico(
  id integer primary key autoincrement,
  nome varchar(50) not null, 
  horario varchar, 
  telefone char (9) not null,
  hospital varchar,
  
especialidade_id integer references especialidade(id) 
);

--insert some values
INSERT INTO  Medico VALUES (1, 'Dr Antonio Jota', 92345678, 'horario', 'HospitalA', 1);
INSERT INTO Medico VALUES (2, 'Dr Manuel Jorge', 98765456, 'horario', 'HospitalB', 2);


-- create the table
create table Departamento(
  id integer primary key autoincrement,
  nome varchar(50) not null, 
departamento_id integer references hospital(id)

);
--insert some values
INSERT INTO Departamento VALUES (1, 'Departamentoadministrativo', 1);
INSERT INTO  Departamento VALUES (2, 'Departamentoadministrativo', 2);

-- create the table
create table Consulta(
consultorio_id integer PRIMARY KEY,
data date,
hora integer NOT NULL, 
especialidades varchar,
 references consultorio(id)  
);

--insert some values
INSERT INTO  Consulta VALUES (1, '12-06-2020', '13:00 AM', 'Dermatologia', 2);
INSERT INTO Consulta VALUES (2, '30-12-2020', '10:00 AM', 'Oftamologia', 1);


-- create the table
create table Emergencia(
id integer PRIMARY KEY autoincrement,
 dataAdmissao date NOT NULL,
 horaAdmissao integer NOT NULL,
 dataSaida date,
 horaSaida datetime,
 sala char,
 tratamentosAdicionais varchar,
 emergencia_id integer references hospital(id)
);

--insert some values
INSERT INTO Emergencia VALUES (1, '24-12-2020', '23:00 PM', '25-12-2020', '10:00 AM', 'Urgencias', 'Paracetamol', 1);
INSERT INTO Emergencia VALUES (2, '26-12-2020', '12:30 AM', '26-12-2020', '20:00 PM','Urgencias', 'Cloroquina', 2);

-- create the table
create table Consultorio(
id integer primary key,
piso integer not null,
hospital_id integer references hospital (id)
);

--insert some values
INSERT INTO Consultorio VALUES (1, 3, 1);
INSERT INTO  Consultorio VALUES (2, 6, 2);
 

 -- delete the table
drop table if exists consulta;
drop table if exists utente; 
drop table if exists medico; 
drop table if exists especialidade;
drop table if exists emergencia;
drop table if exists consultorio;
drop table if exists departamento;
drop table if exists hospital;




 
