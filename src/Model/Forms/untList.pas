unit untList;

interface

uses
  untFmList, untEnumerator, System.Generics.Collections, Datasnap.DBClient,
  untBR;

type

  TList = class
  private
    FBR: TBR;
  protected
    procedure btnInsertClick(Sender: TObject); virtual; abstract; // KayoRiccelo - Abstract methods
    procedure btnUpdateClick(Sender: TObject); virtual; abstract;
    procedure btnDeleteClick(Sender: TObject); virtual; abstract;

    function ButtonsConfiguration: Boolean;
  public
    function Load: Boolean; virtual; abstract;

    constructor Create; virtual; abstract;
    destructor Destroy; virtual;

  end;

  TListClientes = class(TList) // KayoRiccelo - Inheritance classes
  private

  protected
    procedure btnInsertClick(Sender: TObject); override; // KayoRiccelo - Overwritten methods
    procedure btnUpdateClick(Sender: TObject); override;
    procedure btnDeleteClick(Sender: TObject); override;

  public
    function Load: Boolean; override;

    constructor Create; override;

  end;

implementation

uses
  untFmList.Clientes, System.SysUtils, untControl.Forms, untEntity;

{ TListClientes }

procedure TListClientes.btnDeleteClick(Sender: TObject);
begin
  ControlForms.RunReg(regCliente, tcdDelete, FmListClientes.cdsListId.Value);
end;

procedure TListClientes.btnInsertClick(Sender: TObject);
begin
  ControlForms.RunReg(regCliente, tcdInsert, 0);
end;

procedure TListClientes.btnUpdateClick(Sender: TObject);
begin
  ControlForms.RunReg(regCliente, tcdUpdate, FmListClientes.cdsListId.Value);
end;

constructor TListClientes.Create;
begin
  FBR := TBRCliente.Create;
end;

function TListClientes.Load: Boolean;
var
  loObject: TObject;
begin

  try
    Result := True;

    FmListClientes.cdsList.EmptyDataSet;

    for loObject in FBR.List('', '') do
      with TCliente(loObject) do
      begin
        FmListClientes.cdsList.Insert;

        FmListClientes.cdsListId.Value := id;
        FmListClientes.cdsListCodigo.Value := Codigo;
        FmListClientes.cdsListNome.Value := Nome;
        FmListClientes.cdsListDataNascimento.Value := DataNascimento;
        FmListClientes.cdsListCpf.Value := Cpf;

        FmListClientes.cdsList.Post;
      end;

  except
    Result := False;
  end;
end;

{ TList }

function TList.ButtonsConfiguration: Boolean;
begin
  FmListClientes.btnInsert.OnClick := btnInsertClick;
  FmListClientes.btnUpdate.OnClick := btnUpdateClick;
  FmListClientes.btnDelete.OnClick := btnDeleteClick;
  FmListClientes.Load := Load;
end;

destructor TList.Destroy;
begin
  FreeAndNil(FBR);
end;

end.
