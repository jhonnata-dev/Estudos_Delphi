unit uAula07;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
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
  soma, subtracao, multiplicacao, divisaoDeInteiros, restoDaDivisao : Integer;
  divisao : Double;
begin
  soma := 10 + 11;
  subtracao := 10 - 11;
  multiplicacao := 10 * 11;
  divisao := 8 / 2;
  divisaoDeInteiros := 8 div 2;
  restoDaDivisao := 5 mod 2;

  Memo1.Lines.Add(soma.ToString);
  Memo1.Lines.Add(subtracao.ToString);
  Memo1.Lines.Add(multiplicacao.ToString);
  Memo1.Lines.Add(divisao.ToString);
  Memo1.Lines.Add(divisaoDeInteiros.ToString);
  Memo1.Lines.Add(restoDaDivisao.ToString);

  {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 -> Integer}
  {0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9 -> Double, Decimal, Currency, float}

end;

end.
