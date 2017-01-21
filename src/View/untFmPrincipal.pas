unit untFmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Menus,
  untConnection, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, dxSkinsForm, cxControls, dxRibbonSkins, dxRibbonCustomizationForm,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, dxBar, dxStatusBar, dxRibbon;

type
  TFmMain = class(TForm)
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxStatusBar1: TdxStatusBar;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxSkinController1: TdxSkinController;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    FConnection: TConnection;

  public
    property Connection: TConnection read FConnection write FConnection;
  end;

var
  FmMain: TFmMain;

implementation

uses
  untControl.Forms, untEnumerator, untControl.Reports;

{$R *.dfm}

procedure TFmMain.dxBarLargeButton1Click(Sender: TObject);
begin
  ControlForms.RunList(lstCliente);
end;

procedure TFmMain.FormCreate(Sender: TObject);
begin
  if not Assigned(ControlForms) then
    ControlForms := TControlForms.Create;

  if not Assigned(ControlReports) then
    ControlReports := TControlReports.Create;

  Connection := TConnection.Create;
  Connection.Connected(tcnFireBird);
end;

procedure TFmMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ControlForms);
end;

end.
