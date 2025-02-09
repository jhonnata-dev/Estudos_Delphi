unit CapacitacaoPOO.Classes.Usuario;

interface
uses CapacitacaoPOO.Classes.Pessoa;

  // A classe TUsuario está herdando a classe TPessoa
  type TUsuario = class(TPessoa)
    NomeAcesso: string;
    Senha: string;
  end;

implementation

end.
