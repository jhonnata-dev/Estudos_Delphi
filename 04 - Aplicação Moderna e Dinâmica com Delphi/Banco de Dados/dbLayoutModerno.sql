USE dbLayoutModerno;

CREATE TABLE Menu (
	menuId INT IDENTITY(1,1) NOT NULL,
	titulo VARCHAR(25) NOT NULL,
	nomeImagem VARCHAR(100) NOT NULL,
	nomeFormulario VARCHAR(50) NOT NULL,
	processo CHAR(3) NOT NULL,
	
	PRIMARY KEY(menuId)
);

/* Script do comando SelectTopNRows de SSMS */
SELECT TOP (1000) [menuId],
	[titulo],
	[nomeImagem],
	[nomeFormulario],
	[processo],

   FROM [dbLa