unit uCartaoListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uEnum;

type
  TfrmCartaoListagem = class(TfrmHerancaListagem)
    QryListagemcartaoId: TZIntegerField;
    QryListagemdecricaoCartao: TZUnicodeStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
  private
    procedure AbrirCadastro(estadoCadastro: TEstadoCadastro);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCartaoListagem: TfrmCartaoListagem;

implementation

{$R *.dfm}

uses uCartaoCadastro;

procedure TfrmCartaoListagem.AbrirCadastro(estadoCadastro: TEstadoCadastro);
begin
  try
    frmCartaoCadastro := TfrmCartaoCadastro.Create(Self);
    frmCartaoCadastro.EstadoDoCadastro := estadoCadastro;
    case estadoCadastro of
      ecNovo: begin
        frmCartaoCadastro.QryCadastro.ParamByName('cartaoId').AsInteger := -1;

        frmCartaoCadastro.QryCadastro.Open;
        frmCartaoCadastro.QryCadastro.Append;
      end;

      ecModificar: begin
        frmCartaoCadastro.QryCadastro.ParamByName('cartaoId').AsInteger := QryListagem.FieldByName('cartaoId').AsInteger;
        frmCartaoCadastro.QryCadastro.Open;
        frmCartaoCadastro.QryCadastro.Edit;
      end;

      ecApagar: begin
        frmCartaoCadastro.QryCadastro.ParamByName('cartaoId').AsInteger := QryListagem.FieldByName('cartaoId').AsInteger;
        frmCartaoCadastro.QryCadastro.Open;
        frmCartaoCadastro.HabilitaDesabilitaTela(False)
      end;
    end;

    frmCartaoCadastro.ShowModal;

  finally
    frmCartaoCadastro.Release;
    Self.RefreshQuery(QryListagem);
  end;
end;

procedure TfrmCartaoListagem.btnApagarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecApagar);
end;

procedure TfrmCartaoListagem.btnModificarClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecModificar);
end;

procedure TfrmCartaoListagem.btnNovoClick(Sender: TObject);
begin
  inherited;
  AbrirCadastro(ecNovo);
end;

end.
