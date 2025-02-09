unit Classes.Pessoa;

interface

type TPessoa = class
  private
    FNome: string;
    FTelefone: string;

    procedure SetNome(const Value: string);
    procedure SetTelefone(const Value: string);
    function GetTelefone: string;
    function GetNome: string;

  public
    var FRG: string; // Não é comum campos públicos

    property Nome : string read GetNome write SetNome;
    property Telefone : string read GetTelefone write SetTelefone;

end;


implementation

{ TPessoa }
uses SysUtils;

function TPessoa.GetNome: string;
begin
  Result := UpperCase(FNome);
end;

function TPessoa.GetTelefone: string;
begin
  Result := FTelefone;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  if not Value.IsEmpty then
  begin
    FNome := Value;
  end
  else
  begin
    raise Exception.Create('Não pode ser vazio');
  end;

end;

procedure TPessoa.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

end.
