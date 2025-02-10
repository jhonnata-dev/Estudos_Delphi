program Aula07;

uses
  Vcl.Forms,
  Forms.Form in 'src\Forms.Form.pas' {Form1},
  Classes.Pessoa in 'src\Classes.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
