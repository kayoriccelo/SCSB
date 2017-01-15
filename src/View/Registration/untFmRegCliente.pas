unit untFmRegCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFmReg, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, Data.DB,
  Datasnap.DBClient, dxLayoutLookAndFeels, cxClasses, dxLayoutContainer, dxLayoutControl, cxLabel, dxGDIPlusClasses, cxImage, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TFmRegCliente = class(TFmReg)
    cdsRegCodigo: TStringField;
    cdsRegId: TIntegerField;
    cdsRegNome: TStringField;
    cdsRegDataCadastro: TDateField;
    cdsRegDataNascimento: TDateField;
    cdsRegRg: TStringField;
    cdsRegCpf: TStringField;
    cdsRegIdSexo: TIntegerField;
    cdsRegIdFunc: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRegCliente: TFmRegCliente;

implementation

{$R *.dfm}

end.
