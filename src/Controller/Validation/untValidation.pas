(* ------------------------------------------------------------------
  Propósito da Unit:
  Programador / Data: Kayo Riccelo 10/01/2017
  Analista Responsável:
  Revisões:
  Programador:
  Data: Descrição da Revisão
  Comentários adicionais:
  ------------------------------------------------------------------ *)
unit untValidation;

interface

uses
  untEnumerator;

type

  TValidation = class
  private

  public
    class function Cpf(ACpf: String): Boolean;
    class function Cnpj(ACnpj: String): Boolean;

  end;

implementation

uses
  System.SysUtils, untEntity;

{ TValidation }

class function TValidation.Cnpj(ACnpj: String): Boolean;
begin
  Result := True;
  if ACnpj = '' then
  begin
    raise Exception.Create('Cnpj vazio.');
    exit(False);
  end;
end;

class function TValidation.Cpf(ACpf: String): Boolean;
begin
  Result := True;
  if ACpf = '' then
  begin
    raise Exception.Create('Cpf vazio.');
    exit(False);
  end;
end;

end.
