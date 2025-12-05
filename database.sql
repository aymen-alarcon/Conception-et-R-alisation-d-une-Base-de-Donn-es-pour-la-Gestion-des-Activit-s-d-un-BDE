CREATE DATABASE gestion_des_activités_d’un_bde ;

CREATE TABLE members_BDE (
   	ID INT PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR (50),
	prénom VARCHAR (50),
	email VARCHAR (50),
    role VARCHAR (50),
    date_dahesion DATE
)ENGINE = INNODB;

CREATE TABLE participant(
   	ID INT PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR (50),
	prénom VARCHAR (50),
	email VARCHAR (50),
    statu VARCHAR (50) 
)ENGINE = INNODB;

CREATE TABLE activité (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nom_de_activité VARCHAR (50),
	description TEXT,
	date_activité DATE,
    membres_responsables INT,
    participant_id INT,
    FOREIGN KEY (participant_id) REFERENCES participant(ID),
    FOREIGN KEY (membres_responsables) REFERENCES members_BDE(ID)
)ENGINE = INNODB;

CREATE TABLE sponsers(
    ID INT PRIMARY KEY AUTO_INCREMENT,
	nom_entreprise VARCHAR (50),
	nom_contact VARCHAR (50),
	num_tele VARCHAR (50),
    email VARCHAR (50),
    budget DECIMAL
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
)ENGINE = INNODB;

INSERT INTO members_bde (nom, prénom, email, role, date_dahesion) VALUES
('n1', 'p1', 'e1@example.com', 'r1', '2025-01-01'),
('n2', 'p2', 'e2@example.com', 'r2', '2025-01-02'),
('n3', 'p3', 'e3@example.com', 'r3', '2025-01-03'),
('n4', 'p4', 'e4@example.com', 'r4', '2025-01-04'),
('n5', 'p5', 'e5@example.com', 'r5', '2025-01-05'),
('n6', 'p6', 'e6@example.com', 'r6', '2025-01-06'),
('n7', 'p7', 'e7@example.com', 'r7', '2025-01-07'),
('n8', 'p8', 'e8@example.com', 'r8', '2025-01-08'),
('n9', 'p9', 'e9@example.com', 'r9', '2025-01-09'),
('n10', 'p10', 'e10@example.com', 'r10', '2025-01-10'),
('n11', 'p11', 'e11@example.com', 'r11', '2025-01-11'),
('n12', 'p12', 'e12@example.com', 'r12', '2025-01-12'),
('n13', 'p13', 'e13@example.com', 'r13', '2025-01-13'),
('n14', 'p14', 'e14@example.com', 'r14', '2025-01-14'),
('n15', 'p15', 'e15@example.com', 'r15', '2025-01-15'),
('n16', 'p16', 'e16@example.com', 'r16', '2025-01-16'),
('n17', 'p17', 'e17@example.com', 'r17', '2025-01-17'),
('n18', 'p18', 'e18@example.com', 'r18', '2025-01-18'),
('n19', 'p19', 'e19@example.com', 'r19', '2025-01-19'),
('n20', 'p20', 'e20@example.com', 'r20', '2025-01-20');


INSERT INTO sponsers (nom_entreprise, nom_contact, num_tele, email, budget) VALUES
('ent1', 'contact1', '0600000001', 'sp1@example.com', 1000),
('ent2', 'contact2', '0600000002', 'sp2@example.com', 2000),
('ent3', 'contact3', '0600000003', 'sp3@example.com', 3000),
('ent4', 'contact4', '0600000004', 'sp4@example.com', 4000),
('ent5', 'contact5', '0600000005', 'sp5@example.com', 5000),
('ent6', 'contact6', '0600000006', 'sp6@example.com', 6000),
('ent7', 'contact7', '0600000007', 'sp7@example.com', 7000),
('ent8', 'contact8', '0600000008', 'sp8@example.com', 8000),
('ent9', 'contact9', '0600000009', 'sp9@example.com', 9000),
('ent10', 'contact10', '0600000010', 'sp10@example.com', 10000),
('ent11', 'contact11', '0600000011', 'sp11@example.com', 11000),
('ent12', 'contact12', '0600000012', 'sp12@example.com', 12000),
('ent13', 'contact13', '0600000013', 'sp13@example.com', 13000),
('ent14', 'contact14', '0600000014', 'sp14@example.com', 14000),
('ent15', 'contact15', '0600000015', 'sp15@example.com', 15000),
('ent16', 'contact16', '0600000016', 'sp16@example.com', 16000),
('ent17', 'contact17', '0600000017', 'sp17@example.com', 17000),
('ent18', 'contact18', '0600000018', 'sp18@example.com', 18000),
('ent19', 'contact19', '0600000019', 'sp19@example.com', 19000),
('ent20', 'contact20', '0600000020', 'sp20@example.com', 20000);


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

INSERT INTO evénements (nom_de_événement, description, date_event, lieu, budget_prévu, membres_responsables, sponsor_id, participant_id) VALUES
('ev1', 'desc1', '2025-01-01', 'l1', 1000, 1, 1, 1),
('ev2', 'desc2', '2025-01-02', 'l2', 2000, 2, 2, 2),
('ev3', 'desc3', '2025-01-03', 'l3', 3000, 3, 3, 3),
('ev4', 'desc4', '2025-01-04', 'l4', 4000, 4, 4, 4),
('ev5', 'desc5', '2025-01-05', 'l5', 5000, 5, 5, 5),
('ev6', 'desc6', '2025-01-06', 'l6', 6000, 6, 6, 6),
('ev7', 'desc7', '2025-01-07', 'l7', 7000, 7, 7, 7),
('ev8', 'desc8', '2025-01-08', 'l8', 8000, 8, 8, 8),
('ev9', 'desc9', '2025-01-09', 'l9', 9000, 9, 9, 9),
('ev10', 'desc10', '2025-01-10', 'l10', 10000, 10, 10, 10),
('ev11', 'desc11', '2025-01-11', 'l11', 11000, 11, 11, 11),
('ev12', 'desc12', '2025-01-12', 'l12', 12000, 12, 12, 12),
('ev13', 'desc13', '2025-01-13', 'l13', 13000, 13, 13, 13),
('ev14', 'desc14', '2025-01-14', 'l14', 14000, 14, 14, 14),
('ev15', 'desc15', '2025-01-15', 'l15', 15000, 15, 15, 15),
('ev16', 'desc16', '2025-01-16', 'l16', 16000, 16, 16, 16),
('ev17', 'desc17', '2025-01-17', 'l17', 17000, 17, 17, 17),
('ev18', 'desc18', '2025-01-18', 'l18', 18000, 18, 18, 18),
('ev19', 'desc19', '2025-01-19', 'l19', 19000, 19, 19, 19),
('ev20', 'desc20', '2025-01-20', 'l20', 20000, 20, 20, 20);

-- Afficher tous les membres du BDE avec leur rôle et leur date d’adhésion.

SELECT * FROM `members_bde`

-- Lister tous les événements prévus après une date donnée.

SELECT * FROM evénements WHERE date_event >= "2025-01-10";

-- Afficher les informations des événements ayant un budget supérieur à 5000 MAD.

SELECT * FROM `evénements` WHERE budget_prévu > 5000;

-- Lister les participants inscrits à un événement spécifique.

SELECT `participant_id` FROM `evénements`;

-- Afficher les sponsors qui ont contribué à des événements ayant un budget supérieur à 3500 MAD.

SELECT * FROM sponsers WHERE ID IN (SELECT sponsor_id FROM evénements WHERE budget_prévu >= 3500);

-- Compter le nombre total d’événements organisés par le BDE.

SELECT COUNT(*) FROM evénements;

-- Calculer la moyenne du budget des événements organisés.

SELECT AVG(budget_prévu) FROM `evénements`;

-- Afficher le nom et la date des événements sponsorisés par un sponsor donné.

SELECT `nom_de_événement`, `date_event` FROM evénements WHERE sponsor_id = 5;

-- Lister les événements qui se déroulent dans un lieu donné.

SELECT * FROM `evénements` WHERE lieu = "l1";

-- Afficher les 5 derniers événements organisés par le BDE.

SELECT * FROM `evénements` ORDER BY `date_event` DESC LIMIT 5;

-- Lister les membres du BDE qui ont rejoint avant une date donnée.

SELECT * FROM members_bde WHERE date_dahesion < '2025-01-10';

-- Compter le nombre total de participants à un événement donné.

SELECT COUNT(`participant_id`) FROM `evénements` WHERE `nom_de_événement` = "ev1";

-- Afficher les noms des sponsors ayant contribué à plus d’un événement

SELECT nom_entreprise FROM sponsers WHERE ID IN (SELECT COUNT(sponsor_id) FROM event_sponsors GROUP BY sponsor_id ORDER BY sponsor_id)

-- Lister les participants inscrits à plusieurs événements.

SELECT nom, prénom FROM participant WHERE ID IN (SELECT COUNT(participant_id) FROM evénements GROUP BY participant_id ORDER BY participant_id) LIMIT 1;

-- Lister les événements n’ayant pas encore de participants inscrits.

SELECT * FROM `evénements` WHERE `participant_id` = null;

-- Afficher les détails du sponsor ayant contribué le plus au budget global des événements.


SELECT * FROM sponsers WHERE ID = ( SELECT sponsor_id FROM evénements GROUP BY sponsor_id ORDER BY SUM(budget_prévu) DESC LIMIT 1);

-- Compter le nombre de sponsors associés à chaque événement.

SELECT ID,( SELECT COUNT(*) FROM event_sponsors WHERE event_sponsors.event_id = evénements.ID ) AS sponsors_count FROM evénements;

-- Lister les événements qui ont au moins 10 participants.

SELECT * FROM evénements WHERE ID IN ( SELECT event_id FROM event_sponsors GROUP BY event_id HAVING SUM(budget_sponsored) >= 10 );

-- Afficher les détails des membres du BDE impliqués dans l’organisation d’événements spécifiques.

SELECT * FROM members_bde WHERE ID = ( SELECT membres_responsables FROM evénements WHERE ID = 4);