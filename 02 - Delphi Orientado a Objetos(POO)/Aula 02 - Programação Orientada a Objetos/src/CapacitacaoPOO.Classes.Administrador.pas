unit CapacitacaoPOO.Classes.Administrador;

interface
uses CapacitacaoPOO.Classes.Usuario;

  // A classe TUsuario est� herdando a classe TPessoa
  type TAdministrador = class(TUsuario)
    procedure Excluir; // met�do excluir
    procedure Inserir; // met�do inserir
  end;

implementation

{ TAdministrador }

procedure TAdministrador.Excluir;
begin

end;

procedure TAdministrador.Inserir;
begin

end;

end.
