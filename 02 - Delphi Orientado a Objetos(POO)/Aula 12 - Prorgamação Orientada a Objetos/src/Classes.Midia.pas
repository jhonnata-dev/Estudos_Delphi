unit Classes.Midia;

interface

uses Modelo.Player;

type TMidia = class(TInterfacedObject)
     private
    FNomeArquivo: string;
    FTipoArquivo: string;
    procedure SetNomeArquivo(const Value: string);
    procedure SetTipoArquivo(const Value: string);
       { private declarations }
     protected
       { protected declarations }
     public
       { public declarations }

     published
       { published declarations }
       property TipoArquivo : string read FTipoArquivo write SetTipoArquivo;
       property NomeArquivo : string read FNomeArquivo write SetNomeArquivo;

       function Avancar : integer; virtual; abstract;

     end;

implementation

{ TMidia }

procedure TMidia.SetNomeArquivo(const Value: string);
begin
  FNomeArquivo := Value;
end;

procedure TMidia.SetTipoArquivo(const Value: string);
begin
  FTipoArquivo := Value;
end;

end.
