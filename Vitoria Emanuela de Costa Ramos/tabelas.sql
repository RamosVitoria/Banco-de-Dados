CREATE TABLE Advogados(
advogado_id INT NOT NULL primary KEY,
nome VARCHAR (100),
data_nascimento DATE,
email VARCHAR (50),
telefone VARCHAR (18)
)ENGINE = InnoDB;


CREATE TABLE OAB(
oab_id INT NOT NULL primary KEY,
estado VARCHAR (2)
)ENGINE = InnoDB;


CREATE TABLE Carteira(
numero INT NOT NULL primary KEY,
id_advogado INT NOT NULL,
id_oab INT NOT NULL,
data_emissao date,
status ENUM  ("Ativo","Inativo"),
CONSTRAINT fk_advogado FOREIGN KEY (id_advogado) REFERENCES Advogados(advogado_id),
CONSTRAINT fk_oab FOREIGN KEY (id_oab) REFERENCES OAB(oab_id)
)ENGINE = InnoDB;