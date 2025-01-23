program Aula16;

uses
  Vcl.Forms,
  fPrincipal in '..\Aula - 15 Record Type\fPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
