unit uAula18;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Calcular: TButton;
    edtNome: TEdit;
    edtIdade: TEdit;
    edtCodigo: TEdit;
    edtSomaIdade: TEdit;
    edtResultado: TEdit;
    procedure CalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Classes.Pessoa;


procedure TForm1, Classes.Pessoa, Classes.Pessoa, Classes.Pessoa.CalcularClick(Sender: TObject);
var
  oPessoa : TPessoa;
begin
  Try
    oPessoa := TPessoa.Create;
    oPessoa.codigo := StrToInt(edtCodigo.Text);
    oPessoa.nome := edtNome.Text;
    oPessoa.idade := StrToInt(edtIdade.Text);

    edtResultado.Text := oPessoa.SaberIdade(StrToInt(edtSomaIdade.Text)).ToString();

  Finally
    FreeAndNil(oPessoa);

  End;



end;

end.
