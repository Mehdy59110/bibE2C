/*
Se connecter en root en root windows
mysql-h localhost -u root -p

en root sous Linux
sudo mysql

se connecter avec un compte utilisateur
my sql -h localhost -u pn_livres_admin -p

Quitter Mysql
exit
*/

/* Voir la liste des bases de données*/
SHOW DATABASES;
/* Crées une base de données*/ 
CREATE DATABASE nom_bdd;
/* Supprimer une base de données*/
DROP DATABASE nom_bdd;
/* utiliser une base de données*/
USE nom_bdd /* attention, seule commande sans ";"*/



/* crées un utilisateur*/
CREATE USER 'pn_livres_admin'@'localhost' IDENTIFIED BY "j7V5Ljwx*3+6$X";

/* lui donner droits*/
GRANT ALL PRIVILEGES ON PN_LIVRES.* TO 'pn_livres_admin'@'localhost';

/* une fois qu'on est dans la base de données*/

/* voir les tables*/
SHOW TABLES;

/* création de table */
CREATE TABLE IF NOT EXISTS user(
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pseudo VARCHAR(24) NOT NULL UNIQUE,
    mdp VARCHAR(27) NOT NULL,
    avatar VARCHAR(255),
    mail VARCHAR(255) NOT NULL UNIQUE 
)ENGINE=InnoDB;

INSERT INTO user (mdp, pseudo, mail)
VALUES ("azerty", "motdepasse", "noreply@nowhere.fr");

INSERT INTO user (mdp, pseudo, mail)
VALUES ("00000", "admin", "admin@nowhere.fr"),
("misterbear","groaaaar","me@misterbear.fr"),
("carambar","haribo","sugar@hotmail.fr");

SELECT * FROM user;
SELECT pseudo, mail, avatar FROM user;
SELECT pseudo, mail FROM user WHERE pseudo = "haribo";
SELECT pseudo, mail, mdp FROM user WHERE pseudo = "haribo";
SELECT pseudo, mail, avatar FROM user ORDER BY mail ASC;