unit fPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    tmrMensagem: TTimer;
    memLista: TFDMemTable;
    memListaCodigo: TIntegerField;
    memListaNome: TStringField;
    dtsLista: TDataSource;
    Panel2: TPanel;
    btnDesabilitarTimer: TButton;
    btnExemploTabelaMemoria: TButton;
    btnHabilitarTimer: TButton;
    grdLista: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnDesabilitarTimerClick(Sender: TObject);
    procedure btnHabilitarTimerClick(Sender: TObject);
    procedure tmrMensagemTimer(Sender: TObject);
    procedure btnExemploTabelaMemoriaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnDesabilitarTimerClick(Sender: TObject);
begin
  tmrMensagem.Enabled := False;
end;

procedure TForm1.btnExemploTabelaMemoriaClick(Sender: TObject);
var
  i: integer;
begin

  memLista.Open;
  memLista.EmptyDataSet;

  for i := 1 to 20 do
  begin

    memLista.Append;
    memListaCodigo.AsInteger := i;
    memListaNome.AsString := 'Nome: ' + i.ToString;
    memLista.Post;

  end;


end;

procedure TForm1.btnHabilitarTimerClick(Sender: TObject);
begin
  tmrMensagem.Enabled := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  tmrMensagem.Enabled := False;
end;

procedure TForm1.tmrMensagemTimer(Sender: TObject);
begin
  ShowMessage('Mensagem exibida a cada 3 segundos...');
end;

end.
