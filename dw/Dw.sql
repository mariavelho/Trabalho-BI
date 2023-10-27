DROP SCHEMA IF EXISTS paises;
CREATE SCHEMA paises;
USE paises;


CREATE TABLE IF NOT EXISTS `pais` (
  `paisId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `paisNome` varchar(50) NOT NULL,
  `paisName` varchar(50) NOT NULL,
  `ContinenteId` tinyint(3) unsigned NOT NULL ,
  PRIMARY KEY (`paisId`),
  KEY (`ContinenteId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=253;



CREATE TABLE IF NOT EXISTS `continente` (
  `ContinenteId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ContinenteNome` varchar(50) NOT NULL,
  PRIMARY KEY (`ContinenteId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=253 ;


ALTER TABLE pais
ADD CONSTRAINT fk_chave_estrangeira_continente
FOREIGN KEY (ContinenteId) REFERENCES continente(ContinenteId);




CREATE TABLE SiglaBacen(
  `paisId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  sigla  VARCHAR(2) NOT NULL,
  bacen  INTEGER  NOT NULL,
  PRIMARY KEY (`paisId`)
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=253;



ALTER TABLE SiglaBacen
ADD CONSTRAINT fk_chave_estrangeira_sigla
FOREIGN KEY (paisId) REFERENCES pais(paisId);

CREATE TABLE IF NOT EXISTS populacao(
   `paisId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
   `Population2022` INTEGER  NOT NULL,
   `Population2020` INTEGER  NOT NULL,
   PRIMARY KEY (`paisId`)
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=253;


ALTER TABLE populacao
ADD CONSTRAINT fk_chave_estrangeira_populacao
FOREIGN KEY (paisId) REFERENCES pais(paisId);


CREATE TABLE dadosSalario(
  `paisId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  media_salarial varchar(15) NOT NULL,
  mediana_salarial  varchar(15) NOT NULL,
  maior_salario varchar(15) NOT NULL,
  menor_salario  varchar(15) NOT NULL,
  tipo_pagamento varchar(15) NOT NULL,
  PRIMARY KEY (`paisId`)
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=253;



ALTER TABLE dadosSalario
ADD CONSTRAINT fk_chave_estrangeira_salario
FOREIGN KEY (paisId) REFERENCES pais(paisId);


DROP TABLE if exists dadosVacinasCovid;
CREATE TABLE dadosVacinasCovid(
  `paisId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  dataPrimeiraVacina date,
  totalVacinacoes DOUBLE NOT NULL,
  TotalUltimaDose DOUBLE NOT NULL,
  PRIMARY KEY (`paisId`)
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=253;

ALTER TABLE dadosVacinasCovid
ADD CONSTRAINT fk_chave_estrangeira_vacinas
FOREIGN KEY (paisId) REFERENCES pais(paisId);