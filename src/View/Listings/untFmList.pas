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
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, dxGDIPlusClasses, cxImage, cxButtons, Datasnap.DBClient;

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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
  private

  public

  end;

var
  FmList: TFmList;

implementation

{$R *.dfm}

procedure TFmList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFmList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsList.Close();
  Action := caFree;
end;

procedure TFmList.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TFmList.FormShow(Sender: TObject);
begin
  cdsList.Open();
  WindowState := wsMaximized;
end;

end.
