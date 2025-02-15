program ProjetoAula14;

uses
  Vcl.Forms,
  uAula14 in 'uAula14.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
