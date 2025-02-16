program ProjetoAula18;

uses
  Vcl.Forms,
  uAula18 in 'uAula18.pas' {Form1},
  Classes.Pessoa in 'Classes.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
