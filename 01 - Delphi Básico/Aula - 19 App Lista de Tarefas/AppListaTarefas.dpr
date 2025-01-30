program AppListaTarefas;

uses
  Vcl.Forms,
  fPrincipal in 'Formularios\fPrincipal.pas' {frmPrincipal},
  dPrincipal in 'DataModules\dPrincipal.pas' {dtmPrincipal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.Run;
end.
