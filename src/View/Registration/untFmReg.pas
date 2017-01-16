(* ------------------------------------------------------------------
  Propósito da Unit:
  Programador / Data: Kayo Riccelo 11/01/2017
  Analista Responsável:
  Revisões:
  Programador:
  Data: Descrição da Revisão
  Comentários adicionais:
  ------------------------------------------------------------------ *)
unit untFmReg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  untEnumerator, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, cxImage, dxLayoutLookAndFeels, cxClasses, dxLayoutContainer,
  dxLayoutControl, Datasnap.DBClient, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  untRegistration;

type
  TFmReg = class(TForm)
    pnlButtons: TPanel;
    btnPost: TBitBtn;
    btnCancel: TBitBtn;
    imgTitle: TcxImage;
    lblTitleMain: TcxLabel;
    cxLabel1: TcxLabel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    laylkaflRegistration: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dsReg: TDataSource;
    cdsReg: TClientDataSet;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject); virtual;
  private
    FTypeCrud: eTypeCrud;
    FIndex: Integer;

  protected
    FReg: TReg;

  public
    Load: function: Boolean of object; // KayoRiccelo - Anonymous Methods

    property TypeCrud: eTypeCrud read FTypeCrud write FTypeCrud;
    property Id: Integer read FIndex write FIndex;
    property Reg: TReg read FReg write FReg;

  end;

var
  FmReg: TFmReg;

implementation

uses
  untFmList;

{$R *.dfm}

procedure TFmReg.FormCreate(Sender: TObject);
begin
  //
end;

procedure TFmReg.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FReg);
end;

end.
