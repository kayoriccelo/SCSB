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
  cxCalendar, cxDBEdit, cxTextEdit, cxDBLookupComboBox, dxLayoutControlAdapters, Vcl.Menus, cxButtons, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

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
    dblkpcbbFuncionario: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dblkpcbbSexo: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    dbimgFoto: TcxDBImage;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    btnFoto: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    btnDeleteFoto: TcxButton;
    dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    grdContatoDBTableView1: TcxGridDBTableView;
    grdContatoLevel1: TcxGridLevel;
    grdContato: TcxGrid;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dbtxtedtLogradouroEnde: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dbtxtedtNumeroEnde: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dblkpcbbLocalidadeEnde: TcxDBLookupComboBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    dbmskedtCEPende: TcxDBMaskEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group12: TdxLayoutAutoCreatedGroup;
    dsEnde: TDataSource;
    dsMCont: TDataSource;
    btnInsertContato: TcxButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    btnUpdateContato: TcxButton;
    dxLayoutControl1Item18: TdxLayoutItem;
    btnDeleteContato: TcxButton;
    dxLayoutControl1Group14: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRegCliente: TFmRegCliente;

implementation

uses
  untRegistration, untDmRegistration;

{$R *.dfm}

procedure TFmRegCliente.FormCreate(Sender: TObject);
begin
  inherited;
  FReg := TRegCliente.Create;
end;

end.
