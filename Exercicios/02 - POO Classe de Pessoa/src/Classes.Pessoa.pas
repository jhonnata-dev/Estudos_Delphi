unit Classes.Pessoa;

interface

type
  TPessoa = class
  private
    FPessoa: string;
    FCPF: String;
    FIdade: Integer;
    procedure SetCPF(const Value: String);
    procedure SetIdade(const Value: Integer);
    procedure SetPessoa(const Value: string);
    { private declarations }

  protected
    { protected declarations }

  public
    { public declarations }
    property Pessoa: string read FPessoa write SetPessoa;
    property Idade: Integer read FIdade write SetIdade;
    property CPF: String read FCPF write SetCPF;

    procedure ExibirDados;

    constructor Create;

  published
    { published declarations }

  end;

implementation

{ TPessoa }
uses
  Vcl.Dialogs, System.SysUtils;

constructor TPessoa.Create;
begin
  Pessoa := 'jhon';
  Idade := 23;
  CPF := '1234567890';

end;

procedure TPessoa.ExibirDados;
begin
  ShowMessage('Nome: ' + Pessoa + sLineBreak +
              'idade: ' + Idade.ToString + sLineBreak +
              'CPF: ' + CPF);
end;

procedure TPessoa.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetPessoa(const Value: string);
begin
  FPessoa := Value;
end;

end.
