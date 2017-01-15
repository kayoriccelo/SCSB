unit untEntity.View;

interface

type

  TViewCliente = class
    FId: Integer;
    FCodigo: String;
    FNome: String;
    FDataCadastro: TDateTime;
    FDataNascimento: TDateTime;
    FRg: String;
    FCpf: String;
    FCodigoSexo: String;
    FDescricaoSexo: String;
    FCodigoFuncionario: String;
    FNomeFuncionario: String;

  public
    property Id: Integer read FId write FId;
    property Codigo: String read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;
    property DataNascimento: TDateTime read FDataNascimento write FDataNascimento;
    property Rg: String read FRg write FRg;
    property Cpf: String read FCpf write FCpf;
    property CodigoSexo: String read FCodigoSexo write FCodigoSexo;
    property DescricaoSexo: String read FDescricaoSexo write FDescricaoSexo;
    property CodigoFuncionario: String read FCodigoFuncionario write FCodigoFuncionario;
    property NomeFuncionario: String read FNomeFuncionario write FNomeFuncionario;

  end;

implementation

end.
