program Aula10;

uses
  Vcl.Forms,
  Forms.FormPrincipal in 'src\Forms.FormPrincipal.pas' {Form1},
  Classes.Exemplo in 'src\Classes.Exemplo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
