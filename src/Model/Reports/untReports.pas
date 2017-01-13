(* ------------------------------------------------------------------
  Propósito da Unit:
  Programador / Data: Kayo Riccelo 10/01/2017
  Analista Responsável:
  Revisões:
  Programador:
  Data: Descrição da Revisão
  Comentários adicionais:
  ------------------------------------------------------------------ *)
unit untReports;

interface

uses
  System.Generics.Collections, untEntity;

type

  TReport = class
  private
    FObjects: TList<TObject>;

  protected

  public
    function Load: boolean; virtual; abstract;
    function Print: boolean; virtual; abstract;

    constructor Create;
    destructor Destroy;
  published
    { published declarations }
  end;

  TReportAgendamentos = class(TReport)
  private

  protected

  public
    function Load: boolean; override;
    function Print: boolean; override;

  end;

implementation

uses
  System.SysUtils, untBR;

{ TReportAgendamentos }

function TReportAgendamentos.Load: boolean;

begin

end;

function TReportAgendamentos.Print: boolean;
begin

end;

{ TReport }

constructor TReport.Create;
begin
  FObjects := TList<TObject>.Create;
end;

destructor TReport.Destroy;
begin
  FreeAndNil(FObjects);
end;

end.
