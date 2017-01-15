unit untRegistration;

interface

uses
  untEnumerator, untBR, System.Classes;

type

  TReg = class
  private
    FBR: TBR;

  protected
    procedure btnPostClick(Sender: TObject); virtual; abstract; // KayoRiccelo - Abstract methods
    procedure btnCancelClick(Sender: TObject); virtual; abstract;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); virtual; abstract;
    procedure FormShow(Sender: TObject); virtual; abstract;

    function Configuration: Boolean; virtual; abstract;

    property BR: TBR read FBR write FBR;
  public
    function Load: Boolean; virtual; abstract;

    constructor Create; virtual; abstract;
    destructor Destroy; virtual;

  end;

  TRegCliente = class(TReg)
  private

  protected
    procedure btnPostClick(Sender: TObject); override;
    procedure btnCancelClick(Sender: TObject); override;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState); override;
    procedure FormShow(Sender: TObject); override;

    function Configuration: Boolean; override;
  public
    function Load: Boolean; override;

    constructor Create; override;

  end;

implementation

uses
  System.SysUtils, untFmRegCliente, Winapi.Windows, untEntity;

{ TReg }

destructor TReg.Destroy;
begin
  FreeAndNil(FBR);
end;

{ TRegCliente }

procedure TRegCliente.btnCancelClick(Sender: TObject);
begin
  FmRegCliente.Close;
end;

procedure TRegCliente.btnPostClick(Sender: TObject);
var
  loCliente: TCliente;
  loBRSexo: TBRSexo;
  loBRFunc: TBRFuncionario;
begin
  try
    loCliente := TCliente.Create;
    loBRSexo := TBRSexo.Create;
    loBRFunc := TBRFuncionario.Create;

    loCliente.Codigo := FmRegCliente.cdsRegCodigo.Value;
    loCliente.Nome := FmRegCliente.cdsRegNome.Value;
    loCliente.DataCadastro := FmRegCliente.cdsRegDataCadastro.Value;
    loCliente.DataNascimento := FmRegCliente.cdsRegDataNascimento.Value;
    loCliente.Rg := FmRegCliente.cdsRegRg.Value;
    loCliente.Cpf := FmRegCliente.cdsRegCpf.Value;
    loCliente.FkSexo := TSexo(loBRSexo.Select(FmRegCliente.cdsRegIdSexo.Value));
    loCliente.FkFuncionario := TFuncionario(loBRFunc.Select(FmRegCliente.cdsRegIdFunc.Value));

    case FmRegCliente.TypeCrud of
      tcdInsert:
        BR.Insert(loCliente);
      tcdUpdate:
        begin
          loCliente.Id := FmRegCliente.cdsRegId.Value;
          BR.Update(loCliente);
        end;
    end;

  finally
    FreeAndNil(loCliente);
    FreeAndNil(loBRSexo);
    FreeAndNil(loBRFunc);
  end;
end;

function TRegCliente.Configuration: Boolean;
begin
  FmRegCliente.Load := Load;
  FmRegCliente.btnPost.OnClick := btnPostClick;
  FmRegCliente.btnCancel.OnClick := btnCancelClick;
  FmRegCliente.OnKeyDown := FormKeyDown;
  FmRegCliente.OnShow := FormShow
end;

constructor TRegCliente.Create;
begin
  FBR := TBRCliente.Create;
end;

procedure TRegCliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    FmRegCliente.Close;
end;

procedure TRegCliente.FormShow(Sender: TObject);
begin
  FmRegCliente.cdsReg.Open;
  FmRegCliente.Load;
end;

function TRegCliente.Load: Boolean;
begin
  FmRegCliente.Close;
end;

end.
