USE dbLayoutModerno;

INSERT Banco (CodBanco, DescBanco, WebSite) VALUES ('001', 'Banco do Brasil S.A', 'www.bb.com.br')
INSERT Banco (CodBanco, DescBanco, WebSite) VALUES ('003', 'Banco da Amazonia S.A', 'www.bancoamazonia.com.br')
INSERT Banco (CodBanco, DescBanco, WebSite) VALUES ('004', 'Banco do Nordeste do Brasil S.A', 'www.banconordeste.gov.br')
INSERT Banco (CodBanco, DescBanco, WebSite) VALUES ('104', 'Caixa Ecônomica Federal', 'www.caixa.gov.br')


SELECT BancoId, CodBanco, DescBanco, WebSite FROM Banco;