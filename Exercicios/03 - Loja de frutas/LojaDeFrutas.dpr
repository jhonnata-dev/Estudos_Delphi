program LojaDeFrutas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uAdicionarFrutas in 'src\uAdicionarFrutas.pas' {Form2},
  uListaFrutas in 'src\uListaFrutas.pas' {Form3},
  dtmListaFrutas in 'src\dtmListaFrutas.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
