create schema Epicode_es2;

create table PRODOTTO
(
ID_Prodotto int primary key not null,
NomeProdotto varchar (100),
Prezzo double
) ;

insert into PRODOTTO (ID_Prodotto, NomeProdotto, Prezzo) values 
(1, 'Tablet', '300.00'),
(2, 'Mouse', '20.00'),
(3, 'Tastiera', '25.00'),
(4, 'Monitor', '180.00'),
(5, 'HHD', '90.00'),
(6, 'SSD', '200.00'),
(7, 'RAM', '100.00'),
(8, 'Router', '80.00'),
(9, 'Webcam', '45.00'),
(10, 'GPU', '1250.00'),
(11, 'Trackpad', '500.00'),
(12, 'Techmagazine', '5.00'),
(13, 'Martech', '50.00');

select * from prodotto;

create table CLIENTE
(
ID_Cliente int primary key not null,
Nome varchar (50),
Email varchar (100)
);

insert into CLIENTE(ID_Cliente, Nome , Email ) values 
(1, 'Antonio', ' '),
(2, 'Battista', 'battista@mailmail.it'),
(3, 'Maria', 'maria@posta.it'),
(4, 'Franca', 'franca@lettere.it'),
(5, 'Ettore', ' '),
(6, 'Arianna', 'arianna@posta.it'),
(7, 'Piero', 'piero@lavoro.it');

select * from cliente;

update cliente set email = 'antonio@posta.it' where id_cliente = 1;
update cliente set email = 'ettore@lettere.it' where id_cliente = 5;

create table ORDINE
(
ID_Ordine int not null primary key,
ID_Prodotto int not null,
ID_Cliente int,
Quantità int,
foreign key (ID_Prodotto) references prodotto (ID_Prodotto),
foreign key (ID_Cliente) references cliente (ID_Cliente)
);


insert into ORDINE (ID_Ordine, ID_Prodotto, Quantità) values
(1, 2, 10),
(2, 6, 2),
(3, 5, 3),
(4, 1, 1),
(5, 9, 1),
(6, 4, 2),
(7, 11, 6),
(8, 10, 2),
(9, 3, 3),
(10, 3, 1),
(11, 2, 1);

select * from ordine;