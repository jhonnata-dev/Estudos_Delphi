CREATE TABLE Banco (
	BancoId INT IDENTITY(1,1) NOT NULL,
	CodBanco VARCHAR(03) UNIQUE NOT NULL,
	DescBanco VARCHAR(50) NOT NULL,
	WebSite VARCHAR(100),

	PRIMARY KEY (BancoId)
);

INSERT INTO banco (CodBanco, DescBanco, WebSite) VALUES ('001', 'Banco do Brasil S.A', 'www.bb.com.br');
INSERT INTO banco (CodBanco, DescBanco, WebSite) VALUES ('003', 'Banco da Amazonia S.A', 'www.bancoamazonia.com.br');
INSERT INTO banco (CodBanco, DescBanco, WebSite) VALUES ('004', 'Banco do Nordeste do Brasil S.A', 'www.banconordeste.gov.br');
INSERT INTO banco (CodBanco, DescBanco, WebSite) VALUES ('194', 'Caixa Econômica Federal', 'www.gov.br');