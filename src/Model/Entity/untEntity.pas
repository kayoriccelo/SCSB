(* ------------------------------------------------------------------
  Propósito da Unit:
  Programador / Data: Kayo Riccelo 10/01/2017
  Analista Responsável:
  Revisões:
  Programador:
  Data: Descrição da Revisão
  Comentários adicionais:
  ------------------------------------------------------------------ *)
unit untEntity;

interface

type

{$REGION '    References Registration    '}
  TCliente = class;
  TContato = class;
  TEmpresa = class;
  TEndereco = class;
  TFornecedor = class;
  TFuncao = class;
  TFuncionario = class;
  TProduto = class;
  TServico = class;
  TUsuario = class;
{$ENDREGION}
{$REGION '    References Domain    '}
  TCidade = class;
  TEstado = class;
  TSexo = class;
  TTipoUsuario = class;
  TLocalidade = class;
  TMeioContato = class;
{$ENDREGION}
{$REGION '    References Movements    '}
  TAgendamento = class;
  TComanda = class;
  TComandaAux = class;
  TCompra = class;
  TCompraAux = class;
  TEstoque = class;
  TPagamento = class;
  TVenda = class;
  TVendaAux = class;
{$ENDREGION}
{$REGION '    Entity Registration    '}

  TCliente = class
  private
    FId: Integer;
    FCodigo: String;
    FNome: String;
    FDataCadastro: TDateTime;
    FDataNascimento: TDateTime;
    FRg: String;
    FCpf: String;
    FFkSexo: TSexo;
    FFkFuncionario: TFuncionario;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
    property DataNascimento: TDateTime read FDataNascimento write FDataNascimento;
    property Rg: String read FRg write FRg;
    property Cpf: String read FCpf write FCpf;
    property FkSexo: TSexo read FFkSexo write FFkSexo;
    property FkFuncionario: TFuncionario read FFkFuncionario write FFkFuncionario;

    constructor Create;
    destructor Destroy;

  end;

  TEmpresa = class
  private
    FId: Integer;
    FCnpj: String;
    FRazaoSocial: String;
    FNomeFantasia: String;
    FFkFuncionario: TFuncionario;

  public
    property Id: Integer read FId write FId;
    property Cnpj: String read FCnpj write FCnpj;
    property RazaoSocial: String read FRazaoSocial write FRazaoSocial;
    property NomeFantasia: String read FNomeFantasia write FNomeFantasia;
    property FkFuncionario: TFuncionario read FFkFuncionario write FFkFuncionario;

    constructor Create;
    destructor Destroy;

  end;

  TEndereco = class
  private
    FId: Integer;
    FCep: String;
    FLogradouro: String;
    FNumero: String;
    FFkLocalidade: TLocalidade;

  public
    property Id: Integer read FId write FId;
    property Cep: String read FCep write FCep;
    property Logradouro: String read FLogradouro write FLogradouro;
    property Numero: String read FNumero write FNumero;
    property FkLocalidade: TLocalidade read FFkLocalidade write FFkLocalidade;

    constructor Create;
    destructor Destroy;

  end;

  TFornecedor = class
  private
    FId: Integer;
    FCpfCnpj: String;
    FDescricao: String;
    FDataCadastro: TDateTime;

  public
    property Id: Integer read FId write FId;
    property CpfCnpj: String read FCpfCnpj write FCpfCnpj;
    property Descricao: String read FDescricao write FDescricao;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;

  end;

  TFuncao = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;
    FDataCadastro: TDateTime;
    FSalario: Double;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
    property Salario: Double read FSalario write FSalario;

  end;

  TFuncionario = class
  private
    FId: Integer;
    FCodigo: String;
    FNome: String;
    FDataAdmissao: TDateTime;
    FDataNascimento: TDateTime;
    FDataCadastro: TDateTime;
    FRg: String;
    FCpf: String;
    FFkFuncao: TFuncao;
    FFkSexo: TSexo;
    FFkEmpresa: TEmpresa;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property DataAdmissao: TDateTime read FDataAdmissao write FDataAdmissao;
    property DataNascimento: TDateTime read FDataNascimento write FDataNascimento;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
    property Rg: String read FRg write FRg;
    property Cpf: String read FCpf write FCpf;
    property FkFuncao: TFuncao read FFkFuncao write FFkFuncao;
    property FkSexo: TSexo read FFkSexo write FFkSexo;
    property FkEmpresa: TEmpresa read FFkEmpresa write FFkEmpresa;

    constructor Create;
    destructor Destroy;

  end;

  TProduto = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;
    FDataCadastro: TDateTime;
    FValorCompra: Double;
    FValorVenda: Double;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
    property ValorCompra: Double read FValorCompra write FValorCompra;
    property ValorVenda: Double read FValorVenda write FValorVenda;

  end;

  TServico = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;
    FDataCadastro: TDateTime;
    FDuracao: TTime;
    FValor: Double;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
    property Duracao: TTime read FDuracao write FDuracao;
    property Valor: Double read FValor write FValor;

  end;

  TUsuario = class
  private
    FId: Integer;
    FUsuario: String;
    FSenha: String;
    FFkTipoUsuario: TTipoUsuario;
    FFkFuncionario: TFuncionario;

  public
    property Id: Integer read FId write FId;
    property Usuario: String read FUsuario write FUsuario;
    property Senha: String read FSenha write FSenha;
    property FkTipoUsuario: TTipoUsuario read FFkTipoUsuario write FFkTipoUsuario;
    property FkFuncionario: TFuncionario read FFkFuncionario write FFkFuncionario;

    constructor Create;
    destructor Destroy;

  end;

  TMeioContato = class
  private
    FId: Integer;
    FFkCliente: TCliente;
    FFkFuncionario: TFuncionario;
    FFkFornecedor: TFornecedor;
    FFkEmpresa: TEmpresa;
    FFkContato: TContato;

  public
    property Id: Integer read FId write FId;
    property FkCliente: TCliente read FFkCliente write FFkCliente;
    property FkFuncionario: TFuncionario read FFkFuncionario write FFkFuncionario;
    property FkFornecedor: TFornecedor read FFkFornecedor write FFkFornecedor;
    property FkEmpresa: TEmpresa read FFkEmpresa write FFkEmpresa;
    property FkContato: TContato read FFkContato write FFkContato;

    constructor Create;
    destructor Destroy;

  end;

  TContato = class
  private
    FId: Integer;
    FEhPrincipal: Boolean;
    FValor: String;

  public
    property Id: Integer read FId write FId;
    property EhPrincipal: Boolean read FEhPrincipal write FEhPrincipal;
    property Valor: String read FValor write FValor;

  end;

{$ENDREGION}
{$REGION '    Entity Domain    '}

  TLocalidade = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;
    FFkCidade: TCidade;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property FkCidade: TCidade read FFkCidade write FFkCidade;

    constructor Create;
    destructor Destroy;

  end;

  TCidade = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;
    FFkEstado: TEstado;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property FkEstado: TEstado read FFkEstado write FFkEstado;

    constructor Create;
    destructor Destroy;

  end;

  TEstado = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;

  end;

  TSexo = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;

  end;

  TTipoUsuario = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;

  end;
{$ENDREGION}
{$REGION '    Entity Movements    '}

  TAgendamento = class
  private
    FId: Integer;
    FData: TDateTime;
    FStatus: String;
    FFkCliente: TCliente;

  public
    property Id: Integer read FId write FId;
    property Data: TDateTime read FData write FData;
    property Status: String read FStatus write FStatus;
    property FkCliente: TCliente read FFkCliente write FFkCliente;

    constructor Create;
    destructor Destroy;

  end;

  TComanda = class
  private
    FId: Integer;
    FFkCliente: TCliente;
    FFkFuncionario: TFuncionario;

  public
    property Id: Integer read FId write FId;
    property FkCliente: TCliente read FFkCliente write FFkCliente;
    property FkFuncionario: TFuncionario read FFkFuncionario write FFkFuncionario;

    constructor Create;
    destructor Destroy;

  end;

  TComandaAux = class
  private
    FId: Integer;
    FFkComanda: TComanda;
    FFkServico: TServico;
    FFkProduto: TProduto;
    FQuantidade: Integer;
    FValorUnitario: Double;
    FSubValorTotal: Double;

  public
    property Id: Integer read FId write FId;
    property FkComanda: TComanda read FFkComanda write FFkComanda;
    property FkServico: TServico read FFkServico write FFkServico;
    property FkProduto: TProduto read FFkProduto write FFkProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    property SubValorTotal: Double read FSubValorTotal write FSubValorTotal;

    constructor Create;
    destructor Destroy;

  end;

  TCompra = class
  private
    FId: Integer;
    FFkFornecedor: TFornecedor;
    FDataVenda: TDateTime;
    FStatus: String;
    FValorTotal: Double;

  public
    property Id: Integer read FId write FId;
    property FkFornecedor: TFornecedor read FFkFornecedor write FFkFornecedor;
    property DataVenda: TDateTime read FDataVenda write FDataVenda;
    property Status: String read FStatus write FStatus;
    property ValorTotal: Double read FValorTotal write FValorTotal;

    constructor Create;
    destructor Destroy;

  end;

  TCompraAux = class
  private
    FId: Integer;
    FFkCompra: TCompra;
    FFkProduto: TProduto;
    FQuantidade: Integer;
    FValorUnitario: Double;
    FSubValorTotal: Double;

  public
    property Id: Integer read FId write FId;
    property FkCompra: TCompra read FFkCompra write FFkCompra;
    property FkProduto: TProduto read FFkProduto write FFkProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    property SubValorTotal: Double read FSubValorTotal write FSubValorTotal;

    constructor Create;
    destructor Destroy;

  end;

  TEstoque = class
  private
    FId: Integer;
    FFkProduto: TProduto;
    FQuantidade: Integer;

  protected

  public
    property Id: Integer read FId write FId;
    property FkProduto: TProduto read FFkProduto write FFkProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;

    constructor Create;
    destructor Destroy;

  end;

  TPagamento = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;
    FValor: Double;
    FDataPagamento: TDateTime;
    FDataVencimento: TDateTime;
    FQuantidade: Integer;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Valor: Double read FValor write FValor;
    property DataPagamento: TDateTime read FDataPagamento write FDataPagamento;
    property DataVencimento: TDateTime read FDataVencimento write FDataVencimento;
    property Quantidade: Integer read FQuantidade write FQuantidade;

  end;

  TVenda = class
  private
    FId: Integer;
    FFkCliente: TCliente;
    FDataVenda: TDateTime;
    FStatus: String;
    FValorTotal: Double;

  public
    property Id: Integer read FId write FId;
    property FkCliente: TCliente read FFkCliente write FFkCliente;
    property DataVenda: TDateTime read FDataVenda write FDataVenda;
    property Status: String read FStatus write FStatus;
    property ValorTotal: Double read FValorTotal write FValorTotal;

    constructor Create;
    destructor Destroy;

  end;

  TVendaAux = class
  private
    FId: Integer;
    FFkVenda: TVenda;
    FFkProduto: TProduto;
    FQuantidade: Integer;
    FValorUnitario: Double;
    FSubValorTotal: Double;

  public
    property Id: Integer read FId write FId;
    property FkVenda: TVenda read FFkVenda write FFkVenda;
    property FkProduto: TProduto read FFkProduto write FFkProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    property SubValorTotal: Double read FSubValorTotal write FSubValorTotal;

    constructor Create;
    destructor Destroy;

  end;
{$ENDREGION}

implementation

uses
  System.SysUtils;

{ TUsuario }

constructor TUsuario.Create;
begin
  FFkTipoUsuario := TTipoUsuario.Create;
  FFkFuncionario := TFuncionario.Create;
end;

destructor TUsuario.Destroy;
begin
  FreeAndNil(FFkTipoUsuario);
  FreeAndNil(FFkFuncionario);
end;

{ TContato }

constructor TMeioContato.Create;
begin
  FFkCliente := TCliente.Create;
  FFkFuncionario := TFuncionario.Create;
  FFkFornecedor := TFornecedor.Create;
  FFkEmpresa := FFkEmpresa.Create;
  FFkContato := TContato.Create;
end;

destructor TMeioContato.Destroy;
begin
  FreeAndNil(FFkCliente);
  FreeAndNil(FFkFuncionario);
  FreeAndNil(FFkFornecedor);
  FreeAndNil(FFkEmpresa);
  FreeAndNil(FFkContato);
end;

{ TCliente }

constructor TCliente.Create;
begin

end;

destructor TCliente.Destroy;
begin

end;

{ TEmpresa }

constructor TEmpresa.Create;
begin
  FFkFuncionario := TFuncionario.Create;
end;

destructor TEmpresa.Destroy;
begin
  FreeAndNil(FFkFuncionario);
end;

{ TFuncionario }

constructor TFuncionario.Create;
begin
  FFkFuncao := TFuncao.Create;
  FFkSexo := TSexo.Create;
end;

destructor TFuncionario.Destroy;
begin
  FreeAndNil(FFkFuncao);
  FreeAndNil(FFkSexo);
end;

{ TEndereco }

constructor TEndereco.Create;
begin
  FFkLocalidade := TLocalidade.Create;
end;

destructor TEndereco.Destroy;
begin
  FreeAndNil(FFkLocalidade);
end;

{ TLocalidade }

constructor TLocalidade.Create;
begin
  FFkCidade := TCidade.Create;
end;

destructor TLocalidade.Destroy;
begin
  FreeAndNil(FFkCidade);
end;

{ TCidade }

constructor TCidade.Create;
begin
  FFkEstado := TEstado.Create;
end;

destructor TCidade.Destroy;
begin
  FreeAndNil(FFkEstado);
end;

{ TAgendamento }

constructor TAgendamento.Create;
begin
  FFkCliente := TCliente.Create;
end;

destructor TAgendamento.Destroy;
begin
  FreeAndNil(FFkCliente);
end;

{ TComanda }

constructor TComanda.Create;
begin
  FFkCliente := TCliente.Create;
  FFkFuncionario := TFuncionario.Create;
end;

destructor TComanda.Destroy;
begin
  FreeAndNil(FFkCliente);
  FreeAndNil(FFkFuncionario);
end;

{ TComandaAux }

constructor TComandaAux.Create;
begin
  FFkComanda := TComanda.Create;
  FFkServico := TServico.Create;
  FFkProduto := TProduto.Create;
end;

destructor TComandaAux.Destroy;
begin
  FreeAndNil(FFkComanda);
  FreeAndNil(FFkServico);
  FreeAndNil(FFkProduto);
end;

{ TCompra }

constructor TCompra.Create;
begin
  FFkFornecedor := TFornecedor.Create;
end;

destructor TCompra.Destroy;
begin
  FreeAndNil(FFkFornecedor);
end;

{ TCompraAux }

constructor TCompraAux.Create;
begin
  FFkCompra := TCompra.Create;
  FFkProduto := TProduto.Create;
end;

destructor TCompraAux.Destroy;
begin
  FreeAndNil(FFkCompra);
  FreeAndNil(FFkProduto);
end;

{ TEstoque }

constructor TEstoque.Create;
begin
  FFkProduto := TProduto.Create;
end;

destructor TEstoque.Destroy;
begin
  FreeAndNil(FFkProduto);
end;

{ TVenda }

constructor TVenda.Create;
begin
  FFkCliente := TCliente.Create;
end;

destructor TVenda.Destroy;
begin
  FreeAndNil(FFkCliente);
end;

{ TVendaAux }

constructor TVendaAux.Create;
begin
  FFkVenda := TVenda.Create;
  FFkProduto := TProduto.Create;
end;

destructor TVendaAux.Destroy;
begin
  FreeAndNil(FFkVenda);
  FreeAndNil(FFkProduto);
end;

end.
