unit uHerancaCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHerancaBase, System.ImageList,
  Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset, uEnum,
  Vcl.Mask, Vcl.DBCtrls, RxToolEdit, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  ZAbstractConnection, ZConnection;

type
  TfrmHerancaCadastro = class(TfrmHerancaBase)
    pnlPrincipal: TPanel;
    pnlPrincipalBottom: TPanel;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    QryCadastro: TZQuery;
    updCadastro: TZUpdateSQL;
    dtsCadastro: TDataSource;
    procedure btnCancelarMouseEnter(Sender: TObject);
    procedure btnCancelarMouseLeave(Sender: TObject);
    procedure btnGravarMouseEnter(Sender: TObject);
    procedure btnGravarMouseLeave(Sender: TObject);
    procedure btnApagarMouseEnter(Sender: TObject);
    procedure btnApagarMouseLeave(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QryCadastroAfterPost(DataSet: TDataSet);
    procedure QryCadastroAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    procedure PostOrDeleteWithCommitOrRollback(aConexao: TZConnection;
      aQry: TZQuery);
    procedure ControleEstado(qry: TZQuery; EstadoDoCadastro: TEstadoCadastro;
      BtnSalva, btnCancelar, BtnExclui: TBitBtn);


    { Private declarations }
  public
    { Public declarations }
    EstadoDoCadastro : TEstadoCadastro;
    procedure HabilitaDesabilitaTela(chave: boolean);

  end;

var
  frmHerancaCadastro: TfrmHerancaCadastro;

implementation

{$R *.dfm}

uses uPrincipal, uFuncoes;

procedure TfrmHerancaCadastro.btnApagarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Apagar este resgistro?',
     TMsgDlgType.mtConfirmation,
     [mbYes, mbNo],
     0) = IDYES then
  begin
    QryCadastro.Delete;
    Close;
  end;
end;

procedure TfrmHerancaCadastro.btnApagarMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 8);
end;

procedure TfrmHerancaCadastro.btnApagarMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 9);
end;

procedure TfrmHerancaCadastro.btnCancelarClick(Sender: TObject);
begin
  inherited;
  QryCadastro.Cancel;
  Close;
end;

procedure TfrmHerancaCadastro.btnCancelarMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 6);
end;

procedure TfrmHerancaCadastro.btnCancelarMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 7);
end;

procedure TfrmHerancaCadastro.btnGravarClick(Sender: TObject);
begin
  inherited;
  QryCadastro.Post;
  Close;
end;

procedure TfrmHerancaCadastro.btnGravarMouseEnter(Sender: TObject);
begin
  inherited;
  ButtonMouseEnter(Sender, 4);
end;

procedure TfrmHerancaCadastro.btnGravarMouseLeave(Sender: TObject);
begin
  inherited;
  ButtonMouseLeave(Sender, 5);
end;

procedure TfrmHerancaCadastro.Button1Click(Sender: TObject);
begin
  inherited;
  HabilitaDesabilitaTela(False);
end;

procedure TfrmHerancaCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_ESCAPE) then
  begin
    if (QryCadastro.State in [dsInsert, dsEdit]) then
    begin
      QryCadastro.Cancel;
    end;
    Close;

  end;
end;

procedure TfrmHerancaCadastro.FormShow(Sender: TObject);
begin
  inherited;
  ControleEstado(QryCadastro, EstadoDoCadastro, btnGravar, btnCancelar, btnApagar);
end;

procedure TfrmHerancaCadastro.HabilitaDesabilitaTela(chave: boolean);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    // 81 -> Utilizada para deixar o campo da tela desabilitado
    //       Por�m na telatem que ficar com ENABLE := FALSE
    if (Components[i] is TDBedit) and (TDBEdit (Components[i]).Tag <> 81) then begin
      TDBEdit(Components[i]).Enabled := chave;
    end;

    if (Components[i]) is TDBMemo then begin
      TDBMemo(Components[i]).Enabled := chave;
    end
    
    else if (Components[i]) is TDBImage then begin
      TDBImage(Components[i]).Enabled := chave;
    end
    
    else if (Components[i]) is TDBListBox then begin
      TDBListBox(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TDBComboBox then begin
      TDBComboBox(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TDBCheckBox then begin
      TDBCheckBox(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TDBRadioGroup then begin
      TDBRadioGroup(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TDBLookupComboBox then begin
      TDBLookupComboBox(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TDBRichEdit then begin
      TDBRichEdit(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TDateEdit then begin
      TDateEdit(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TDateTimePicker then begin
      TDateTimePicker(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TComboEdit then begin
      TComboEdit(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TComboBox then begin
      TComboBox(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TDBGrid then begin
      TDBGrid(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TMaskEdit then begin
      TMaskEdit(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TEdit then begin
      TEdit(Components[i]).Enabled := chave;
    end

    else if (Components[i]) is TDateEdit then begin
      TDateEdit(Components[i]).Enabled := chave;
    end;
  
  end;
end;

procedure TfrmHerancaCadastro.PostOrDeleteWithCommitOrRollback(aConexao: TZConnection; aQry: TZQuery);
begin
  try
    aConexao.StartTransaction;
    aQry.ApplyUpdates;
    aConexao.Commit;
    aQry.Refresh;
  except
    aConexao.Rollback;
  end;

end;

procedure TfrmHerancaCadastro.QryCadastroAfterDelete(DataSet: TDataSet);
begin
  inherited;
  PostOrDeleteWithCommitOrRollback(dtmConexao.SQLConnection, QryCadastro);
  
end;

procedure TfrmHerancaCadastro.QryCadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostOrDeleteWithCommitOrRollback(dtmConexao.SQLConnection, QryCadastro);
  
end;

procedure TfrmHerancaCadastro.ControleEstado(qry: TZQuery; EstadoDoCadastro: TEstadoCadastro;
  BtnSalva: TBitBtn; btnCancelar: TBitBtn; BtnExclui: TBitBtn);
begin
  if (EstadoDoCadastro = ecNovo) then begin
    BtnExclui.Visible := False;
    lblTitulo.Caption := lblTitulo.Caption + ' - [NOVO]';
    qry.Append;
  end
  else if (EstadoDoCadastro = ecModificar) then begin
    BtnExclui.Visible := False;
    lblTitulo.Caption := lblTitulo.Caption + ' - [Modificar]';
    qry.Edit;
  end
  else begin
    lblTitulo.Caption := lblTitulo.Caption + ' - [Apagar]';
    BtnExclui.Left := btnCancelar.Left;
    BtnSalva.Visible := False;
    btnCancelar.Visible := False;
    BtnExclui.Visible := True;

  end;
end;

end.
