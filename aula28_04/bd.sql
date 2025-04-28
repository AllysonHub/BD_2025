CREATE DATABASE etecmcm2;

USE etecmcm2;


CREATE TABLE produtos (
    id_prod int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255),
    qtde int,
    preco decimal(10,2),
    marca varchar(255),
    fk_categoria_id_categ int
);

CREATE TABLE categoria (
    id_categ int PRIMARY KEY AUTO_INCREMENT,
    nome_categ varchar(255)
);
 
ALTER TABLE produtos ADD CONSTRAINT FK_produtos_2
    FOREIGN KEY (fk_categoria_id_categ)
    REFERENCES categoria (id_categ)
    ON DELETE RESTRICT;