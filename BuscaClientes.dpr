program BuscaClientes;

uses
  Vcl.Forms,
  frmPrincipal in 'src\frmPrincipal.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  dtmPrincipal in 'src\dtmPrincipal.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Dark');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
