unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnCalcular: TButton;
    edtPrimeiroValor: TEdit;
    edtSegundoValor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
const nome = 'Vagner'; // DECLARANDO VARIAVEL CONSTANTE

var
  {idade: Integer;
  nome: String;
  sobreNome: String;
  letra: Char;
  verdade: Boolean;
  preco: Real;
  preco2: Real;
  resultado: Real;}




  primeiroValor: Real;
  segundoValor: Real;
  resultadoSoma: Real;
  resultadoSubtracao: Real;
  resultadoMultiplicacao: Real;
  resultadoDivisao: Real;

begin

  primeiroValor := StrToFloat(edtPrimeiroValor.Text);
  segundoValor := StrToFloat(edtSegundoValor.Text);

  resultadoSoma := primeiroValor + segundoValor;
  resultadoSubtracao := primeiroValor - segundoValor;
  resultadoMultiplicacao := primeiroValor * segundoValor;
  resultadoDivisao := primeiroValor / segundoValor;

  ShowMessage(
  'Aula do: ' + nome + sLineBreak +
  'O resultado das operações segue abaixo: ' + sLineBreak +
  'Soma: ' + FloatToStr(resultadoSoma) + sLineBreak +
  'Subtração: ' + FloatToStr(resultadoSubtracao) + sLineBreak +
  'Multiplicação: ' + FloatToStr(resultadoMultiplicacao) + sLineBreak +
  'Divisão: ' + FloatToStr(resultadoDivisao)
  );





  {idade := 20;
  nome := 'Jhon';
  sobreNome := 'Damasco';
  letra := 'J';
  verdade := True;
  preco := 99.99;
  preco2 := 100.00;

  resultado := preco + preco2;
  ShowMessage('Nome completo: ' + nome + ' ' + sobreNome);
  ShowMessage('O resultado da soma entre ' + FloatToStr(preco) + ' e ' + FloatToStr(preco2) + ' é: ' + FloatToStr(resultado));}
end;

end.
