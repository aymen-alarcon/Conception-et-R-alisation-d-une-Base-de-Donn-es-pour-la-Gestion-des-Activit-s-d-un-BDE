CREATE DATABASE gestion_des_activités_d’un_bde ;

CREATE TABLE members_BDE (
   	ID INT PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR (50),
	prénom VARCHAR (50),
	email VARCHAR (50),
    role VARCHAR (50),
    date_dahesion DATE
)ENGINE = INNODB;

CREATE TABLE activité (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nom_de_activité VARCHAR (50),
	description TEXT,
	date_activité DATE,
    membres_responsables INT,
    FOREIGN KEY (membres_responsables) REFERENCES members_BDE(id)
)ENGINE = INNODB;

CREATE TABLE sponsers(
    ID INT PRIMARY KEY AUTO_INCREMENT,
	nom_entreprise VARCHAR (50),
	nom_contact VARCHAR (50),
	num_tele VARCHAR (50),
    email VARCHAR (50),
    budget DECIMAL
)ENGINE = INNODB;

CREATE TABLE participant(
   	ID INT PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR (50),
	prénom VARCHAR (50),
	email VARCHAR (50),
    statu VARCHAR (50) 
)ENGINE = INNODB;

CREATE TABLE evénements (
    ID INT PRIMARY KEY AUTO_INCREMENT,
	nom_de_événement VARCHAR (50),
	description TEXT,
	date_event DATE,
    lieu VARCHAR (50),
    budget_prévu DECIMAL,
    membres_responsables INT,
    sponsor_id INT,
    participant_id INT,
    FOREIGN KEY (sponsor_id) REFERENCES sponsers(ID),
    FOREIGN KEY (membres_responsables) REFERENCES members_BDE(ID),
    FOREIGN KEY (participant_id) REFERENCES participant(ID)   
)ENGINE = INNODB;

CREATE TABLE event_sponsors(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    sponsor_id INT,
    event_id INT,
    budget_sponsored INT,
    FOREIGN KEY (sponsor_id) REFERENCES sponsers(ID),
    FOREIGN KEY (event_id) REFERENCES evénements(ID)
)ENGINE = INNODB