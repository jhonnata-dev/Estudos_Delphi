unit dPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtmPrincipal = class(TDataModule)
    memUsuarios: TFDMemTable;
    memUsuariosId: TIntegerField;
    memUsuariosNome: TStringField;
    memUsuariosEmail: TStringField;
    memUsuariosIdade: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure memUsuariosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }

    FId: Integer;

  public
    { Public declarations }
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmPrincipal.DataModuleCreate(Sender: TObject);
begin
  FId := 0;
end;

procedure TdtmPrincipal.memUsuariosBeforePost(DataSet: TDataSet);
begin

  if memUsuarios.State = dsInsert then
  begin
    Inc(FId);
    memUsuariosId.AsInteger := FId
  end;


end;

end.
