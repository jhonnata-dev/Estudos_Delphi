program ProjetoAula06;

uses
  Vcl.Forms,
  uAula06 in 'uAula06.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
