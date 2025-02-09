unit CapacitacaoPOO.Classes.Cliente;

interface
uses CapacitacaoPOO.Classes.Pessoa;

  // A classe TCliente está herdando a classe TPessoa
  type TCliente = class(TPessoa)
    CNPJ: string;
    RazaoSocial: string;
  end;

implementation

end.
