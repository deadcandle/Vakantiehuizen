
drop database vakantiehuizen;
create database vakantiehuizen;
use vakantiehuizen;

create table teksten (
	id int auto_increment,
    pagina varchar(255),
    titel varchar(255),
    tekst varchar(255),
    primary key (id)
);

create table huizen (
	id int auto_increment,
    huis varchar(255),
    personen int(6),
    omschrijving varchar(255),
    prijs float(6),
    primary key (id)
);

insert into teksten (pagina, titel, tekst) values ("index", "de titel Homepagina", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero nam eaque, corporis nostrum quo qui similique quidem culpa explicabo maiores laboriosam dolore alias eveniet, facilis consequatur tempore esse distinctio repudiandae.");
insert into teksten (pagina, titel, tekst) values ("huizen", "de titel Huizen", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero nam eaque, corporis nostrum quo qui similique quidem culpa explicabo maiores laboriosam dolore alias eveniet, facilis consequatur tempore esse distinctio repudiandae.");
insert into teksten (pagina, titel, tekst) values ("contact", "de titel Contact", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero nam eaque, corporis nostrum quo qui similique quidem culpa explicabo maiores laboriosam dolore alias eveniet, facilis consequatur tempore esse distinctio repudiandae.");


-- Voeg de huizen toe
insert into huizen (huis, personen, omschrijving, prijs) values ("Huisplaats1", 8, "dit is een huis omschrijving", 95.00);
insert into huizen (huis, personen, omschrijving, prijs) values ("Huisplaatsvoorbeeld2", 12, "dit is een huis omschrijving", 120.00);
insert into huizen (huis, personen, omschrijving, prijs) values ("Huisvoorbeeld3", 10, "dit is een huis omschrijving", 110.50);
insert into huizen (huis, personen, omschrijving, prijs) values ("Huis Plaats4", 16, "dit is een huis omschrijving", 135.95);