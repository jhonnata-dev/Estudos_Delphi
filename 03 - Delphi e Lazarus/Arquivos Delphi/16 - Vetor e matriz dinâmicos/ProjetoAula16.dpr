program ProjetoAula16;

uses
  Vcl.Forms,
  uAula16 in 'uAula16.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
