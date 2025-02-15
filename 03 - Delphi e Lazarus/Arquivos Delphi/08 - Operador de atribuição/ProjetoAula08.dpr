program ProjetoAula08;

uses
  Vcl.Forms,
  uAula08 in 'uAula08.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
