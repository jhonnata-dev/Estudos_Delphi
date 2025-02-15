program ProjetoAula05;

uses
  Vcl.Forms,
  uAula05 in 'uAula05.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
