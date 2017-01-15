unit untDAO.View;

interface

uses
  untDAO, System.Generics.Collections;

type

  TDAOViewCliente = class(TDAO)
  private

  public
    function Select(AIndex: Integer): TObject; override;
    function List(AProperty: String; AValue: Variant): TList<TObject>; override;
  end;

implementation

uses
  untEntity.View, System.SysUtils;

{ TDAOViewCliente }

function TDAOViewCliente.List(AProperty: String; AValue: Variant): TList<TObject>;
begin

end;

function TDAOViewCliente.Select(AIndex: Integer): TObject;
begin
  try
    FQry.Open('select * from view_cliente where id = ' + AIndex.ToString);

    if FQry.RecordCount = 0 then
      exit(nil);

    Result := TViewCliente.Create;

    with TViewCliente(Result) do
    begin
      Id := FQry.FieldByName('id').Value;
      Codigo := FQry.FieldByName('codigo').Value;
      Nome := FQry.FieldByName('nome').Value;
      DataCadastro := FQry.FieldByName('data_cadastro').Value;
      DataNascimento := FQry.FieldByName('data_nascimento').Value;
      Rg := FQry.FieldByName('rg').Value;
      Cpf := FQry.FieldByName('cpf').Value;
      CodigoSexo := FQry.FieldByName('codigo_sexo').Value;
      DescricaoSexo := FQry.FieldByName('descricao_sexo').Value;
      CodigoFuncionario := FQry.FieldByName('codigo_func').Value;
      NomeFuncionario := FQry.FieldByName('nome_func').Value;
    end;
  except
    on E: Exception do
    begin
      Result := nil;
      raise Exception.Create('Error ao listar view cliente.' + #13 + E.message);
    end;
  end;
end;

end.
