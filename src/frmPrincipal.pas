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
  Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    edtCNPJ: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
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

procedure TForm1.Sobre2Click(Sender: TObject);
begin
  Close;
end;

end.
