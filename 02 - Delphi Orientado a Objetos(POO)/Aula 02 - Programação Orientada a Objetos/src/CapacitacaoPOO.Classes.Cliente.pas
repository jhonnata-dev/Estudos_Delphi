unit CapacitacaoPOO.Classes.Cliente;

interface
uses CapacitacaoPOO.Classes.Pessoa;

  // A classe TCliente est� herdando a classe TPessoa
  type TCliente = class(TPessoa)
    CNPJ: string;
    RazaoSocial: string;
  end;

implementation

end.
