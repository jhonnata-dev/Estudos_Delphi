program ProjetoAula04;

uses
  Vcl.Forms,
  uAula04 in 'uAula04.pas' {frmTeste};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTeste, frmTeste);
  Application.Run;
end.
