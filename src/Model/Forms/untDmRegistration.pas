unit untDmRegistration;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TDmRegistration = class(TDataModule)
    cdsSexo: TClientDataSet;
    cdsSexoId: TIntegerField;
    cdsSexoDescricao: TStringField;
    cdsFunc: TClientDataSet;
    cdsFuncId: TIntegerField;
    cdsFuncNome: TStringField;
    cdsLocali: TClientDataSet;
    cdsEnde: TClientDataSet;
    cdsEndeId: TIntegerField;
    cdsEndeCep: TStringField;
    cdsEndeLogradouro: TStringField;
    cdsEndeNumero: TStringField;
    cdsEndeIdLocalidade: TIntegerField;
    cdsMCont: TClientDataSet;
    cdsMContId: TIntegerField;
    cdsMContIdCliente: TIntegerField;
    cdsMContIdContato: TIntegerField;
    dsSexo: TDataSource;
    dsFunc: TDataSource;
    dsMCont: TDataSource;
    dsEnde: TDataSource;
    dsLocali: TDataSource;
    cdsLocaliId: TIntegerField;
    cdsLocaliCodigo: TStringField;
    cdsLocaliDescricao: TStringField;
    cdsLocaliIdCidade: TIntegerField;
    cdsMContEhPrincipal: TBooleanField;
    cdsMContValor: TStringField;
    cdsTipoContato: TClientDataSet;
    dsTipoContato: TDataSource;
    cdsTipoContatoId: TIntegerField;
    cdsTipoContatoCodigo: TStringField;
    cdsTipoContatoDescricao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmRegistration: TDmRegistration;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
