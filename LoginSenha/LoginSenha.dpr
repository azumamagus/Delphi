program LoginSenha;

uses
  Forms,
  Uprincipal in 'Uprincipal.pas' {Form1},
  UMenu in 'UMenu.pas' {frmMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
