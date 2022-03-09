create database Employe;
\c Employe;
create table Employe(
employeid serial not null primary key, 
nom varchar(50),
prenom varchar(50),
datenaissance date,
sexe varchar(50),
adresse varchar(50),
idposte int,
idtypecontrat int,
dateembauche date,
foreign key (idposte) references Poste(posteid),
foreign key (idtypecontrat) references Typecontrat(typecontratid) 
);


create table Typecontrat(
typecontratid serial not null primary key,
typecontra varchar(50),
dureemois real
);


create table Indemnite(
indamniteid serial not null primary key,
idposte int,
valeur real,
foreign key (idposte) references Poste(posteid)
);

create table Poste(
posteid serial not null primary key,
nom varchar(50),
iddepartement int,
salaire real,
foreign key (iddepartement) references Departement(departementid)
);

create table Departement(
departementid serial not null primary key,
nom varchar(50)
);

create table Admin(
adminid serial not null primary key,
username varchar(50),
password varchar(50)
);


create table mois(
idMois serial not null primary key,
mois varchar(50)
);


create table conge(
id serial not null primary key,
idEmploye int,
idmois int,
annee int ,
reste float,
foreign key(idEmploye) references Employe(employeid) ,
foreign key(idmois) references mois(idMois)  
);

create table demandeConge(
id serial not null primary key,
idEmploye int,
motif varchar(50),
idmois int ,
annee int ,
nbrJours float,
foreign key (idEmploye) references Employe(employeid)
);


create table congeValide(
id  serial not null primary key,
idDemandeConge int,
foreign key (idDemandeConge) references demandeConge(id) 
);

create table congeRefuse(
id serial not null primary key,
idDemandeConge int,
foreign key (idDemandeConge) references demandeConge(id)
);

create table demandeAvance(
id serial not null primary key,
employeID int,
dateDemande date,
montant int,
foreign key (employeID) references Employe(employeid)
);


create table avanceRefuse(
id serial not null primary key,
demandeAvanceID int,
foreign key (demandeAvanceID) references demandeAvance(id)
);
create table avanceValide(
id serial not null primary key,
demandeAvanceID int,
foreign key (demandeAvanceID) references demandeAvance(id));
create table avance(
id serial not null primary key,
employeID int,
dateDemande date,
montant float,
foreign key (employeID) references Employe(employeid)	
);

create table loginEmploye(
id serial not null primary key,
idemploye int,
username varchar(50),
passeword varchar(50),
foreign key (idemploye) references Employe(employeid)3
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
	INSERT INTO employe(Nom,Prenom,datenaissance,sexe,adresse) VALUES('Rakoto','Jean','12-12-03','male','ter f');
	INSERT INTO employe(Nom,Prenom,datenaissance,sexe,adresse) VALUES('Meno','Jean','12-10-13','male','ter d');
	INSERT INTO employe(Nom,Prenom,datenaissance,sexe,adresse) VALUES('Ngiki','Jean','12-02-03','male','ter c');
	INSERT INTO employe(Nom,Prenom,datenaissance,sexe,adresse) VALUES('Lanta','Jean','12-02-14','male','ter s');


	INSERT into Typecontrat (typecontra,dureemois) values ('cdi',null);
	INSERT into Typecontrat (typecontra,dureemois) values ('cdd',16);
	INSERT into Typecontrat (typecontra,dureemois) values ('cdd',7);
	INSERT into Typecontrat (typecontra,dureemois) values ('cdi',null);
	INSERT into Typecontrat (typecontra,dureemois) values ('essay',3);
	INSERT into Typecontrat (typecontra,dureemois) values ('cdd',12);
	INSERT into Typecontrat (typecontra,dureemois) values ('essay',3);
	INSERT into Typecontrat (typecontra,dureemois) values ('cdi',null);


	INSERT into Indemnite (idposte,valeur) values (1,'10000');
	INSERT into Indemnite (idposte,valeur) values (2,'5000');
	INSERT into Indemnite (idposte,valeur) values (3,'12000');
	INSERT into Indemnite (idposte,valeur) values (4,'7500');

	insert into Poste(nom,iddepartement,salaire) values('directeur general',1,100000);
	insert into Poste(nom,iddepartement,salaire) values('directeur',1,80000);
	insert into Poste(nom,iddepartement,salaire) values('secretaire',1,70000);
	insert into Poste(nom,iddepartement,salaire) values('responsable achat',2,10000);
	insert into Poste(nom,iddepartement,salaire) values('comptable',3,10000);
	insert into Poste(nom,iddepartement,salaire) values('responsable logistique',4,20000);
	insert into Poste(nom,iddepartement,salaire) values('gestionnaire',3,10000);
	insert into Poste(nom,iddepartement,salaire) values('responsable marketing',5,15000);
	insert into Poste(nom,iddepartement,salaire) values('responsable commercial',5,15000);


	insert into Departement(nom) values('fonction direction et administration générale');	
	insert into Departement(nom) values(' achat');
	insert into Departement(nom) values(' finance et comptabilité');
	insert into Departement(nom) values('logistique');
	insert into Departement(nom) values('marketing et commerciale');


	insert into Admin(username,password) values ('rakoto','taloa');
insert into Admin(username,password) values ('rakoto','taloa');
insert into Admin(username,password) values ('rakoto','taloa');
insert into Admin(username,password) values ('rakoto','taloa');

insert into mois(mois) values ('janvier');
insert into mois(mois) values ('fervrier');
insert into mois(mois) values ('mars');
insert into mois(mois) values ('avril');
insert into mois(mois) values ('may');
insert into mois(mois) values ('juin');
insert into mois(mois) values ('juiller');
insert into mois(mois) values ('aout');
insert into mois(mois) values ('septembre');
insert into mois(mois) values ('octobre');
insert into mois(mois) values ('novembre');
insert into mois(mois) values ('decembre');

	insert into demandeConge(idEmploye,motif,idmois,annee,nbrJours) values (1,'repos',1,2019,1);
insert into demandeConge(idEmploye,motif,idmois,annee,nbrJours) values (2,'maladie',2,2020,2.5);
insert into demandeConge(idEmploye,motif,idmois,annee,nbrJours) values (3,'mariage',3,2018,1);
insert into demandeConge(idEmploye,motif,idmois,annee,nbrJours) values (4,'imprevue',4,2019,1);


insert into congeValide(idDemandeConge) values (1);
insert into congeValide(idDemandeConge) values (2);
insert into congeValide(idDemandeConge) values (3);
insert into congeValide(idDemandeConge) values (4);

insert into congeRefuse(idDemandeConge) values (1);
insert into congeRefuse(idDemandeConge) values (2);
insert into congeRefuse(idDemandeConge) values (3);
insert into congeRefuse(idDemandeConge) values (4);

insert into demandeAvance(employeID,dateDemande,montant) values (1,'12-05-19','5000');
insert into demandeAvance(employeID,dateDemande,montant) values (2,'24-07-20','7500');
insert into demandeAvance(employeID,dateDemande,montant) values (3,'30-05-21','2500');
insert into demandeAvance(employeID,dateDemande,montant) values (4,'06-11-20','6000');

	insert into conge(idEmploye,idmois,annee,reste) values (1,1,2012,2.5);
insert into conge(idEmploye,idmois,annee,reste) values (2,2,2014,2.5);
insert into conge(idEmploye,idmois,annee,reste) values (3,3,2013,1.5);
insert into conge(idEmploye,idmois,annee,reste) values (4,4,2011,2.5);

insert into avanceRefuse(demandeAvanceID) values (1);
insert into avanceRefuse(demandeAvanceID) values (2);
insert into avanceRefuse(demandeAvanceID) values (3);
insert into avanceRefuse(demandeAvanceID) values (4);

insert into avanceValide(demandeAvanceID) values (1);
insert into avanceValide(demandeAvanceID) values (2);
insert into avanceValide(demandeAvanceID) values (3);
insert into avanceValide(demandeAvanceID) values (4);

insert into avance(employeID,dateDemande,montant) values (1,'20-12-19','10000');
insert into avance(employeID,dateDemande,montant) values (2,'10-10-20','12500');
insert into avance(employeID,dateDemande,montant) values (3,'15-04-18','15000');
insert into avance(employeID,dateDemande,montant) values (4,'12-11-21','20000');






	
	INSERT into loginEmploye(idemploye,username,passeword) values (1,'Ralphe','gaga');
	INSERT into loginEmploye(idemploye,username,passeword) values (1,'Ranto','taka');
	INSERT into loginEmploye(idemploye,username,passeword) values (1,'kala','gigo');
	INSERT into loginEmploye(idemploye,username,passeword) values (1,'Ngiki','nalo');
