unit frmDB;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Imaging.pngimage;

type
  TformDB = class(TForm)
    Panel1: TPanel;
    edtCaminhoBanco: TEdit;
    btnCaminhoDB: TButton;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDB: TformDB;

implementation

{$R *.dfm}

end.
