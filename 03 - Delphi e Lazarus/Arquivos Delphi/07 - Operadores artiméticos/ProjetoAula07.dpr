program ProjetoAula07;

uses
  Vcl.Forms,
  uAula07 in 'uAula07.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
