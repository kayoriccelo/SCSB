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
  FmRegCliente.cdsReg.Cancel;
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
    FmRegCliente.cdsReg.Cancel;

    FreeAndNil(loCliente);
    FreeAndNil(loBRSexo);
    FreeAndNil(loBRFunc);
  end;
end;

function TRegCliente.Configuration: Boolean;
begin
  FmRegCliente.btnPost.OnClick := btnPostClick;
  FmRegCliente.btnCancel.OnClick := btnCancelClick;
  FmRegCliente.OnKeyDown := FormKeyDown;
  FmRegCliente.OnShow := FormShow
end;

constructor TRegCliente.Create;
begin
  FBR := TBRCliente.Create;
  Configuration;
end;

procedure TRegCliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    FmRegCliente.Close;
end;

procedure TRegCliente.FormShow(Sender: TObject);
begin
  FmRegCliente.cdsReg.Open;
  Load;
end;

function TRegCliente.Load: Boolean;
var
  loBRSexo: TBRSexo;
  loBRFunc: TBRFuncionario;
  loObject: TObject;
begin
  try

    loBRSexo := TBRSexo.Create;
    loBRFunc := TBRFuncionario.Create;

    case FmRegCliente.TypeCrud of
      tcdInsert:
        begin
            FmRegCliente.cdsReg.EmptyDataSet;
            FmRegCliente.cdsReg.insert;
            FmRegCliente.cdsRegCodigo.Value := FormatFloat('0000', BR.NextCod);
            FmRegCliente.cdsRegNome.Value := 'teste';
        end;
      tcdUpdate:
        begin
          with TCliente(BR.Select(FmRegCliente.Id)) do
          begin
            FmRegCliente.cdsReg.EmptyDataSet;
            FmRegCliente.cdsReg.insert;
            FmRegCliente.cdsRegId.Value := Id;
            FmRegCliente.cdsRegCodigo.Value := Codigo;
            FmRegCliente.cdsRegNome.Value := Nome;
            FmRegCliente.cdsRegDataCadastro.Value := DataCadastro;
            FmRegCliente.cdsRegDataNascimento.Value := DataNascimento;
            FmRegCliente.cdsRegRg.Value := Rg;
            FmRegCliente.cdsRegCpf.Value := Cpf;
            FmRegCliente.cdsRegIdSexo.Value := FkSexo.Id;
            FmRegCliente.cdsRegIdFunc.Value := FkFuncionario.Id;
          end;
        end;
    end;

    for loObject in loBRSexo.List('', '') do
      with TSexo(loObject) do
      begin
        FmRegCliente.cdsSexo.EmptyDataSet;
        FmRegCliente.cdsSexo.Insert;
        FmRegCliente.cdsSexoId.Value := Id;
        FmRegCliente.cdsSexoDescricao.Value := Descricao;
        FmRegCliente.cdsSexo.Post;
      end;

    for loObject in loBRFunc.List('', '') do
      with TFuncionario(loObject) do
      begin
        FmRegCliente.cdsFunc.EmptyDataSet;
        FmRegCliente.cdsFunc.Insert;
        FmRegCliente.cdsFuncId.Value := Id;
        FmRegCliente.cdsFuncNome.Value := Nome;
        FmRegCliente.cdsFunc.Post;
      end;

    FmRegCliente.cdsReg.Insert;

  finally
    FreeAndNil(loBRSexo);
    FreeAndNil(loBRFunc);
  end;
end;

end.
