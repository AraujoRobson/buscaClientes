unit dtmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Phys.IBBase, FireDAC.Comp.UI, FireDAC.Comp.DataSet, Datasnap.Provider, Datasnap.DBClient;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDQuery1: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQuery1ID_CLIENTE: TIntegerField;
    FDQuery1ID_CONVENIO: TSmallintField;
    FDQuery1DT_CADASTRO: TDateField;
    FDQuery1NOME: TStringField;
    FDQuery1CONTATO: TStringField;
    FDQuery1DDD_COMER: TStringField;
    FDQuery1FONE_COMER: TStringField;
    FDQuery1DDD_CELUL: TStringField;
    FDQuery1FONE_CELUL: TStringField;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1ID_CLIENTE: TIntegerField;
    ClientDataSet1ID_CONVENIO: TSmallintField;
    ClientDataSet1DT_CADASTRO: TDateField;
    ClientDataSet1NOME: TStringField;
    ClientDataSet1CONTATO: TStringField;
    ClientDataSet1DDD_COMER: TStringField;
    ClientDataSet1FONE_COMER: TStringField;
    ClientDataSet1DDD_CELUL: TStringField;
    ClientDataSet1FONE_CELUL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
