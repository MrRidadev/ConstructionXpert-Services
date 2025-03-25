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
                        foreign key (id_projet) references projets(id_projet) on delete cascade
);

INSERT INTO taches (id_projet, nom_tache, description, date_debut, date_fin, ressource)
VALUES
    (21, 'Étude de sol', 'Analyser la qualité du sol avant construction', '2024-04-01', '2024-04-05', 'Ahmed El Idrissi');
INSERT INTO taches (id_projet, nom_tache, description, date_debut, date_fin, ressource)
VALUES (21, 'Fondations', 'Construction des fondations en béton armé', '2024-04-06', '2024-04-15', 'Fatima Zahra'),
       (18, 'Installation échafaudages', 'Mettre en place les échafaudages pour la façade', '2024-05-01', '2024-05-03', 'Youssef Amrani'),
       (21, 'Peinture intérieure', 'Peindre les murs et plafonds', '2024-05-04', '2024-05-10', 'Salma Benjelloun');
create table Ressources (
                            id_res int primary key auto_increment,
                            id_tache int,
                            nom_res varchar(255),
                            type varchar(255),
                            quantite int,
                            fornisour varchar(255)
);


select * from taches
where id = ?;