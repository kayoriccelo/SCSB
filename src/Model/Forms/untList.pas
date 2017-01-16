unit untList;

interface

uses
  untEnumerator, System.Generics.Collections, Datasnap.DBClient,
  untBR, Vcl.Forms, System.Classes;

type

  TLists = class
  private
    FBR: TBR;
  protected
    procedure btnInsertClick(Sender: TObject); virtual; abstract; // KayoRiccelo - Abstract methods
    procedure btnUpdateClick(Sender: TObject); virtual; abstract;
    procedure btnDeleteClick(Sender: TObject); virtual; abstract;
    procedure btnCloseClick(Sender: TObject); virtual; abstract;
    procedure FormClose(Sender: TObject; var Action: TCloseAction); virtual; abstract;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); virtual; abstract;
    procedure FormShow(Sender: TObject); virtual; abstract;

    function Configuration: Boolean; virtual; abstract;
  public
    function Load: Boolean; virtual; abstract;

    constructor Create; virtual; abstract;
    destructor Destroy; virtual;

  end;

  TListCliente = class(TLists) // KayoRiccelo - Inheritance classes
  private

  protected
    procedure btnInsertClick(Sender: TObject); override; // KayoRiccelo - Overwritten methods
    procedure btnUpdateClick(Sender: TObject); override;
    procedure btnDeleteClick(Sender: TObject); override;
    procedure btnCloseClick(Sender: TObject); override;
    procedure FormClose(Sender: TObject; var Action: TCloseAction); override;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); override;
    procedure FormShow(Sender: TObject); override;

    function Configuration: Boolean; override;

  public
    function Load: Boolean; override;

    constructor Create; override;

  end;

implementation

uses
  untFmList.Clientes, System.SysUtils, untControl.Forms, untEntity,
  untEntity.View, untFmList, Winapi.Windows;

{ TListCliente }

procedure TListCliente.btnDeleteClick(Sender: TObject);
begin
  ControlForms.RunReg(regCliente, tcdDelete, FmListClientes.cdsListId.Value);
end;

procedure TListCliente.btnInsertClick(Sender: TObject);
begin
  ControlForms.RunReg(regCliente, tcdInsert, 0);
end;

procedure TListCliente.btnUpdateClick(Sender: TObject);
begin
  ControlForms.RunReg(regCliente, tcdUpdate, FmListClientes.cdsListId.Value);
end;

function TListCliente.Configuration: Boolean;
begin
  FmListClientes.btnInsert.OnClick := btnInsertClick;
  FmListClientes.btnUpdate.OnClick := btnUpdateClick;
  FmListClientes.btnDelete.OnClick := btnDeleteClick;
  FmListClientes.btnClose.OnClick := btnCloseClick;
  FmListClientes.OnClose := FormClose;
  FmListClientes.OnKeyDown := FormKeyDown;
  FmListClientes.OnShow := FormShow;
end;

constructor TListCliente.Create;
begin
  FBR := TBRCliente.Create;
  Configuration;
end;

function TListCliente.Load: Boolean;
var
  loObject: TObject;
begin

  try
    Result := True;

    FmListClientes.cdsList.EmptyDataSet;

    for loObject in FBR.List('', '') do
      with TViewCliente(loObject) do
      begin
        FmListClientes.cdsList.Append;

        FmListClientes.cdsListId.Value := id;
        FmListClientes.cdsListCodigo.Value := Codigo;
        FmListClientes.cdsListNome.Value := Nome;
        FmListClientes.cdsListDataNascimento.Value := DataNascimento;
        FmListClientes.cdsListDataCadastro.Value := DataCadastro;
        FmListClientes.cdsListRg.Value := Rg;
        FmListClientes.cdsListCpf.Value := Cpf;
        FmListClientes.cdsListCodigoSexo.Value := CodigoSexo;
        FmListClientes.cdsListDescricaoSexo.Value := DescricaoSexo;
        FmListClientes.cdsListCodigoFunc.Value := CodigoFuncionario;
        FmListClientes.cdsListNomeFunc.Value := NomeFuncionario;

        FmListClientes.cdsList.Post;
      end;

  except
    Result := False;
  end;
end;

procedure TListCliente.btnCloseClick(Sender: TObject);
begin
  FmListClientes.Close;
end;

procedure TListCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmListClientes.cdsList.Close();
  // Action := caFree;
end;

procedure TListCliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    FmListClientes.Close;
end;

procedure TListCliente.FormShow(Sender: TObject);
begin
  FmListClientes.cdsList.Open();
  FmListClientes.WindowState := wsMaximized;
  Load;
end;

{ TList }

destructor TLists.Destroy;
begin
  FreeAndNil(FBR);
end;

end.
