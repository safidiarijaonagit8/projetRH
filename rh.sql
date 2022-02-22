create database Employe
c\Employe
create table Employe{
employeid int serial primary key, 
nom varchar(50),
prenom varchar(50),
datenaissance date,
sexe varchar(50),
ardesse varchar(50),
foreign key (idposte) references Poste(posteid),
dateembauche date,
foreign key (idtypecontrat) references Typecontrat(typecontratid) 
};
INSERT INTO Employe
INSERT INTO Employe  
INSERT INTO Employe
INSERT INTO Employe
(
  Column1,
  Column2,
  Column3
)
VALUES
(
  'TEST USER1',
  'FirstName.LastName',
  321
);
create table Typecontrat{
typecontratid int serial primary key,
typecontra varchar(50),
dureemois real
};

create table Indemnite{
indamniteid int serial primary key,
foreign key (idposte) references Poste(posteid),
valeur real
};

create table Poste{
posteid int serial primary key,
nom varchar(50),
foreign key (iddepartement) references Departement(departementid),
salaire real
};

create table Departement{
departementid int serial primary key,
nom varchar(50)
};

create table Admin{
adminid int serial primary key,
username varchar(50),
passwword varchar(50)
};