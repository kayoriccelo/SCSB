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
    procedure btnInsertClick(Sender: TObject); virtual; abstract;
    procedure btnUpdateClick(Sender: TObject); virtual; abstract;
    procedure btnDeleteClick(Sender: TObject); virtual; abstract;

  public
    function Load: Boolean; virtual; abstract;

    constructor Create; virtual; abstract;
    destructor Destroy; virtual;

  end;

  TListClientes = class(TList)
  private

  protected
    procedure btnInsertClick(Sender: TObject); override;
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

end;

procedure TListClientes.btnInsertClick(Sender: TObject);
begin
  ControlForms.RunReg(regCliente, tcdInsert, 0);
end;

procedure TListClientes.btnUpdateClick(Sender: TObject);
begin
  // ControlForms.RunReg(regCliente, tcdUpdate, FmListClientes.dbGrid);
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

    FmListClientes.cdsList.Open;

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

destructor TList.Destroy;
begin
  FreeAndNil(FBR);
end;

end.
