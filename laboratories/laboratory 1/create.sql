DROP TABLE Notes;
DROP TABLE Alumne;
DROP TABLE Assignatura;


CREATE TABLE Alumne (
	Idalumne	serial primary key,
	Nom		varchar(20),
	Edat		int,
	Ciutat		varchar(15)
	);

CREATE TABLE Assignatura (
	Idassignatura	serial,
	Nom		varchar(20),
	NumAlumnes	int,
        PRIMARY KEY (Idassignatura)
	);

CREATE TABLE Notes (
        Idalumne        int,
        Idassignatura   int references Assignatura(Idassignatura),
	Nota		int,
        PRIMARY KEY (Idalumne,Idassignatura),
        FOREIGN KEY (Idalumne) REFERENCES Alumne(Idalumne)
	);
