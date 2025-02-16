unit uAula16;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCriar: TButton;
    btnLimpar: TButton;
    edtTamanho: TEdit;
    lblTamanho: TLabel;
    mmoResultado: TMemo;
    rdgTipoDeArray: TRadioGroup;
    procedure btnCriarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure rdgTipoDeArrayClick(Sender: TObject);
  private
    vetor: array of integer;
    matriz: array of array of integer;
    tamanho: integer;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.rdgTipoDeArrayClick(Sender: TObject);
begin

end;

procedure TForm1.btnCriarClick(Sender: TObject);
var
  i, j : Integer;
  s : String;
begin
  tamanho := StrToInt(edtTamanho.Text);
  mmoResultado.Lines.Clear;
  Randomize;
  if (rdgTipoDeArray.ItemIndex = -1) then
  begin
    ShowMessage('Precisa selecionar o tipo do array');
    Abort;
  end;

  if (rdgTipoDeArray.ItemIndex = 0) then
  begin
    SetLength(vetor, tamanho); // cria o vetor dinamicamente
    for i := Low(vetor) to High(vetor) do
    begin
      vetor[i] := random(100);    { o primeiro "%2d" será substituido pelo "i" }
      mmoResultado.Lines.Add(Format('vetor[%2d] = %2d', [i, vetor[i]]));
                                  { o segundo "%2d" será substituido pelo "vetor[i]" }
    end;
  end
  else
  begin
    SetLength(matriz, tamanho); // cria a matriz dinamicamente
    for i := Low(matriz) to High(matriz) do
    begin
      s := Format('%2d. linha = ', [i + 1]); // cria a linha de matriz dinamicamente
      SetLength(matriz[i], tamanho); // Seta o tamanho da linha

      for j := Low(matriz[i]) to High(matriz[i]) do
      begin
        matriz[i, j] := random(100);
        s := s + Format('%2d ', [matriz[i, j]]);

      end;
      mmoResultado.Lines.Add(s);

    end;
  end;
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  mmoResultado.Clear;
end;


end.

