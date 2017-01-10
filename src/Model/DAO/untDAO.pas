(* ------------------------------------------------------------------
  Propósito da Unit:
  Programador: Data: Kayo Riccelo 21/03/2015
  Analista Responsável:
  Revisões:
  Programador:
  Data: Descrição da Revisão
  Comentários adicionais:
  ------------------------------------------------------------------ *)
unit untDAO;

interface

uses
  System.Generics.Collections, untDmConnection,
  untEntity, FireDAC.Comp.Client;

type

  TDAO = class
  private
    FQry: TFDQuery;
  public
    function Qry(AEntidade: String; AId: Integer): TFDQuery;

    constructor Create;
    destructor Destroy;

  end;

  TDAOCliente = class(TDAO)
  private
  public
    procedure Insert(ACliente: TCliente);
    procedure Update(ACliente: TCliente);
    procedure Delete(ACliente: TCliente);
    function Select(AId: Integer): TCliente;
    function List(APropriedade: String; AValue: Variant): TList<TCliente>;

  end;

  TDAOFuncionario = class(TDAO)
  private
  public
    procedure Insert(AFuncionario: TFuncionario);
    procedure Update(AFuncionario: TFuncionario);
    procedure Delete(AFuncionario: TFuncionario);
    function Select(AId: Integer): TFuncionario;
    function List(APropriedade: String; AValue: Variant): TList<TFuncionario>;

  end;

  TDAOSexo = class
  private
    FQry: TFDQuery;

  public
    function Select(AId: Integer): TSexo;
    function List(APropriedade: String; AValue: Variant): TList<TSexo>;

  end;

implementation

uses
  System.SysUtils, System.Rtti, CodeSiteLogging;

{ TDAO }

constructor TDAO.Create;
begin
  FQry := TFDQuery.Create(nil);
  FQry.Connection := DmConnection.ConnectionSCSB;
end;

destructor TDAO.Destroy;
begin
  FreeAndNil(FQry);
end;

function TDAO.Qry(AEntidade: String; AId: Integer): TFDQuery;
begin
  FQry.Close;
  if AId > 0 then
    FQry.SQL.Text := 'select * from ' + AEntidade + ' where id = ' + AId.ToString
  else
    FQry.SQL.Text := 'select * from ' + AEntidade;
  FQry.Open;
  Result := FQry;
end;

{ TDAOCliente }

procedure TDAOCliente.Insert(ACliente: TCliente);
begin
  FQry.SQL.Text := 'insert into tb_cliente values(:codigo, :nome, :datacadastro, :datanascimento, :rg, :cpf, :id_sexo, :id_funcionario)';
  FQry.ParamByName('codigo').Value := ACliente.Codigo;
  FQry.ParamByName('nome').Value := ACliente.Nome;
  FQry.ParamByName('data_cadastro').Value := ACliente.DataCadastro;
  FQry.ParamByName('data_nascimento').Value := ACliente.DataNascimento;
  FQry.ParamByName('rg').Value := ACliente.Rg;
  FQry.ParamByName('cpf').Value := ACliente.Cpf;
  FQry.ParamByName('id_sexo').Value := ACliente.FkSexo.Id;
  FQry.ParamByName('id_funcionario').Value := ACliente.FkFuncionario.Id;
  FQry.ExecSQL;
end;

procedure TDAOCliente.Update(ACliente: TCliente);
begin
  FQry.SQL.Text :=
    'update tb_cliente set codigo = :codigo, nome = :nome, datacadastro = :datacadastro, datanascimento = :datanascimento, rg = :rg, cpf = :cpf,'
    + 'id_sexo = :id_sexo, id_funcionario = :id_funcionario)';
  FQry.ParamByName('codigo').Value := ACliente.Codigo;
  FQry.ParamByName('nome').Value := ACliente.Nome;
  FQry.ParamByName('data_cadastro').Value := ACliente.DataCadastro;
  FQry.ParamByName('data_nascimento').Value := ACliente.DataNascimento;
  FQry.ParamByName('rg').Value := ACliente.Rg;
  FQry.ParamByName('cpf').Value := ACliente.Cpf;
  FQry.ParamByName('id_sexo').Value := ACliente.FkSexo.Id;
  FQry.ParamByName('id_funcionario').Value := ACliente.FkFuncionario.Id;
  FQry.ExecSQL;
end;

procedure TDAOCliente.Delete(ACliente: TCliente);
begin
  FQry.SQL.Text := 'delete from tb_cliente where id = ' + ACliente.Id.ToString;
  FQry.ExecSQL;
end;

function TDAOCliente.List(APropriedade: String; AValue: Variant): TList<TCliente>;
var
  loCliente: TCliente;

begin
  Result := TList<TCliente>.Create;

  if APropriedade = '' then
    FQry.Open('select * from tb_cliente')
  else
    FQry.Open('select * from tb_cliente where ' + APropriedade + ' = ' + AValue.ToString);

  FQry.First;
  while not FQry.Eof do
  begin
    loCliente := TCliente.Create;

    loCliente.Codigo := FQry.FieldByName('codigo').AsString;
    loCliente.Nome := FQry.FieldByName('nome').AsString;
    loCliente.DataCadastro := FQry.FieldByName('data_cadastro').AsDateTime;
    loCliente.DataNascimento := FQry.FieldByName('data_nascimento').AsDateTime;
    loCliente.Rg := FQry.FieldByName('rg').AsString;
    loCliente.Cpf := FQry.FieldByName('cpf').AsString;
    // loCliente.FkSexo := GetRelacSexo(FQry.FieldByName('id_sexo').AsInteger);
    // loCliente.FkFuncionario := GetRelacFuncionario(FQry.FieldByName('id_funcionario').AsInteger);

    Result.Add(loCliente);
    FQry.Next;
  end;
end;

function TDAOCliente.Select(AId: Integer): TCliente;
begin
  FQry.Open('select * from tb_cliente where id = ' + AId.ToString);

  if FQry.RecordCount = 0 then
    Result := nil;

  Result := TCliente.Create;

  Result.Id := FQry.FieldByName('id').Value;
  Result.Codigo := FQry.FieldByName('codigo').Value;
  Result.Nome := FQry.FieldByName('nome').Value;
  Result.DataCadastro := FQry.FieldByName('data_cadastro').Value;
  Result.DataNascimento := FQry.FieldByName('data_nascimento').Value;
  Result.Rg := FQry.FieldByName('rg').Value;
  Result.Cpf := FQry.FieldByName('cpf').Value;
  // Result.FkSexo := GetRelacSexo(FQry.FieldByName('id_sexo').Value);
  // Result.FkFuncionario := GetRelacFuncionario(FQry.FieldByName('id_funcionario').Value);
end;

{ TDAOFuncionario }

procedure TDAOFuncionario.Insert(AFuncionario: TFuncionario);
begin

end;

procedure TDAOFuncionario.Update(AFuncionario: TFuncionario);
begin

end;

procedure TDAOFuncionario.Delete(AFuncionario: TFuncionario);
begin

end;

function TDAOFuncionario.List(APropriedade: String; AValue: Variant): TList<TFuncionario>;
begin

end;

function TDAOFuncionario.Select(AId: Integer): TFuncionario;
begin
  FQry.Open('select * from tb_funcionario where id = ' + AId.ToString);

  if FQry.RecordCount = 0 then
    Result := nil;

  Result := TFuncionario.Create;

  Result.Id := FQry.FieldByName('id').Value;
  Result.Codigo := FQry.FieldByName('codigo').Value;
  Result.Nome := FQry.FieldByName('nome').Value;
  Result.DataAdmissao := FQry.FieldByName('data_admissao').Value;
  Result.DataNascimento := FQry.FieldByName('data_nascimento').Value;
  Result.DataCadastro := FQry.FieldByName('data_cadastro').Value;
  Result.Rg := FQry.FieldByName('rg').Value;
  Result.Cpf := FQry.FieldByName('cpf').Value;
end;

{ TDAOSexo }

function TDAOSexo.List(APropriedade: String; AValue: Variant): TList<TSexo>;
var
  loSexo: TSexo;
begin
  Result := TList<TSexo>.Create;

  if APropriedade = '' then
    FQry.Open('select * from tb_sexo')
  else
    FQry.Open('select * from tb_sexo where ' + APropriedade + ' = ' + AValue.ToString);

  FQry.First;
  while not FQry.Eof do
  begin
    loSexo := TSexo.Create;
    loSexo.Id := FQry.FieldByName('id').Value;
    loSexo.Codigo := FQry.FieldByName('codigo').Value;
    loSexo.Descricao := FQry.FieldByName('descricao').Value;

    Result.Add(loSexo);
    FQry.Next;
  end;
end;

function TDAOSexo.Select(AId: Integer): TSexo;
begin
  FQry.Open('select * from tb_sexo where id = ' + AId.ToString);

  if FQry.RecordCount = 0 then
    exit(nil);

  Result := TSexo.Create;

  Result.Id := FQry.FieldByName('id').Value;
  Result.Codigo := FQry.FieldByName('codigo').Value;
  Result.Descricao := FQry.FieldByName('descricao').Value;

end;

end.
