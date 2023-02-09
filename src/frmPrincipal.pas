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
  FireDAC.Stan.ExprFuncs,
  Vcl.Mask,
  FormatCNPJ,
  Vcl.DBCtrls,
  dtmPrincipal,
  FrmSobre;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    btnBuscar: TButton;
    Panel2: TPanel;
    DataSource1: TDataSource;
    edtPesquisa: TEdit;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Arquivo2: TMenuItem;
    BancodeDados1: TMenuItem;
    procedure Arquivo2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure Sobre2Click(Sender: TObject);
  private
    CNPJ : TFormatCNPJ;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Arquivo2Click(Sender: TObject);
begin
  if FormSobre = nil then
    FormSobre := TFormSobre.Create(self);
  FormSobre.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CNPJ := TFormatCNPJ.Create;
end;

procedure TForm1.btnBuscarClick(Sender: TObject);
var
  Pesquisa, PesquisaCNPJ, PesquisaNome, FormataCNPJ: String;
begin
  pesquisa := edtPesquisa.Text;

  if Length(pesquisa) > 0 then
  begin
    FormataCNPJ := CNPJ.FormatarCNPJ(Pesquisa);
  end;

  PesquisaCNPJ := 'CNPJ LIKE ''%' + FormataCNPJ + '%''';
  PesquisaNome := 'NOME LIKE ''%' + pesquisa + '%''';

  dtmPrincipal.DataModule1.ClientDataSet1.FilterOptions := [foCaseInsensitive];
  dtmPrincipal.DataModule1.ClientDataSet1.Filter := PesquisaCNPJ + ' OR ' + PesquisaNome;
  dtmPrincipal.DataModule1.ClientDataSet1.Filtered := True;
end;

procedure TForm1.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnBuscarClick(Sender);

end;

procedure TForm1.Sobre2Click(Sender: TObject);
begin
  Close;
end;

end.
