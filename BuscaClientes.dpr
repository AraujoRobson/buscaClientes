program BuscaClientes;

uses
  Vcl.Forms,
  frmPrincipal in 'src\frmPrincipal.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  dtmPrincipal in 'src\dtmPrincipal.pas' {DataModule1: TDataModule},
  FormatCNPJ in 'src\FormatCNPJ.pas',
  FrmSobre in 'src\FrmSobre.pas' {FormSobre},
  frmDB in 'src\frmDB.pas' {formDB};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Turquoise Gray');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
