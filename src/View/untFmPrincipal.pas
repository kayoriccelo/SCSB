unit untFmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Menus,
  untConnection, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtons;

type
  TFmMain = class(TForm)
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    FConnection: TConnection;

  public
    property Connection: TConnection read FConnection write FConnection;
  end;

var
  FmMain: TFmMain;

implementation

uses
  untControl.Forms, untEnumerator, untControl.Reports;

{$R *.dfm}

procedure TFmMain.cxButton1Click(Sender: TObject);
begin
  ControlForms.RunList(lstCliente);
end;

procedure TFmMain.FormCreate(Sender: TObject);
begin
  if not Assigned(ControlForms) then
    ControlForms := TControlForms.Create;

  if not Assigned(ControlReports) then
    ControlReports := TControlReports.Create;

  Connection := TConnection.Create;
  Connection.Connected(tcnFireBird);
end;

procedure TFmMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ControlForms);
end;

end.
