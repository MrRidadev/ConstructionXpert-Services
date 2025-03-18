create database Construction;
use Construction;

create table Projets(
                        id_projet int primary key auto_increment,
                        nom varchar(100),
                        description varchar (255),
                        date_bebut date,
                        date_fin date,
                        budget float
);

create table taches (
                        id_tache int primary key auto_increment,
                        id_projet int,
                        nom_tache varchar(255),
                        description varchar(255),
                        date_debut date,
                        date_fin date,
                        ressource varchar(255),
                        foreign key (id_projet) references projets(id_projet)
);

create table Ressources (
                            id_res int primary key auto_increment,
                            id_tache int,
                            nom_res varchar(255),
                            type varchar(255),
                            quantite int,
                            fornisour varchar(255)
);