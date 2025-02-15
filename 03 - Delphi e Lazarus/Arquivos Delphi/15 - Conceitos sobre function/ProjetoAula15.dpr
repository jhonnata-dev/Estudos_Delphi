program ProjetoAula15;

uses
  Vcl.Forms,
  uAula15 in 'uAula15.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
