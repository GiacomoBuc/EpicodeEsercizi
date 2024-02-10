create schema Epicode_Es1;

create table STORE 
(
STORE_ID integer not null unique primary key,
INDIRIZZO_FISICO varchar (100),
NUMERO_TELEFONO varchar (50)
);

insert into STORE (STORE_ID, INDIRIZZO_FISICO, NUMERO_TELEFONO) values (1, "via roma 123, Milano", "0039021234567");
insert into STORE (STORE_ID, INDIRIZZO_FISICO, NUMERO_TELEFONO) values (2, "corso italia 456, Roma", "0039067654321");
insert into STORE (STORE_ID, INDIRIZZO_FISICO, NUMERO_TELEFONO) values (3, "piazza san marco 789, Venezia", "00390419876543");
insert into STORE (STORE_ID, INDIRIZZO_FISICO, NUMERO_TELEFONO) values (4, "viale degli ulivi 234, Napoli", "00390813456789");
insert into STORE (STORE_ID, INDIRIZZO_FISICO, NUMERO_TELEFONO) values (5, "via torino 567, Torino", "00390118765432");
insert into STORE (STORE_ID, INDIRIZZO_FISICO, NUMERO_TELEFONO) values (6, "corso vittorio emanuele 890, Firenze", "00390552345678");
insert into STORE (STORE_ID, INDIRIZZO_FISICO, NUMERO_TELEFONO) values (7, "piazza del duomo 123, Bologna", "00390518765432");
insert into STORE (STORE_ID, INDIRIZZO_FISICO, NUMERO_TELEFONO) values (8, "via garibaldi 456, Genova", "00390102345678");
insert into STORE (STORE_ID, INDIRIZZO_FISICO, NUMERO_TELEFONO) values (9, "lungarno mediceo 789, Pisa", "00390508765432");
insert into STORE (STORE_ID, INDIRIZZO_FISICO, NUMERO_TELEFONO) values (10, "corso cavour 101, Palermo", "00390912345678");

select * from STORE;

create table IMPIEGATO 
(
CF varchar (50) not null unique,
NOME varchar (100),
TITOLO_STUDIO varchar (100),
RECAPITO varchar (100)
);
insert into IMPIEGATO (CF, NOME, TITOLO_STUDIO, RECAPITO) values ("ABC12345XYZ67890", "Mario Rossi", "Laurea in Economia","mario.rossi@email.com") ;
insert into IMPIEGATO (CF, NOME, TITOLO_STUDIO, RECAPITO) values ("DEF67890XYZ12345", "Anna Verdi", "Diploma di Ragioneria", "anna.verdi@email.com") ;
insert into IMPIEGATO (CF, NOME, TITOLO_STUDIO, RECAPITO) values ("GHI12345XYZ67890", "Luigi Bianchi", "Laurea in Informatica", "luigi.bianchi@email.com") ;
insert into IMPIEGATO (CF, NOME, TITOLO_STUDIO, RECAPITO) values ("JKL67890XYZ12345", "Laura Neri", "Laurea in Lingue", "laura.neri@email.com") ;
insert into IMPIEGATO (CF, NOME, TITOLO_STUDIO, RECAPITO) values ("MNO12345XYZ67890", "Andrea Moretti", "Diploma di Geometra", "andrea.moretti@email.com") ;
insert into IMPIEGATO (CF, NOME, TITOLO_STUDIO, RECAPITO) values ("PQR67890XYZ12345", "Giulia Ferrara", "Laurea in Psicologia", "giulia.ferrara@email.com") ;
insert into IMPIEGATO (CF, NOME, TITOLO_STUDIO, RECAPITO) values ("STU12345XYZ67890", "Marco Esposito", "Diploma di Elettronica", "marco.esposito@email.com") ;
insert into IMPIEGATO (CF, NOME, TITOLO_STUDIO, RECAPITO) values ("VWX67890XYZ12345", "Sara Romano", "Laurea in Giurisprudenza", "sara.romano@email.com") ;
insert into IMPIEGATO (CF, NOME, TITOLO_STUDIO, RECAPITO) values ("YZA12345XYZ67890", "Roberto De Luca", "Diploma di Informatica", "roberto.deluca@email.com") ;
insert into IMPIEGATO (CF, NOME, TITOLO_STUDIO, RECAPITO) values ("BCD67890XYZ12345", "Elena Santoro", "Laurea in Lettere", "elena.santoro@email.com") ;

select * from IMPIEGATO;

create table SERVIZIO_IMPIEGATO
(
CF varchar (20) not null unique primary key,
CODICE_STORE integer not null,
DATA_INIZIO date,
DATA_FINE date,
CARICA varchar (50)
);

insert into SERVIZIO_IMPIEGATO (CF, CODICE_STORE, DATA_INIZIO, DATA_FINE, CARICA) values ("ABC12345XYZ67890", 1, "2023-01-01", "2023-12-31", "Cassiere") ;
insert into SERVIZIO_IMPIEGATO (CF, CODICE_STORE, DATA_INIZIO, DATA_FINE, CARICA) values ("DEF67890XYZ12345", 2, "2023-02-01", "2023-11-30", "Commesso") ;
insert into SERVIZIO_IMPIEGATO (CF, CODICE_STORE, DATA_INIZIO, DATA_FINE, CARICA) values ("GHI12345XYZ67890", 3, "2023-03-01", "2023-10-31", "Magazziniere") ;
insert into SERVIZIO_IMPIEGATO (CF, CODICE_STORE, DATA_INIZIO, DATA_FINE, CARICA) values ("JKL67890XYZ12345", 4, "2023-04-01", "2023-09-30", "Addetto alle vendite") ;
insert into SERVIZIO_IMPIEGATO (CF, CODICE_STORE, DATA_INIZIO, DATA_FINE, CARICA) values ("MNO12345XYZ67890", 5, "2023-05-01", "2023-08-31", "Addetto alle pulizie") ;
insert into SERVIZIO_IMPIEGATO (CF, CODICE_STORE, DATA_INIZIO, DATA_FINE, CARICA) values ("PQR67890XYZ12345", 6, "2023-06-01", "2023-07-31", "Commesso") ;
insert into SERVIZIO_IMPIEGATO (CF, CODICE_STORE, DATA_INIZIO, DATA_FINE, CARICA) values ("STU12345XYZ67890", 7, "2023-07-01", "2023-06-30", "Commesso") ;
insert into SERVIZIO_IMPIEGATO (CF, CODICE_STORE, DATA_INIZIO, DATA_FINE, CARICA) values ("VWX67890XYZ12345", 8, "2023-08-01", "2023-05-31", "Cassiere") ;
insert into SERVIZIO_IMPIEGATO (CF, CODICE_STORE, DATA_INIZIO, DATA_FINE, CARICA) values ("YZA12345XYZ67890", 9, "2023-09-01", "2023-04-30", "Cassiere") ;
insert into SERVIZIO_IMPIEGATO (CF, CODICE_STORE, DATA_INIZIO, DATA_FINE, CARICA) values ("BCD67890XYZ12345", 10, "2023-10-01", "2023-03-31", "Cassiere") ;

select * from SERVIZIO_IMPIEGATO;


create table VIDEOGIOCO 
(
TITOLO varchar (50) not null primary key,
SVILUPPATORE varchar (50),
ANNO_DISTRIBUZIONE date,
COSTO_ACQUISTO double,
GENERE varchar (50),
remake varchar (50) default null
);
insert into VIDEOGIOCO (TITOLO, SVILUPPATORE, ANNO_DISTRIBUZIONE, COSTO_ACQUISTO, GENERE) values ("Fifa 2023", "EA Sports", "2023-01-01", 49.99, "Calcio") ;
insert into VIDEOGIOCO (TITOLO, SVILUPPATORE, ANNO_DISTRIBUZIONE, COSTO_ACQUISTO, GENERE) values ("Assassin's Creed: Valhalla", "Ubisoft", "2020-02-01", 59.99, "Action") ;
insert into VIDEOGIOCO (TITOLO, SVILUPPATORE, ANNO_DISTRIBUZIONE, COSTO_ACQUISTO, GENERE) values ("Super Mario Odyssey", "Nintendo", "2020-03-01", 39.99, "Platform") ;
insert into VIDEOGIOCO (TITOLO, SVILUPPATORE, ANNO_DISTRIBUZIONE, COSTO_ACQUISTO, GENERE) values ("The Last of Us Part II", "Naughty Dog", "2017-04-01", 69.99, "Action") ;
insert into VIDEOGIOCO (TITOLO, SVILUPPATORE, ANNO_DISTRIBUZIONE, COSTO_ACQUISTO, GENERE) values ("Cyberpunk 2077", "CD Projekt Red", "2020-05-01", 49.99, "RPG") ;
insert into VIDEOGIOCO (TITOLO, SVILUPPATORE, ANNO_DISTRIBUZIONE, COSTO_ACQUISTO, GENERE) values ("Animal Crossing: New Horizons", "Nintendo", "2020-06-01", 54.99, "Simulation") ;
insert into VIDEOGIOCO (TITOLO, SVILUPPATORE, ANNO_DISTRIBUZIONE, COSTO_ACQUISTO, GENERE) values ("Call of Duty: Warzone", "Infinity Ward", "2020-07-01", 0.00, "FPS") ;
insert into VIDEOGIOCO (TITOLO, SVILUPPATORE, ANNO_DISTRIBUZIONE, COSTO_ACQUISTO, GENERE) values ("The Legend of Zelda: Breath of the Wild", "Nintendo", "2020-08-01", 59.99, "Action-Adventure") ;
insert into VIDEOGIOCO (TITOLO, SVILUPPATORE, ANNO_DISTRIBUZIONE, COSTO_ACQUISTO, GENERE) values ("Fortnite", "Epic Games", "2017-09-01", 0.00, "Battle Royale") ;
insert into VIDEOGIOCO (TITOLO, SVILUPPATORE, ANNO_DISTRIBUZIONE, COSTO_ACQUISTO, GENERE) values ("Red Dead Redemption 2", "Rockstar Games", "2018-10-01", 39.99, "Action-Adventure") ;

select * from STORE inner join  VIDEOGIOCO;

create table DISPOSIZIONE_VIDEOGIOCO
(
ID_DISP int not null auto_increment primary key,
TITOLO varchar(50) not null,
STORE_ID int not null,
SETTORE INT,
NUM_COPIE int,
foreign key(TITOLO) references videogioco(TITOLO),
foreign key(STORE_ID) references store(STORE_ID)
);
select * from disposizione_videogioco;

INSERT INTO DISPOSIZIONE_VIDEOGIOCO(TITOLO, STORE_ID, SETTORE, NUM_COPIE)
VALUES
("Fifa 2023",1,1,37),
("Fifa 2023",2,1,10),
("Fifa 2023",3,1,4),
("Fifa 2023",4,1,39),
("Fifa 2023",5,1,24),
("Fifa 2023",6,1,14),
("Fifa 2023",7,1,10),
("Fifa 2023",8,1,38),
("Fifa 2023",9,1,27),
("Fifa 2023",10,1,38),
("Assassin's Creed: Valhalla",2,3,14),
("Assassin's Creed: Valhalla",10,3,19),
("Assassin's Creed: Valhalla",1,3,31),
("Assassin's Creed: Valhalla",3,3,33),
("Assassin's Creed: Valhalla",7,3,39),
("Assassin's Creed: Valhalla",9,3,14),
("Super Mario Odyssey",4,2,13),
("Super Mario Odyssey",7,2,19),
("Super Mario Odyssey",9,2,2),
("Super Mario Odyssey",1,2,1),
("Super Mario Odyssey",8,2,5),
("The Last of Us Part II",3,3,12),
("The Last of Us Part II",7,3,33),
("The Last of Us Part II",9,3,19),
("The Last of Us Part II",5,3,2),
("The Last of Us Part II",2,3,1),
("Cyberpunk 2077",6,4,28),
("Cyberpunk 2077",8,4,15),
("Cyberpunk 2077",5,4,26),
("Animal Crossing: New Horizons",9,2,29),
("Animal Crossing: New Horizons",6,2,40),
("Call of Duty: Warzone",6,4,38),
("Call of Duty: Warzone",4,4,32),
("Call of Duty: Warzone",5,4,38),
("The Legend of Zelda: Breath of the Wild",5,2,21),
("The Legend of Zelda: Breath of the Wild",8,2,32),
("The Legend of Zelda: Breath of the Wild",4,2,34),
("Fortnite",4,5,38),
("Fortnite",10,5,33),
("Fortnite",3,5,30),
("Fortnite",2,5,37),
("Fortnite",1,5,5),
("Red Dead Redemption 2",8,5,27),
("Red Dead Redemption 2",3,5,11),
("Red Dead Redemption 2",7,5,36);

SELECT * FROM DISPOSIZIONE_VIDEOGIOCO;