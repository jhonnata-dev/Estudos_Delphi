unit Classes.Conexao;

interface

type
  TCOnexao = class
  private
    FEnderecoBD: string;
    procedure SetEnderecoBD(const Value: string);
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    class function VerificaBD : boolean;

  published
    { published declarations }
    property EnderecoBD: string read FEnderecoBD write SetEnderecoBD;

  end;

implementation

{ TCOnexao }
uses SysUtils;

procedure TCOnexao.SetEnderecoBD(const Value: string);
begin
  FEnderecoBD := Value;
end;

class function TCOnexao.VerificaBD: boolean;
begin
  Result := FileExists('C:\Users\jplay\Documents\lista_de_frutas_mercado.text');
end;

end.
