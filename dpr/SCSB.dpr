program SCSB;

uses
  Vcl.Forms,
  untFmPrincipal in '..\src\View\untFmPrincipal.pas' {FmMain},
  untConnection in '..\src\Connection\untConnection.pas',
  untControl.Forms in '..\src\Controller\Controls\untControl.Forms.pas',
  untControl.Reports in '..\src\Controller\Controls\untControl.Reports.pas',
  untFmList in '..\src\View\Listings\untFmList.pas' {FmList},
  untFmReg in '..\src\View\Registration\untFmReg.pas' {FmReg},
  untDAO in '..\src\Model\DAO\untDAO.pas',
  untDMConnection in '..\src\Connection\untDMConnection.pas' {DmConnection: TDataModule},
  untBR in '..\src\Controller\BR\untBR.pas',
  untValidation in '..\src\Controller\Validation\untValidation.pas',
  untEntity in '..\src\Model\Entity\untEntity.pas',
  untList in '..\src\Model\Forms\untList.pas',
  untRegistration in '..\src\Model\Forms\untRegistration.pas',
  untSearch in '..\src\Model\Forms\untSearch.pas',
  untEnumerator in '..\src\Model\Utility\untEnumerator.pas',
  untReports in '..\src\Model\Reports\untReports.pas',
  untFmList.Clientes in '..\src\View\Listings\untFmList.Clientes.pas' {FmListClientes},
  untDAO.View in '..\src\Model\DAO\untDAO.View.pas',
  untEntity.View in '..\src\Model\Entity\untEntity.View.pas',
  untBR.View in '..\src\Controller\BR\untBR.View.pas',
  Vcl.Themes,
  Vcl.Styles,
  untFmRegCliente in '..\src\View\Registration\untFmRegCliente.pas' {FmRegCliente},
  untDmRegistration in '..\src\Model\Forms\untDmRegistration.pas' {DmRegistration: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Turquoise Gray');
  Application.CreateForm(TDmConnection, DmConnection);
  Application.CreateForm(TFmMain, FmMain);
  Application.CreateForm(TFmRegCliente, FmRegCliente);
  Application.CreateForm(TDmRegistration, DmRegistration);
  Application.Run;
end.
