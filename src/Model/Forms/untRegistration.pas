unit untRegistration;

interface

uses
  untEnumerator, untBR, System.Classes;

type

  TReg = class
  private

  protected
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

    procedure btnInsertContatoClick(Sender: TObject);
    procedure btnUpdateContatoClick(Sender: TObject);
    procedure btnDeleteContatoClick(Sender: TObject);

    function Configuration: Boolean; override;
  public
    function Load: Boolean; override;

    constructor Create; override;

  end;

implementation

uses
  System.SysUtils, untFmRegCliente, Winapi.Windows, untEntity,
  untDmRegistration, untControl.Forms;

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

procedure TRegCliente.btnDeleteContatoClick(Sender: TObject);
var
  loBR: TBRContato;
begin
  try
    loBR := TBRContato.Create;
    loBR.Delete(loBR.Select(FmRegCliente.dsMCont.DataSet.FieldByName('IdContato').Value));
    // refresh
  finally
    FreeAndNil(loBR);
  end;
end;

procedure TRegCliente.btnInsertContatoClick(Sender: TObject);
begin
  ControlForms.RunReg(regContato, tcdInsert, 0);
  // refresh
end;

procedure TRegCliente.btnPostClick(Sender: TObject);
var
  loCliente: TCliente;
  loBRSexo: TBRSexo;
  loBRFunc: TBRFuncionario;
  loBREndereco: TBREndereco;
  loBRLocalidade: TBRLocalidade;
  loBRMCont: TBRMeioContato;
  loObject: TObject;

begin
  try
    loCliente := TCliente.Create;

    loBRSexo := TBRSexo.Create;
    loBRFunc := TBRFuncionario.Create;
    loBREndereco := TBREndereco.Create;
    loBRMCont := TBRMeioContato.Create;

    loCliente.Codigo := FmRegCliente.cdsRegCodigo.Value;
    loCliente.Nome := FmRegCliente.cdsRegNome.Value;
    loCliente.DataCadastro := FmRegCliente.cdsRegDataCadastro.Value;
    loCliente.DataNascimento := FmRegCliente.cdsRegDataNascimento.Value;
    loCliente.Rg := FmRegCliente.cdsRegRg.Value;
    loCliente.Cpf := FmRegCliente.cdsRegCpf.Value;

    if FmRegCliente.cdsRegIdSexo.Value > 0 then
      loCliente.FkSexo := TSexo(loBRSexo.Select(FmRegCliente.cdsRegIdSexo.Value));
    if FmRegCliente.cdsRegIdFunc.Value > 0 then
      loCliente.FkFuncionario := TFuncionario(loBRFunc.Select(FmRegCliente.cdsRegIdFunc.Value));

    if FmRegCliente.dsEnde.DataSet.RecordCount > 0 then
    begin
      loCliente.FkEndereco := TEndereco.Create;
      loCliente.FkEndereco.Cep := FmRegCliente.dsEnde.DataSet.FieldByName('Cep').Value;
      loCliente.FkEndereco.Logradouro := FmRegCliente.dsEnde.DataSet.FieldByName('Logradouro').Value;
      loCliente.FkEndereco.Numero := FmRegCliente.dsEnde.DataSet.FieldByName('Numero').Value;
      loCliente.FkEndereco.FkLocalidade :=
        TLocalidade(loBRLocalidade.Select(FmRegCliente.dsEnde.DataSet.FieldByName('IdLocalidade').Value));
    end;

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
    FreeAndNil(loBREndereco);
    FreeAndNil(loBRMCont);
  end;
end;

procedure TRegCliente.btnUpdateContatoClick(Sender: TObject);
begin
  ControlForms.RunReg(regContato, tcdInsert, FmRegCliente.dsMCont.DataSet.FieldByName('Id').Value);
  // refresh
end;

function TRegCliente.Configuration: Boolean;
begin
  FmRegCliente.btnPost.OnClick := btnPostClick;
  FmRegCliente.btnCancel.OnClick := btnCancelClick;
  FmRegCliente.OnKeyDown := FormKeyDown;
  FmRegCliente.OnShow := FormShow;
  FmRegCliente.btnInsertContato.OnClick := btnInsertContatoClick;
  FmRegCliente.btnUpdateContato.OnClick := btnUpdateContatoClick;
  FmRegCliente.btnDeleteContato.OnClick := btnDeleteContatoClick;
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
  loBRLocali: TBRLocalidade;
  loBRMCont: TBRMeioContato;
  loObject: TObject;

begin
  try

    loBRSexo := TBRSexo.Create;
    loBRFunc := TBRFuncionario.Create;
    loBRLocali := TBRLocalidade.Create;
    loBRMCont := TBRMeioContato.Create;

    for loObject in loBRSexo.List('', '') do
      with TSexo(loObject) do
      begin
        DmRegistration.cdsSexo.EmptyDataSet;
        DmRegistration.cdsSexo.Append;
        DmRegistration.cdsSexoId.Value := Id;
        DmRegistration.cdsSexoDescricao.Value := Descricao;
        DmRegistration.cdsSexo.Post;
      end;

    for loObject in loBRFunc.List('', '') do
      with TFuncionario(loObject) do
      begin
        DmRegistration.cdsFunc.EmptyDataSet;
        DmRegistration.cdsFunc.Append;
        DmRegistration.cdsFuncId.Value := Id;
        DmRegistration.cdsFuncNome.Value := Nome;
        DmRegistration.cdsFunc.Post;
      end;

    { TODO -oKayoRiccelo -cAjustes : Talves usar uma view para trazer todos os dados de relacionamento da localidade }
    for loObject in loBRLocali.List('', '') do
      with TLocalidade(loObject) do
      begin
        DmRegistration.cdsLocali.EmptyDataSet;
        DmRegistration.cdsLocali.Append;
        DmRegistration.cdsLocaliId.Value := Id;
        DmRegistration.cdsLocaliCodigo.Value := Codigo;
        DmRegistration.cdsLocaliDescricao.Value := Descricao;
        DmRegistration.cdsLocaliIdCidade.Value := FkCidade.Id;
        DmRegistration.cdsLocali.Post;
      end;

    case FmRegCliente.TypeCrud of
      tcdInsert:
        begin
          FmRegCliente.cdsReg.EmptyDataSet;
          FmRegCliente.cdsReg.Append;
          FmRegCliente.cdsRegCodigo.Value := BR.NextCod.ToString;

          DmRegistration.cdsEnde.Append;

          DmRegistration.cdsMCont.Append;
        end;
      tcdUpdate:
        begin
          with TCliente(BR.Select(FmRegCliente.Id)) do
          begin
            FmRegCliente.cdsReg.EmptyDataSet;
            FmRegCliente.cdsReg.Append;
            FmRegCliente.cdsRegId.Value := Id;
            FmRegCliente.cdsRegCodigo.Value := Codigo;
            FmRegCliente.cdsRegNome.Value := Nome;
            FmRegCliente.cdsRegDataCadastro.Value := DataCadastro;
            FmRegCliente.cdsRegDataNascimento.Value := DataNascimento;
            FmRegCliente.cdsRegRg.Value := Rg;
            FmRegCliente.cdsRegCpf.Value := Cpf;
            FmRegCliente.cdsRegIdSexo.Value := FkSexo.Id;
            FmRegCliente.cdsRegIdFunc.Value := FkFuncionario.Id;

            FmRegCliente.dsEnde.DataSet.Append;
            FmRegCliente.dsEnde.DataSet.FieldByName('Id').Value := FkEndereco.Id;
            FmRegCliente.dsEnde.DataSet.FieldByName('Cep').Value := FkEndereco.Cep;
            FmRegCliente.dsEnde.DataSet.FieldByName('Logradouro').Value := FkEndereco.Logradouro;
            FmRegCliente.dsEnde.DataSet.FieldByName('Numero').Value := FkEndereco.Numero;
            FmRegCliente.dsEnde.DataSet.FieldByName('IdLocalidade').Value := FkEndereco.FkLocalidade.Id;

            for loObject in loBRMCont.List('id_cliente', Id) do
            begin
              FmRegCliente.dsMCont.DataSet.Append;
              FmRegCliente.dsMCont.DataSet.FieldByName('Id').Value := TMeioContato(loObject).Id;
              FmRegCliente.dsMCont.DataSet.FieldByName('IdContato').Value := TMeioContato(loObject).FkContato.Id;
              FmRegCliente.dsMCont.DataSet.FieldByName('IdCliente').Value := Id;
              FmRegCliente.dsMCont.DataSet.Post;
            end;
          end;
        end;
    end;
  finally
    FreeAndNil(loBRSexo);
    FreeAndNil(loBRFunc);
    FreeAndNil(loBRLocali);
    FreeAndNil(loBRMCont);
  end;
end;

end.
