USE dbLayoutModerno;

CREATE TABLE Cartao(
	cartaoId INT IDENTITY NOT NULL,
	decricaoCartao CHAR(30) NOT NULL,
	
	PRIMARY KEY(cartaoId)
)

INSERT INTO Cartao (decricaoCartao) VALUES ('Cartão teste')

SELECT cartaoId, decricaoCartao FROM Cartao

SELECT cartaoId, decricaoCartao FROM Cartao WHERE cartaoId= :cartaoId;

SELECT * FROM Menu

UPDATE Menu SET nomeFormulario='TfrmCartaoListagem' WHERE menuId=8