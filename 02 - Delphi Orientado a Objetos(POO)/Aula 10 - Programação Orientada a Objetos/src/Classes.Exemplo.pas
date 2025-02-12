unit Classes.Exemplo;

interface

type
  TExemplo = class
  {estritamente privada sem acesso das classes amigas}
  strict private
    FPrivado: string;

  {estritamente protegido sem acesso de classe amiga} 
  strict protected 
    FProtegido: string;
    
  private
    { private declarations visivel para a classe e classes amigas}


  protected
    { protected declarations visivel para a classe, classes amigas e tambémos herdeiros da classe}
    

  public
    { public declarations visivel a qualquer um que referencie a classe}
    FPublico: string;
    FPublicada: string;
    procedure SetPublicada(const Value: string);

    function GetPrivado: string;

  published
    { published declarations visivel e publicado no object inspector}
    property Publicada: string read FPublicada write SetPublicada;

  end;

  TSubExemplo = class(TExemplo)
  public
    function GetProtegidoExemplo: string;
    function VerPrivadoExemplo: string;

  end;

  TAmiga = class
    Exe : TExemplo;

  public
    function AmigaVe : string; 
  end;

implementation

{ TExemplo }

function TExemplo.GetPrivado: string;
begin
  Result := FPrivado;

end;

procedure TExemplo.SetPublicada(const Value: string);
begin
  FPublicada := Value;
end;

{ TSubExemplo }

function TSubExemplo.GetProtegidoExemplo: string;
begin
  Result := FProtegido;

end;

function TSubExemplo.VerPrivadoExemplo: string;
begin
  Result := FPrivado;
end;

{ TAmiga }

function TAmiga.AmigaVe: string;
begin
  Self.Exe.
end;

end.
