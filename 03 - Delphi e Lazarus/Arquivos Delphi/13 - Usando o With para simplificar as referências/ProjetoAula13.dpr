program ProjetoAula13;

uses
  Vcl.Forms,
  uAula13 in 'uAula13.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
