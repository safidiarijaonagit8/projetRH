create database Employe;
\c Employe;
create table Employe(
employeid int primary key not null, 
nom varchar(50),
prenom varchar(50),
datenaissance date,
sexe varchar(50),
ardesse varchar(50),
foreign key (idposte) references Poste(posteid),
dateembauche date,
foreign key (idtypecontrat) references Typecontrat(typecontratid) 
);
create table Typecontrat(
typecontratid int primary key not null,
typecontra varchar(50),
dureemois real
);
create table Indemnite(
indamniteid int primary key not null,
foreign key (idposte) references Poste(posteid),
valeur real
);

create table Poste(
posteid int primary key not null,
nom varchar(50),
foreign key (iddepartement) references Departement(departementid),
salaire real
);

create table Departement(
departementid int primary key not null,
nom varchar(50)
);

create table Admin(
adminid int primary key not null,
username varchar(50),
passwword varchar(50)
);
create view as v_detailemploye
	SELECT*
	From Employer e join poste p
	on e.idposte=p.posteid,e.typecontratid=t.idtypecontrat

	join Departement d
	on d.iddepartement=p.departementid
	join Indemnite i
	join typecontra t
	;