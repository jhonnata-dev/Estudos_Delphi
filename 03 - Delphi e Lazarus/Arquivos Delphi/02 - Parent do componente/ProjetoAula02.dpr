program ProjetoAula02;

uses
  Vcl.Forms,
  uAula02 in 'uAula02.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
