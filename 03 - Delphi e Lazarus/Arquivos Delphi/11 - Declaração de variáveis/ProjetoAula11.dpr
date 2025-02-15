program ProjetoAula11;

uses
  Vcl.Forms,
  uAula11 in 'uAula11.pas' {Form1},
  uUnit2 in 'uUnit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
