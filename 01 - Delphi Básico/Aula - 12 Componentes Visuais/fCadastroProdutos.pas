unit fCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmCadastroProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    edtNome: TEdit;
    Label1: TLabel;
    rdgSituacaoProduto: TRadioGroup;
    edtPreco: TEdit;
    Label2: TLabel;
    mmoObs: TMemo;
    Label3: TLabel;
    chkPromocao: TCheckBox;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProdutos: TfrmCadastroProdutos;

implementation

{$R *.dfm}

procedure TfrmCadastroProdutos.btnSalvarClick(Sender: TObject);
var
  lSituacaoProduto: String;
  lPromocao: String;
begin

  case rdgSituacaoProduto.ItemIndex of
    0:
    begin
      lSituacaoProduto := 'Ativo';
    end;

    1:
    begin
      lSituacaoProduto := 'Inativo';
    end;
  end;

  if chkPromocao.Checked then
  begin
    lPromocao := 'Sim'
  end
  else
  begin
    lPromocao := 'Não';
  end;

  ShowMessage(
    'Nome: ' + edtNome.Text + #13 +
    'Preço: ' + edtPreco.Text + sLineBreak +
    'Situação: ' + lSituacaoProduto + sLineBreak +
    'Promoção: ' + lPromocao + sLineBreak +
    'Obs: ' + mmoObs.Text
  );

  close;

end;

procedure TfrmCadastroProdutos.btnCancelarClick(Sender: TObject);
begin
  close;
end;

end.
