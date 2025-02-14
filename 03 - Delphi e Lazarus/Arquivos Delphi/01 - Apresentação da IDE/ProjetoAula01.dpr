program ProjetoAula01;

uses
  Vcl.Forms,
  uFormularioAula01 in 'uFormularioAula01.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
