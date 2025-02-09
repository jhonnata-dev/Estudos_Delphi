unit CapacitacaoPOO.Classes.Administrador;

interface
uses CapacitacaoPOO.Classes.Usuario;

  // A classe TUsuario está herdando a classe TPessoa
  type TAdministrador = class(TUsuario)
    procedure Excluir; // metódo excluir
    procedure Inserir; // metódo inserir
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
