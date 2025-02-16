unit uAula17;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    btnGravarAluno: TButton;
    btnLerAlunos: TButton;
    edtAluno: TEdit;
    edtPrimeiraNota: TEdit;
    edtSegundaNota: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mmoRegistro: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure btnGravarAlunoClick(Sender: TObject);
    procedure btnLerAlunosClick(Sender: TObject);
  private
    procedure LimparCampos;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

type
  rgAluno = record
    nome: string[35];
    nota1: Double;
    nota2: Double;
end;

var
  aluno: array of rgAluno;
  n: Integer = 0;
  x: rgAluno;

procedure TForm1.btnGravarAlunoClick(Sender: TObject);
begin
  { verifica se todos os campos foram informados }
  if (edtAluno.Text <> '') and (edtPrimeiraNota.Text <> '') and (edtSegundaNota.Text <> '') then
  begin
    x.nome := edtAluno.Text;
    x.nota1 := StrToFloat(edtPrimeiraNota.Text);
    x.nota2 := StrToFloat(edtSegundaNota.Text);
    inc(n); // redimensiona o vetor "aluno" aumentando uma posição
            // para adicionar o novo aluno no final do conjunto
    SetLength(aluno, n);
    aluno[n-1] := x;
    mmoRegistro.Lines.Add(x.nome + ', gravado com sucesso.');

    LimparCampos;
  end
  else
  begin
    ShowMessage('Campo(s) não informado(s)');
  end;

end;

procedure TForm1.btnLerAlunosClick(Sender: TObject);
var
  nreg, i: integer;
  media: real;
begin
  mmoRegistro.Lines.Add('');
  nreg := 0;

  {processando e exibindo dados recuperados}
  for i := 0 to n - 1 do
  begin
    x := aluno[i];
    nreg := nreg + 1;

    media := (x.nota1 + x.nota2) / 2;
    mmoRegistro.Lines.Add('Registro Nro.: ' + IntToStr(nreg));
    mmoRegistro.Lines.Add('Nome do Aluno: ' + x.nome);
    mmoRegistro.Lines.Add('1a. nota.....: ' + Format('%.2f', [x.nota1]));
    mmoRegistro.Lines.Add('2a. nota.....: ' + Format('%.2f', [x.nota2]));
    mmoRegistro.Lines.Add('Média........: ' + Format('%.2f', [media]));
  end;


  if (media >= 6.0) then
  begin
    mmoRegistro.Lines.Add('Situação.....: Aprovado');
  end
  else
  begin
    mmoRegistro.Lines.Add('Situação.....: Reprovado');
  end;

end;

procedure TForm1.LimparCampos;
begin
  edtAluno.Clear;
  edtPrimeiraNota.Clear;
  edtSegundaNota.Clear;
  edtAluno.SetFocus;
end;

end.

