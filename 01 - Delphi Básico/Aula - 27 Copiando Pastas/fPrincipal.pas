unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.IOUtils;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtCaminho: TEdit;
    imgBotaoCaminhoCopia: TImage;
    imgBotaoCaminho: TImage;
    edtCaminhoCopia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnCopiarPasta: TButton;
    FileOpenDialog1: TFileOpenDialog;
    procedure imgBotaoCaminhoClick(Sender: TObject);
    procedure imgBotaoCaminhoCopiaClick(Sender: TObject);
    procedure btnCopiarPastaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCopiarPastaClick(Sender: TObject);
begin

  try
    TDirectory.Copy(edtCaminho.Text, edtCaminhoCopia.Text);
    ShowMessage('Pasta copiada com sucesso para o caminho: ' + sLineBreak + edtCaminhoCopia.Text);
  except on E: Exception do
    ShowMessage('Erro ao tentar copiar pasta: ' + sLineBreak + E.Message);
  end;

end;

procedure TForm1.imgBotaoCaminhoClick(Sender: TObject);
begin

  if FileOpenDialog1.Execute then
  begin
    edtCaminho.Text := fileOpenDialog1.FileName;
  end;

end;

procedure TForm1.imgBotaoCaminhoCopiaClick(Sender: TObject);
begin

  if FileOpenDialog1.Execute then
  begin
    edtCaminhoCopia.Text := FileOpenDialog1.FileName;
  end;

end;

end.
