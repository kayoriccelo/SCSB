unit untFmList.Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFmList, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, dxGDIPlusClasses, cxImage;

type
  TFmListClientes = class(TFmList)
    cdsListId: TIntegerField;
    cdsListCodigo: TStringField;
    cdsListNome: TStringField;
    cdsListDataNascimento: TDateTimeField;
    cdsListDataCadastro: TDateTimeField;
    cdsListRg: TStringField;
    cdsListCpf: TStringField;
    cdsListIdSexo: TIntegerField;
    cdsListIdFuncionario: TIntegerField;
    cdsListFuncionario: TStringField;
    cdsListSexo: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmListClientes: TFmListClientes;

implementation

{$R *.dfm}

end.
