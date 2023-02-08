unit frmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Menus,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  Datasnap.Provider,
  Datasnap.DBClient,
  FireDAC.Phys.IBBase,
  FireDAC.Comp.UI,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Vcl.Mask,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    btnBuscar: TButton;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    DataSource1: TDataSource;
    edtCNPJ: TEdit;
    DBGrid1: TDBGrid;
    procedure btnBuscarClick(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses dtmPrincipal;

procedure TForm1.btnBuscarClick(Sender: TObject);
var
  cnpj: String;
  cnpjPesquisa: String;
begin
  cnpj := edtCNPJ.Text;
  cnpjPesquisa := cnpj;

  dtmPrincipal.DataModule1.FDQuery1.Filter := 'TB_CLI_PJ.CNPJ = ' + cnpjPesquisa;
  dtmPrincipal.DataModule1.FDQuery1.Filtered := True;
end;

procedure TForm1.Sobre2Click(Sender: TObject);
begin
  Close;
end;

end.
