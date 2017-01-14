(* ------------------------------------------------------------------
  Prop�sito da Unit:
  Programador / Data: Kayo Riccelo 10/01/2017
  Analista Respons�vel:
  Revis�es:
  Programador:
  Data: Descri��o da Revis�o
  Coment�rios adicionais:
  ------------------------------------------------------------------ *)
unit untControl.Forms;

interface

uses
  untEnumerator;

type

  TControlForms = class
  private

    function GetFmList(AList: eList): String;

    procedure InstanceList(AList: eList);

  public
    function RunList(AList: eList): boolean;
    function RunReg(AReg: eRegistration; ATypeCrud: eTypeCrud; AIndex: Integer): boolean;
    function RunMov(AMov: eMovements; ATypeCrud: eTypeCrud; AIndex: Integer): boolean;
  end;

var
  ControlForms: TControlForms;

implementation

uses
  Vcl.Forms, untFmList,
  System.SysUtils, untBR, untFmList.Clientes;

{ TControlForms }

function TControlForms.GetFmList(AList: eList): String;
begin
  case AList of
    lstUsuario:
      ;
    lstCliente:
      Result := 'FmListClientes';
    lstFuncionario:
      ;
    lstFornecedor:
      ;
    lstFuncao:
      ;
    lstServico:
      ;
    lstProduto:
      ;
  end;
end;

procedure TControlForms.InstanceList(AList: eList);
begin
  case AList of
    lstUsuario:
      ;
    lstCliente:
      begin
        Application.CreateForm(TFmListClientes, FmListClientes);
        FmListClientes.Show;
      end;
    lstFuncionario:
      ;
    lstFornecedor:
      ;
    lstFuncao:
      ;
    lstServico:
      ;
    lstProduto:
      ;
  end;
end;

function TControlForms.RunList(AList: eList): boolean;
var
  i: Integer;
begin
  Result := True;

  try
    for i := 0 to pred(Screen.FormCount) do
      if TFmList(Screen.Forms[i]).Name = GetFmList(AList) then
      begin
        TFmList(Screen.Forms[i]).BringToFront;

        exit();
      end;

    InstanceList(AList);
  except
    { TODO -oKayoRiccelo -cExce��o : implementar exce��o }
    Result := False;
  end;
end;

function TControlForms.RunMov(AMov: eMovements; ATypeCrud: eTypeCrud; AIndex: Integer): boolean;
begin

end;

function TControlForms.RunReg(AReg: eRegistration; ATypeCrud: eTypeCrud; AIndex: Integer): boolean;
var
  loBR: TBR;

begin
  Result := True;

  try
    case ATypeCrud of
      tcdInsert, tcdUpdate:
        begin

          case AReg of
            regEmpresa:
              ;
            regUsuario:
              ;
            regCliente:
              ;
            regFuncionario:
              ;
            regFornecedor:
              ;
            regFuncao:
              ;
            regServico:
              ;
            regProduto:
              ;
          end;

        end;

      tcdDelete:
        begin

          case AReg of
            regEmpresa:
              ;
            regUsuario:
              ;
            regCliente:
              ;
            regFuncionario:
              ;
            regFornecedor:
              ;
            regFuncao:
              ;
            regServico:
              ;
            regProduto:
              ;
          end;

        end;
    end;

  except
    { TODO -oKayoRiccelo -cExce��o : implementar exce��o }
    Result := False;
  end;
end;

end.
