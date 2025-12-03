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

INSERT INTO participant (nom, prénom, email, statu) VALUES
('n1', 'p1', 'part1@example.com', 's1'),
('n2', 'p2', 'part2@example.com', 's2'),
('n3', 'p3', 'part3@example.com', 's3'),
('n4', 'p4', 'part4@example.com', 's4'),
('n5', 'p5', 'part5@example.com', 's5'),
('n6', 'p6', 'part6@example.com', 's6'),
('n7', 'p7', 'part7@example.com', 's7'),
('n8', 'p8', 'part8@example.com', 's8'),
('n9', 'p9', 'part9@example.com', 's9'),
('n10', 'p10', 'part10@example.com', 's10'),
('n11', 'p11', 'part11@example.com', 's11'),
('n12', 'p12', 'part12@example.com', 's12'),
('n13', 'p13', 'part13@example.com', 's13'),
('n14', 'p14', 'part14@example.com', 's14'),
('n15', 'p15', 'part15@example.com', 's15'),
('n16', 'p16', 'part16@example.com', 's16'),
('n17', 'p17', 'part17@example.com', 's17'),
('n18', 'p18', 'part18@example.com', 's18'),
('n19', 'p19', 'part19@example.com', 's19'),
('n20', 'p20', 'part20@example.com', 's20');


INSERT INTO activité (nom_de_activité, description, date_activité, membres_responsables, participant_id) VALUES
('act1', 'desc1', '2025-01-01', 1, 1),
('act2', 'desc2', '2025-01-02', 2, 2),
('act3', 'desc3', '2025-01-03', 3, 3),
('act4', 'desc4', '2025-01-04', 4, 4),
('act5', 'desc5', '2025-01-05', 5, 5),
('act6', 'desc6', '2025-01-06', 6, 6),
('act7', 'desc7', '2025-01-07', 7, 7),
('act8', 'desc8', '2025-01-08', 8, 8),
('act9', 'desc9', '2025-01-09', 9, 9),
('act10', 'desc10', '2025-01-10', 10, 10),
('act11', 'desc11', '2025-01-11', 11, 11),
('act12', 'desc12', '2025-01-12', 12, 12),
('act13', 'desc13', '2025-01-13', 13, 13),
('act14', 'desc14', '2025-01-14', 14, 14),
('act15', 'desc15', '2025-01-15', 15, 15),
('act16', 'desc16', '2025-01-16', 16, 16),
('act17', 'desc17', '2025-01-17', 17, 17),
('act18', 'desc18', '2025-01-18', 18, 18),
('act19', 'desc19', '2025-01-19', 19, 19),
('act20', 'desc20', '2025-01-20', 20, 20);
