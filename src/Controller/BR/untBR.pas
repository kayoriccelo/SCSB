(* ------------------------------------------------------------------
  Propósito da Unit:
  Programador: Data: Kayo Riccelo 12/01/2017
  Analista Responsável:
  Revisões:
  Programador:
  Data: Descrição da Revisão
  Comentários adicionais:
  ------------------------------------------------------------------ *)
unit untBR;

interface

uses
  System.Generics.Collections, untEntity, untDAO, untEnumerator,
  System.Variants, System.SysUtils, Winapi.ActiveX;

type

  TBR = class
  private

  protected
    FDAO: TDAO;

  public
    function Insert(AObject: TObject): Boolean; virtual;
    function Update(AObject: TObject): Boolean; virtual;
    function Delete(AObject: TObject): Boolean; virtual;
    function Select(AIndex: Integer): TObject; virtual;
    function List(AProperty: String; AValue: Variant): TList<TObject>; virtual;

    function Validate(ATypeCrud: eTypeCrud; AObject: TObject): Boolean; virtual; abstract;

    constructor Create; virtual; abstract;
    destructor Destroy; virtual;

  end;

{$REGION '    BR Domain    '}

  TBRSexo = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRCidade = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBREstado = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRTipoUsuario = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRMeioContato = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRLocalidade = class(TBR)
  private
  public
    constructor Create; override;
  end;

{$ENDREGION}

{$REGION '    BR Registration    '}

  TBRCliente = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRFuncionario = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBREmpresa = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRFornecedor = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRFuncao = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRProduto = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRServico = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRUsuario = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBREndereco = class(TBR)
  private
  public
    constructor Create; override;
  end;

{$ENDREGION}

{$REGION '    BR Movements    '}

  TBRAgendamento = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRComanda = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRComandaAux = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRCompra = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRCompraAux = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBREstoque = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRPagamento = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRVenda = class(TBR)
  private
  public
    constructor Create; override;
  end;

  TBRVendaAux = class(TBR)
  private
  public
    constructor Create; override;
  end;

{$ENDREGION}

implementation

uses
  System.Rtti, CodeSiteLogging;

{ TBR }

function TBR.Delete(AObject: TObject): Boolean;
begin
  result := FDAO.Delete(AObject);
end;

destructor TBR.Destroy;
begin
  FreeAndNil(FDAO);
end;

function TBR.Insert(AObject: TObject): Boolean;
begin
  result := FDAO.Insert(AObject);
end;

function TBR.List(AProperty: String; AValue: Variant): TList<TObject>;
begin
  result := FDAO.List(AProperty, AValue);
end;

function TBR.Select(AIndex: Integer): TObject;
begin
  result := FDAO.Select(AIndex);
end;

function TBR.Update(AObject: TObject): Boolean;
begin
  result := FDAO.Update(AObject);
end;

{ TBRCliente }

constructor TBRCliente.Create;
begin
  FDAO := TDAOCliente.Create;
end;

{ TBRFuncionario }

constructor TBRFuncionario.Create;
begin
  FDAO := TDAOFuncionario.Create;
end;

{ TBRSexo }

constructor TBRSexo.Create;
begin
  FDAO := TDAOSexo.Create;
end;

{ TBRCidade }

constructor TBRCidade.Create;
begin
  FDAO := TDAOCidade.Create;
end;

{ TBREstado }

constructor TBREstado.Create;
begin
  FDAO := TDAOEstado.Create;
end;

{ TBRTipoUsuario }

constructor TBRTipoUsuario.Create;
begin
  FDAO := TDAOTipoUsuario.Create;
end;

{ TBRMeioContato }

constructor TBRMeioContato.Create;
begin
  FDAO := TDAOMeioContato.Create;
end;

{ TBRLocalidade }

constructor TBRLocalidade.Create;
begin
  FDAO := TDAOLocalidade.Create;
end;

{ TBREmpresa }

constructor TBREmpresa.Create;
begin
  FDAO := TDAOEmpresa.Create;
end;

{ TBRFornecedor }

constructor TBRFornecedor.Create;
begin
  FDAO := TDAOFornecedor.Create;
end;

{ TBRFuncao }

constructor TBRFuncao.Create;
begin
  FDAO := TDAOFuncao.Create;
end;

{ TBRProduto }

constructor TBRProduto.Create;
begin
  FDAO := TDAOProduto.Create;
end;

{ TBRServico }

constructor TBRServico.Create;
begin
  FDAO := TDAOServico.Create;
end;

{ TBRUsuario }

constructor TBRUsuario.Create;
begin
  FDAO := TDAOUsuario.Create;
end;

{ TBREndereco }

constructor TBREndereco.Create;
begin
  FDAO := TDAOEndereco.Create;
end;

{ TBRAgendamento }

constructor TBRAgendamento.Create;
begin
  FDAO := TDAOAgendamento.Create;
end;

{ TBRComanda }

constructor TBRComanda.Create;
begin
  FDAO := TDAOComanda.Create;
end;

{ TBRComandaAux }

constructor TBRComandaAux.Create;
begin
  FDAO := TDAOComandaAux.Create;
end;

{ TBRCompra }

constructor TBRCompra.Create;
begin
  FDAO := TDAOCompra.Create;
end;

{ TBRCompraAux }

constructor TBRCompraAux.Create;
begin
  FDAO := TDAOCompraAux.Create;
end;

{ TBREstoque }

constructor TBREstoque.Create;
begin
  FDAO := TDAOEstoque.Create;
end;

{ TBRPagamento }

constructor TBRPagamento.Create;
begin
  FDAO := TDAOPagamento.Create;
end;

{ TBRVenda }

constructor TBRVenda.Create;
begin
  FDAO := TDAOVenda.Create;
end;

{ TBRVendaAux }

constructor TBRVendaAux.Create;
begin
  FDAO := TDAOVendaAux.Create;
end;

end.
