(* ------------------------------------------------------------------
  Propósito da Unit:
  Programador / Data: Kayo Riccelo 11/01/2017
  Analista Responsável:
  Revisões:
  Programador:
  Data: Descrição da Revisão
  Comentários adicionais:
  ------------------------------------------------------------------ *)
unit untFmList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, dxGDIPlusClasses, cxImage, cxButtons, Datasnap.DBClient,
  untList, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsForm;

type
  TFmList = class(TForm)
    pnlButtons: TPanel;
    dsList: TDataSource;
    btnClose: TcxButton;
    btnInsert: TcxButton;
    btnUpdate: TcxButton;
    btnDelete: TcxButton;
    imgTitle: TcxImage;
    lblTitleMain: TcxLabel;
    dbGrid: TcxGrid;
    dbGridTVTblView: TcxGridDBTableView;
    dbGridLvlGridLevel: TcxGridLevel;
    cdsList: TClientDataSet;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject); virtual;
  private

  protected
    FLists: TLists;

  public
    // Load: function: Boolean of object; // KayoRiccelo - Anonymous Methods
    property Lists: TLists read FLists write FLists;

  end;

var
  FmList: TFmList;

implementation

{$R *.dfm}

procedure TFmList.FormCreate(Sender: TObject);
begin
  //
end;

procedure TFmList.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FLists);
end;

end.
