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
  Vcl.Buttons, Vcl.ExtCtrls, dxLayoutcxEditAdapters, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxMaskEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxDBLookupComboBox, dxLayoutControlAdapters, Vcl.Menus, cxButtons;

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
    dbtxtedtCodigo: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dbtxtedtNome: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dbdtedtDataNascimento: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dbtxtedtRG: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dbmskedtCPF: TcxDBMaskEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsFunc: TClientDataSet;
    cdsSexo: TClientDataSet;
    dsSexo: TDataSource;
    dsFunc: TDataSource;
    dblkpcbbFuncionario: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dblkpcbbSexo: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsSexoId: TIntegerField;
    cdsSexoDescricao: TStringField;
    cdsFuncId: TIntegerField;
    cdsFuncNome: TStringField;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dbimgFoto: TcxDBImage;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    btnFoto: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    btnDeleteFoto: TcxButton;
    dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRegCliente: TFmRegCliente;

implementation

uses
  untRegistration;

{$R *.dfm}

procedure TFmRegCliente.FormCreate(Sender: TObject);
begin
  FReg := TRegCliente.Create;
end;

end.
