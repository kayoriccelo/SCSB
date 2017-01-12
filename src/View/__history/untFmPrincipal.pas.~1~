unit untFmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Menus,
  untConnection;

type
  TFmMain = class(TForm)
    mmMain: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentaes1: TMenuItem;
    Empresa1: TMenuItem;
    anque1: TMenuItem;
    Bomba1: TMenuItem;
    Abastecimento1: TMenuItem;
    Relatrios1: TMenuItem;
    Abastecimento2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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
