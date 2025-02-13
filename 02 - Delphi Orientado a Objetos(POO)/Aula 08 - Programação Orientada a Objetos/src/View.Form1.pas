unit View.Form1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  SALARIOMINIMO = 1212;
  VALORDIA = 40.40;
  VALORHORA = 5.51;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Classes.Trabalhador;

procedure TForm1.Button1Click(Sender: TObject);
var
  lTrabaladorCLT, lTrabalhadorDiario : TTrabalhador;

begin

  lTrabaladorCLT := TTrabalhador.Create;
  lTrabaladorCLT.Salario := lTrabaladorCLT.CalcularSalario(SALARIOMINIMO, 1);

  Edit1.Text := lTrabaladorCLT.Salario.ToString;

  lTrabalhadorDiario := TTrabalhador.Create;
  lTrabalhadorDiario.Salario := lTrabalhadorDiario.CalcularSalario(10, VALORDIA);

  Edit2.Text := lTrabalhadorDiario.Salario.ToString;

end;

end.
