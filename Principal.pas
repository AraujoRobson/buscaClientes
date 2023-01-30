unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    N1: TMenuItem;
    Sobre1: TMenuItem;
    Sobre2: TMenuItem;
    BancodeDados1: TMenuItem;
    N2: TMenuItem;
    BuscarCliente1: TMenuItem;
    BuscarCliente2: TMenuItem;
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

procedure TForm1.Sobre2Click(Sender: TObject);
begin
If Application.MessageBox('Tem Certeza de que deseja sair?',
 'Fechar Sistema',mb_YesNo+mb_DefButton2+mb_IconQuestion) = Id_Yes then
  Begin
    Close;
  end;
end;

end.
