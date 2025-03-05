USE dbLayoutModerno;

CREATE TABLE Usuario(
	usuarioId INT IDENTITY(1,1) NOT NULL,
	nomeUsuario VARCHAR(30) NOT NULL UNIQUE,
	senha VARCHAR(30) NOT NULL,

	PRIMARY KEY(usuarioId)
)

SELECT * FROM Usuario

INSERT INTO Usuario (nomeUsuario, senha) VALUES ('teste', 'mudar@123')
INSERT INTO Usuario (nomeUsuario, senha) VALUES ('teste2', 'mudar@123')