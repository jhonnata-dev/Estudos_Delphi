program ProjetoAula10;

uses
  Vcl.Forms,
  uAula10 in 'uAula10.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
