program Aula13;

uses
  Vcl.Forms,
  View.Principal in 'src\View.Principal.pas' {Form1},
  Classes.Conexao in 'src\Classes.Conexao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
