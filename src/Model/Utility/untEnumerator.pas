(* ------------------------------------------------------------------
  Prop�sito da Unit:
  Programador / Data: Kayo Riccelo 10/01/2017
  Analista Respons�vel:
  Revis�es:
  Programador:
  Data: Descri��o da Revis�o
  Coment�rios adicionais:
  ------------------------------------------------------------------ *)
unit untEnumerator;

interface

type

  eTypeProject = (tpjSCSB, tpjSCSBTest);

  eTypeConnection = (tcnFireBird);

  eTypeCrud = (tcdInsert, tcdUpdate, tcdDelete);

  eReport = (rptAgendamento);

  eMovements = (mvtAgendamento);

  eRegistration = (regEmpresa, regUsuario, regCliente, regFuncionario, regFornecedor, regFuncao, regServico, regProduto, regContato);

  eList = (lstUsuario, lstCliente, lstFuncionario, lstFornecedor, lstFuncao, lstServico, lstProduto);

  eSearch = (seaUsuario, seaCliente, seaFuncionario, seaFornecedor, seaFuncao, seaServico, seaProduto);

implementation

end.
