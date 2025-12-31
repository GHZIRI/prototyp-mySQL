drop database if exists bloge; 
create database bloge;
use bloge;
create table User(
id_user int auto_increment primary key,
name_user varchar(100) not null,
email varchar(100) not null unique,
pasword varchar(250) not null 
);

create table Catalog(
ID_catalog int auto_increment primary key,
Name_catalog varchar(100) not null unique
);

CREATE TABLE Article ( 
id_article int auto_increment primary key,
Titel varchar(100) not null,
contenu text not null,
date_publication datetime not null,
status enum('brouillon', 'publié') not null,
id_user int not null,
id_catalog int not null,
foreign key(id_user) references user (id_user),
foreign key(id_catalog) references catalog (id_catalog)
 );
 
 create table commint (
 ID_commont int auto_increment primary key,
 contenu text not null,
 date_publication_commint datetime not null,
 ID_user int,
 id_article int,
 foreign key (id_user) references user (id_user),
 foreign key(id_article) references article (id_article)
 );
create index namex on user (name_user);
create index titelx on Article (Titel);
 