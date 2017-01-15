unit untBR.View;

interface

uses
  untBR;

type

  TBRViewCliente = class(TBR)
  private

  public

    constructor Create; override;

  end;

implementation

uses
  untDAO.View;

{ TBRViewCliente }

constructor TBRViewCliente.Create;
begin
  inherited;
  FDAO := TDAOViewCliente.Create;
end;

end.
