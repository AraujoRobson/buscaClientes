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
  dtmPrincipal,
  Vcl.Imaging.pngimage;

type
  TformDB = class(TForm)
    Panel1: TPanel;
    edtCaminhoBanco: TEdit;
    btnCaminhoDB: TButton;
    GroupBox1: TGroupBox;
    imgStatusConexao: TImage;
    OpenDialog1: TOpenDialog;
    btnConectar: TButton;
    Panel2: TPanel;
    btnDesconectar: TButton;
    btnAtualizar: TButton;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnCaminhoDBClick(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure edtCaminhoBancoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDB: TformDB;
  caminhoImagens: string;
  nomeImagem: string;
  caminhoCompleto: string;

implementation

{$R *.dfm}

procedure TformDB.btnAtualizarClick(Sender: TObject);
begin
  dtmPrincipal.DataModule1.FDQuery1.Active := False;
  dtmPrincipal.DataModule1.ClientDataSet1.Active := False;
  dtmPrincipal.DataModule1.FDQuery1.Active := True;
  dtmPrincipal.DataModule1.ClientDataSet1.Active := True;
end;

procedure TformDB.btnCaminhoDBClick(Sender: TObject);
begin
if OpenDialog1.Execute then
  begin
    if (UpperCase(ExtractFileExt(OpenDialog1.FileName)) = '.FDB') then
    begin
      edtCaminhoBanco.Text := OpenDialog1.FileName;
      dtmPrincipal.DataModule1.FDConnection1.Params.Values['Database'] := OpenDialog1.FileName;

      if edtCaminhoBanco.Text <> ' ' then
        btnConectar.Enabled := True;
    end
    else
      ShowMessage('Por favor selecione um arquivo com a extensão .FDB.');
  end;
end;

procedure TformDB.btnConectarClick(Sender: TObject);
begin
  edtCaminhoBanco.Enabled := False;
  btnConectar.Enabled := False;
  dtmPrincipal.DataModule1.FDConnection1.Connected := True;
  btnCaminhoDB.Enabled := False;
  btnAtualizar.Enabled := True;
  btnAtualizarClick(Sender);
  btnDesconectar.Enabled := True;
end;

procedure TformDB.edtCaminhoBancoChange(Sender: TObject);
begin
  if (trim(edtCaminhoBanco.Text) <> '') then
    btnConectar.Enabled := True
  else
    btnConectar.Enabled := False;
end;

end.
