unit dPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmPrincipal = class(TDataModule)
    memTarefas: TFDMemTable;
    memTarefasData: TDateTimeField;
    memTarefasSituacao: TSmallintField;
    memTarefasTempoEstimado: TTimeField;
    memTarefasDescricao: TStringField;
    memTarefasId: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
