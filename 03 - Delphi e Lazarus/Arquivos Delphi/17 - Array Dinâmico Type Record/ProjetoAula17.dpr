program ProjetoAula17;

uses
  Vcl.Forms,
  uAula17 in 'uAula17.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
