CREATE DATABASE vacina;

USE vacina;

-- vacina.usuario definition
CREATE TABLE vacina.usuario (
	codigo_usuario INT auto_increment NOT NULL,
	nome varchar(100) NULL,
	idade INT NULL,
	email varchar(100) NULL,
	sexo CHAR NULL COMMENT 'Coluna para indicar: (M) Masculino, (F) Feminino ou (X) Prefiro não informar',
	nascimento DATE NULL,
	alerta INT NULL COMMENT 'Coluna para indicar se deseja (1) receber ou não receber (0) o alerta da próxima data de vacinação.',
	senha varchar(100) NULL,
	CONSTRAINT USUARIO_PK PRIMARY KEY (codigo_usuario)
)
ENGINE=InnoDB
DEFAULT CHARSET=latin1
COLLATE=latin1_swedish_ci
COMMENT='Tabela de usuarios do sistema'
AUTO_INCREMENT=1;
