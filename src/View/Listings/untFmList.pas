unit untFmList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, Vcl.Menus, cxButtons, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxImage;

type
  TFmList = class(TForm)
    pnlButtons: TPanel;
    qryList: TFDQuery;
    dsList: TDataSource;
    grdListDBTableView1: TcxGridDBTableView;
    grdListLevel1: TcxGridLevel;
    grdList: TcxGrid;
    btnClose: TcxButton;
    btnInsert: TcxButton;
    btnUpdate: TcxButton;
    btnDelete: TcxButton;
    imgTitle: TcxImage;
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
  qryList.Close();
  Action := caFree;
end;

procedure TFmList.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TFmList.FormShow(Sender: TObject);
begin
  qryList.Open();
  WindowState := wsMaximized;
end;

end.