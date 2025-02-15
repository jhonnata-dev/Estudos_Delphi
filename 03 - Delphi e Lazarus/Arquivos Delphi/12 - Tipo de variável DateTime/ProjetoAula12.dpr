program ProjetoAula12;

uses
  Vcl.Forms,
  uAula12 in 'uAula12.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
