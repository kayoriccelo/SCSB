(* ------------------------------------------------------------------
  Prop�sito da Unit:
  Programador / Data: Kayo Riccelo 10/01/2017
  Analista Respons�vel:
  Revis�es:
  Programador:
  Data: Descri��o da Revis�o
  Coment�rios adicionais:
  ------------------------------------------------------------------ *)
unit untConnection;

interface

uses
  untEnumerator;

type

  TConnection = class
  private

  protected

  public

    function Connected(ATypeConnection: eTypeConnection): Boolean;

  published

  end;

implementation

uses
  untDMConnection, Winapi.Windows, System.SysUtils;

{ TConnection }

function TConnection.Connected(ATypeConnection: eTypeConnection): Boolean;
begin
  try

    with DmConnection.ConnectionSCSB do
    begin
      case ATypeConnection of
        tcnFireBird:
          begin
            Connected := False;
            Params.Database := 'localhost:C:\Projetos\SCSB\bd\SCSB.FDB';
            Params.UserName := 'SYSDBA';
            Params.Password := 'masterkey';
            Connected := True;
          end;
      end;

    end;

  except
    on E: Exception do
      raise Exception.Create('Error ao conectar banco de dados.' + #13 + E.message);
  end;
end;

end.
