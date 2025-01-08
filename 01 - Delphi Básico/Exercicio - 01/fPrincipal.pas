unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtNome: TEdit;
    edtSobrenome: TEdit;
    Lnome: TLabel;
    Lsobrenome: TLabel;
    cbxIdade: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    mmoListaAdolescentes: TMemo;
    mmoListaAdultos: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    mmoListaIdosos: TMemo;
    Label5: TLabel;
    mmoListaCriancas: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  nome: String;
  sobrenome: String;
  idade: String;
  indexSelecionada: Integer;
  calculoIdade: integer;
  arrayCategorias: array[0..3] of string;
begin

  arrayCategorias[0] := 'Criança';
  arrayCategorias[1] := 'Adolescente';
  arrayCategorias[2] := 'Adulto';
  arrayCategorias[3] := 'Idoso';

  nome := Trim(edtNome.Text);
  sobrenome := Trim(edtSobrenome.Text);
  indexSelecionada := cbxIdade.ItemIndex;
  idade := cbxIdade.Items[indexSelecionada];
  calculoIdade := 2024 - idade.ToInteger();

  if nome = EmptyStr then
  begin
    ShowMessage('Digite o nome do usuário!')
  end else

  if sobrenome = EmptyStr then
  begin
    ShowMessage('Digite o sobrenome do usuário!')
  end else

  begin
    if (calculoIdade >= 0) and (calculoIdade <= 13) then
    begin
      mmoListaCriancas.Lines.Add(
        'Nome Completo: ' + nome + ' ' + sobrenome + sLineBreak +
        'idade: ' + calculoidade.ToString + sLineBreak +
        'Tipo de pessoa: ' + arrayCategorias[0] + sLineBreak +
        ''
      );
    end else

    if (calculoIdade >= 14) and (calculoIdade <= 18) then
    begin
      mmoListaAdolescentes.Lines.Add(
        'Nome Completo: ' + nome + ' ' + sobrenome + sLineBreak +
        'idade: ' + calculoidade.ToString + sLineBreak +
        'Tipo de pessoa: ' + arrayCategorias[1] + sLineBreak +
        ''
      );
    end else

    if (calculoIdade >= 19) and (calculoIdade <= 64) then
    begin
      mmoListaAdultos.Lines.Add(
        'Nome Completo: ' + nome + ' ' + sobrenome + sLineBreak +
        'idade: ' + calculoidade.ToString + sLineBreak +
        'Tipo de pessoa: ' + arrayCategorias[2] + sLineBreak +
        ''
      );
    end else

    if (calculoIdade >= 65) then
    begin
      mmoListaIdosos.Lines.Add(
        'Nome Completo: ' + nome + ' ' + sobrenome + sLineBreak +
        'idade: ' + calculoidade.ToString + sLineBreak +
        'Tipo de pessoa: ' + arrayCategorias[3] + sLineBreak +
        ''
      );
    end;
  end;
end;

end.
