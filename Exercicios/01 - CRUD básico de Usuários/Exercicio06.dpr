program Exercicio06;

uses
  Vcl.Forms,
  fPrincipal in 'Formularios\fPrincipal.pas' {Form1},
  dPrincipal in 'DataModules\dPrincipal.pas' {dtmPrincipal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.Run;
end.
