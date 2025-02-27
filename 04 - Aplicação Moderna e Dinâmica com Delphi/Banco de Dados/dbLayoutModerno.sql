USE dbLayoutModerno;

/* Script do comando SelectTopNRows de SSMS */
SELECT TOP (1000) [menuId],
	[titulo],
	[nomeImagem],
	[nomeFormulario],
	[processo]

   FROM [dbLayoutModerno].[dbo].[Menu]