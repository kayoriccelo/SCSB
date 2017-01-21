unit untFmRegContato;

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
  Vcl.Buttons, Vcl.ExtCtrls, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxDBEdit, cxCheckBox;

type
  TFmRegContato = class(TFmReg)
    cdsRegId: TIntegerField;
    cdsRegEhPrincipal: TBooleanField;
    cdsRegValor: TStringField;
    cdsRegIdTipoContato: TIntegerField;
    dsTipoContato: TDataSource;
    dbchkbxEhPrincipal: TcxDBCheckBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    dbtxtedtValor: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dblkpcbbTipoContato: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    laygrpDadosGerais: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRegContato: TFmRegContato;

implementation

{$R *.dfm}

uses untDMConnection, untDmRegistration;

end.
