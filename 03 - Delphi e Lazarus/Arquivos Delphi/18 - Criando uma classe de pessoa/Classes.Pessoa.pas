unit Classes.Pessoa;

interface

type TPessoa = class
     private
       { private declarations }
       Fcodigo : Integer;
       Fnome   : String;
       Fidade  : Integer;
    procedure Setcodigo(const Value: Integer);
    procedure Setidade(const Value: Integer);
    procedure Setnome(const Value: String);

     protected
       { protected declarations }
     public
       { public declarations }
       constructor Create;
       destructor Destroy; override;

       function SaberIdade(qtdAnos: Integer) : Integer;

       property codigo  : Integer read Fcodigo write Setcodigo;
       property nome    : String  read Fnome   write Setnome;
       property idade   : Integer read Fidade  write Setidade;

     published
       { published declarations }
     end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

function TPessoa.SaberIdade(qtdAnos: Integer): Integer;
begin
  Result := Fidade + qtdAnos;
end;

procedure TPessoa.Setcodigo(const Value: Integer);
begin
  Fcodigo := Value;
end;

procedure TPessoa.Setidade(const Value: Integer);
begin
  Fidade := Value;
end;

procedure TPessoa.Setnome(const Value: String);
begin
  Fnome := Value;
end;

end.
