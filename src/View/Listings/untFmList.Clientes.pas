unit untFmList.Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFmList, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, dxGDIPlusClasses, cxImage, untList, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsForm;

type
  TFmListClientes = class(TFmList)
    cdsListId: TIntegerField;
    cdsListCodigo: TStringField;
    cdsListNome: TStringField;
    cdsListDataNascimento: TDateTimeField;
    cdsListDataCadastro: TDateTimeField;
    cdsListRg: TStringField;
    cdsListCpf: TStringField;
    dbGridTVTblViewId: TcxGridDBColumn;
    dbGridTVTblViewCodigo: TcxGridDBColumn;
    dbGridTVTblViewNome: TcxGridDBColumn;
    dbGridTVTblViewDataCadastro: TcxGridDBColumn;
    dbGridTVTblViewDataNascimento: TcxGridDBColumn;
    dbGridTVTblViewRg: TcxGridDBColumn;
    dbGridTVTblViewCpf: TcxGridDBColumn;
    dbGridTVTblViewIdSexo: TcxGridDBColumn;
    dbGridTVTblViewIdFuncionario: TcxGridDBColumn;
    dbGridTVTblViewFuncionario: TcxGridDBColumn;
    dbGridTVTblViewSexo: TcxGridDBColumn;
    cdsListCodigoSexo: TStringField;
    cdsListDescricaoSexo: TStringField;
    cdsListCodigoFunc: TStringField;
    cdsListNomeFunc: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private

  protected

  public

  end;

var
  FmListClientes: TFmListClientes;

implementation

{$R *.dfm}

procedure TFmListClientes.FormCreate(Sender: TObject);
begin
  inherited;
  FList := TListCliente.Create;
end;

procedure TFmListClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FList);
end;

end.
