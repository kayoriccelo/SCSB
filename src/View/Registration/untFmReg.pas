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
  untEnumerator, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, cxImage, dxLayoutLookAndFeels, cxClasses, dxLayoutContainer,
  dxLayoutControl, Datasnap.DBClient;

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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FTypeCrud: eTypeCrud;
    FIndex: Integer;

  protected
    function GetObject: TObject; virtual; abstract;
    function Post: Boolean; virtual; abstract;
    function Cancel: Boolean; virtual;

  public
    property TypeCrud: eTypeCrud read FTypeCrud write FTypeCrud;
    property Index: Integer read FIndex write FIndex;
  end;

var
  FmReg: TFmReg;

implementation

uses
  untFmList;

{$R *.dfm}

procedure TFmReg.btnCancelClick(Sender: TObject);
begin
  Cancel;
end;

procedure TFmReg.btnPostClick(Sender: TObject);
begin
  Post;
  Close;
end;

function TFmReg.Cancel: Boolean;
begin
  Close;
end;

procedure TFmReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdsReg.State in [dsInsert, dsEdit] then
    cdsReg.Cancel;

  cdsReg.Close;
end;

procedure TFmReg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TFmReg.FormShow(Sender: TObject);
begin
  cdsReg.Open;

  case TypeCrud of
    tcdInsert:
      cdsReg.Insert;
    tcdUpdate:
      begin
        cdsReg.Filtered := False;
        cdsReg.Filter := ' id = ' + index.ToString;
        cdsReg.Filtered := True;
        cdsReg.Edit;
      end;
  end;

end;

end.
