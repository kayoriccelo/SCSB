(* ------------------------------------------------------------------
  Prop�sito da Unit:
  Programador / Data: Kayo Riccelo 10/01/2017
  Analista Respons�vel:
  Revis�es:
  Programador:
  Data: Descri��o da Revis�o
  Coment�rios adicionais:
  ------------------------------------------------------------------ *)
unit untControl.Reports;

interface

uses
  untEnumerator;

type

  TControlReports = class
  private

  public
    function RunReport(AReport: eReport): boolean;
  end;

var
  ControlReports: TControlReports;

implementation

uses
  System.SysUtils, untReports;

{ TControlReports }

function TControlReports.RunReport(AReport: eReport): boolean;
var
  loReport: TReport;
begin

  case AReport of
    rptAgendamento:
      begin
        try
          loReport := TReportAgendamentos.Create;
          loReport.Load;
          loReport.Print;
        finally
          FreeAndNil(loReport);
        end;
      end;
  end;

end;

end.
