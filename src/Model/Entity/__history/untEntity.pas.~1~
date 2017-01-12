(* ------------------------------------------------------------------
  Propósito da Unit:
  Programador / Data: Kayo Riccelo 12/03/2015
  Analista Responsável:
  Revisões:
  Programador:
  Data: Descrição da Revisão
  Comentários adicionais:
  ------------------------------------------------------------------ *)
unit untEntity;

interface

type
  TCliente = class;
  TContato = class;
  TEmpresa = class;
  TEndereco = class;
  TLocalidade = class;
  TFornecedor = class;
  TFuncao = class;
  TFuncionario = class;
  TMeioContato = class;
  TProduto = class;
  TServico = class;
  TUsuario = class;
  TCidade = class;
  TEstado = class;
  TSexo = class;
  TTipoUsuario = class;
  TAgendamento = class;
  TComanda = class;
  TComandaAux = class;
  TCompra = class;
  TCompraAux = class;
  TEstoque = class;
  TPagamento = class;
  TVenda = class;
  TVendaAux = class;

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

  TEmpresa = class
  private
    FId: Integer;
    FCnpj: String;
    FRazaoSocial: String;
    FNomeFantasia: String;
    FFuncionario: TFuncionario;

  public
    property Id: Integer read FId write FId;
    property Cnpj: String read FCnpj write FCnpj;
    property RazaoSocial: String read FRazaoSocial write FRazaoSocial;
    property NomeFantasia: String read FNomeFantasia write FNomeFantasia;
    property Funcionario: TFuncionario read FFuncionario write FFuncionario;

    constructor Create;
    destructor Destroy;

  end;

  TEndereco = class
  private
    FId: Integer;
    FCep: String;
    FLogradouro: String;
    FNumero: String;
    FLocalidade: TLocalidade;

  public
    property Id: Integer read FId write FId;
    property Cep: String read FCep write FCep;
    property Logradouro: String read FLogradouro write FLogradouro;
    property Numero: String read FNumero write FNumero;
    property Localidade: TLocalidade read FLocalidade write FLocalidade;

    constructor Create;
    destructor Destroy;

  end;

  TLocalidade = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;
    FCidade: TCidade;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Cidade: TCidade read FCidade write FCidade;

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
    FFuncao: TFuncao;
    FSexo: TSexo;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property DataAdmissao: TDateTime read FDataAdmissao write FDataAdmissao;
    property DataNascimento: TDateTime read FDataNascimento write FDataNascimento;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
    property Rg: String read FRg write FRg;
    property Cpf: String read FCpf write FCpf;
    property Funcao: TFuncao read FFuncao write FFuncao;
    property Sexo: TSexo read FSexo write FSexo;

    constructor Create;
    destructor Destroy;

  end;

  TMeioContato = class
  private
    FId: Integer;
    FCliente: TCliente;
    FFuncionario: TFuncionario;
    FFornecedor: TFornecedor;
    FEmpresa: TEmpresa;
    FContato: TContato;

  public
    property Id: Integer read FId write FId;
    property Cliente: TCliente read FCliente write FCliente;
    property Funcionario: TFuncionario read FFuncionario write FFuncionario;
    property Fornecedor: TFornecedor read FFornecedor write FFornecedor;
    property Empresa: TEmpresa read FEmpresa write FEmpresa;
    property Contato: TContato read FContato write FContato;

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
    FTipoUsuario: TTipoUsuario;
    FFuncionario: TFuncionario;

  public
    property Id: Integer read FId write FId;
    property Usuario: String read FUsuario write FUsuario;
    property Senha: String read FSenha write FSenha;
    property TipoUsuario: TTipoUsuario read FTipoUsuario write FTipoUsuario;
    property Funcionario: TFuncionario read FFuncionario write FFuncionario;

    constructor Create;
    destructor Destroy;

  end;

  TAgendamento = class
  private
    FId: Integer;
    FData: TDateTime;
    FStatus: String;
    FCliente: TCliente;

  public
    property Id: Integer read FId write FId;
    property Data: TDateTime read FData write FData;
    property Status: String read FStatus write FStatus;
    property Cliente: TCliente read FCliente write FCliente;

    constructor Create;
    destructor Destroy;

  end;

  TComanda = class
  private
    FId: Integer;
    FCliente: TCliente;
    FFuncionario: TFuncionario;

  public
    property Id: Integer read FId write FId;
    property Cliente: TCliente read FCliente write FCliente;
    property Funcionario: TFuncionario read FFuncionario write FFuncionario;

    constructor Create;
    destructor Destroy;

  end;

  TComandaAux = class
  private
    FId: Integer;
    FComanda: TComanda;
    FServico: TServico;
    FProduto: TProduto;
    FQuantidade: Integer;
    FValorUnitario: Double;
    FSubValorTotal: Double;

  public
    property Id: Integer read FId write FId;
    property Comanda: TComanda read FComanda write FComanda;
    property Servico: TServico read FServico write FServico;
    property Produto: TProduto read FProduto write FProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    property SubValorTotal: Double read FSubValorTotal write FSubValorTotal;

    constructor Create;
    destructor Destroy;

  end;

  TCompra = class
  private
    FId: Integer;
    FFornecedor: TFornecedor;
    FDataVenda: TDateTime;
    FStatus: String;
    FValorTotal: Double;

  public
    property Id: Integer read FId write FId;
    property IdFornecedor: TFornecedor read FFornecedor write FFornecedor;
    property DataVenda: TDateTime read FDataVenda write FDataVenda;
    property Status: String read FStatus write FStatus;
    property ValorTotal: Double read FValorTotal write FValorTotal;

    constructor Create;
    destructor Destroy;

  end;

  TCompraAux = class
  private
    FId: Integer;
    FCompra: TCompra;
    FProduto: TProduto;
    FQuantidade: Integer;
    FValorUnitario: Double;
    FSubValorTotal: Double;

  public
    property Id: Integer read FId write FId;
    property IdCompra: TCompra read FCompra write FCompra;
    property IdProduto: TProduto read FProduto write FProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    property SubValorTotal: Double read FSubValorTotal write FSubValorTotal;

    constructor Create;
    destructor Destroy;

  end;

  TEstoque = class
  private
    FId: Integer;
    FProduto: TProduto;
    FQuantidade: Integer;

  protected

  public
    property Id: Integer read FId write FId;
    property Produto: TProduto read FProduto write FProduto;
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
    FCliente: TCliente;
    FDataVenda: TDateTime;
    FStatus: String;
    FValorTotal: Double;

  public
    property Id: Integer read FId write FId;
    property Cliente: TCliente read FCliente write FCliente;
    property DataVenda: TDateTime read FDataVenda write FDataVenda;
    property Status: String read FStatus write FStatus;
    property ValorTotal: Double read FValorTotal write FValorTotal;

    constructor Create;
    destructor Destroy;

  end;

  TVendaAux = class
  private
    FId: Integer;
    FVenda: TVenda;
    FProduto: TProduto;
    FQuantidade: Integer;
    FValorUnitario: Double;
    FSubValorTotal: Double;

  public
    property Id: Integer read FId write FId;
    property Venda: TVenda read FVenda write FVenda;
    property Produto: TProduto read FProduto write FProduto;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    property SubValorTotal: Double read FSubValorTotal write FSubValorTotal;

    constructor Create;
    destructor Destroy;

  end;

  TCidade = class
  private
    FId: Integer;
    FCodigo: String;
    FDescricao: String;
    FEstado: TEstado;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Estado: TEstado read FEstado write FEstado;

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

implementation

uses
  System.SysUtils;

{ TUsuario }

constructor TUsuario.Create;
begin
  FTipoUsuario := TTipoUsuario.Create;
  FFuncionario := TFuncionario.Create;
end;

destructor TUsuario.Destroy;
begin
  FreeAndNil(FTipoUsuario);
  FreeAndNil(FFuncionario);
end;

{ TContato }

constructor TMeioContato.Create;
begin
  FCliente := TCliente.Create;
  FFuncionario := TFuncionario.Create;
  FFornecedor := TFornecedor.Create;
  FEmpresa := FEmpresa.Create;
  FContato := TContato.Create;
end;

destructor TMeioContato.Destroy;
begin
  FreeAndNil(FCliente);
  FreeAndNil(FFuncionario);
  FreeAndNil(FFornecedor);
  FreeAndNil(FEmpresa);
  FreeAndNil(FContato);
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
  FFuncionario := TFuncionario.Create;
end;

destructor TEmpresa.Destroy;
begin
  FreeAndNil(FFuncionario);
end;

{ TFuncionario }

constructor TFuncionario.Create;
begin
  FFuncao := TFuncao.Create;
  FSexo := TSexo.Create;
end;

destructor TFuncionario.Destroy;
begin
  FreeAndNil(FFuncao);
  FreeAndNil(FSexo);
end;

{ TEndereco }

constructor TEndereco.Create;
begin
  FLocalidade := TLocalidade.Create;
end;

destructor TEndereco.Destroy;
begin
  FreeAndNil(FLocalidade);
end;

{ TLocalidade }

constructor TLocalidade.Create;
begin
  FCidade := TCidade.Create;
end;

destructor TLocalidade.Destroy;
begin
  FreeAndNil(FCidade);
end;

{ TCidade }

constructor TCidade.Create;
begin
  FEstado := TEstado.Create;
end;

destructor TCidade.Destroy;
begin
  FreeAndNil(FEstado);
end;

{ TAgendamento }

constructor TAgendamento.Create;
begin
  FCliente := TCliente.Create;
end;

destructor TAgendamento.Destroy;
begin
  FreeAndNil(FCliente);
end;

{ TComanda }

constructor TComanda.Create;
begin
  FCliente := TCliente.Create;
  FFuncionario := TFuncionario.Create;
end;

destructor TComanda.Destroy;
begin
  FreeAndNil(FCliente);
  FreeAndNil(FFuncionario);
end;

{ TComandaAux }

constructor TComandaAux.Create;
begin
  FComanda := TComanda.Create;
  FServico := TServico.Create;
  FProduto := TProduto.Create;
end;

destructor TComandaAux.Destroy;
begin
  FreeAndNil(FComanda);
  FreeAndNil(FServico);
  FreeAndNil(FProduto);
end;

{ TCompra }

constructor TCompra.Create;
begin
  FFornecedor := TFornecedor.Create;
end;

destructor TCompra.Destroy;
begin
  FreeAndNil(FFornecedor);
end;

{ TCompraAux }

constructor TCompraAux.Create;
begin
  FCompra := TCompra.Create;
  FProduto := TProduto.Create;
end;

destructor TCompraAux.Destroy;
begin
  FreeAndNil(FCompra);
  FreeAndNil(FProduto);
end;

{ TEstoque }

constructor TEstoque.Create;
begin
  FProduto := TProduto.Create;
end;

destructor TEstoque.Destroy;
begin
  FreeAndNil(FProduto);
end;

{ TVenda }

constructor TVenda.Create;
begin
  FCliente := TCliente.Create;
end;

destructor TVenda.Destroy;
begin
  FreeAndNil(FCliente);
end;

{ TVendaAux }

constructor TVendaAux.Create;
begin
  FVenda := TVenda.Create;
  FProduto := TProduto.Create;
end;

destructor TVendaAux.Destroy;
begin
  FreeAndNil(FVenda);
  FreeAndNil(FProduto);
end;

end.
