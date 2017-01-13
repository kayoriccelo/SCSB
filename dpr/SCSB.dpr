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
  untFmList.Clientes in '..\src\View\Listings\untFmList.Clientes.pas' {FmListClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmMain, FmMain);
  Application.CreateForm(TFmList, FmList);
  Application.CreateForm(TFmReg, FmReg);
  Application.CreateForm(TDmConnection, DmConnection);
  Application.CreateForm(TFmListClientes, FmListClientes);
  Application.Run;
end.
