unit uInterfaceObjeto;

interface

uses uCalculadoraEventos;

type
  iCalculadora = interface;
  iOperacoesDisplay = interface;


  iOperacoes = interface
    ['{DF845E6B-AEC8-4670-97E9-165A9831B298}']
    function Executar: string;
    function Display : iOperacoesDisplay;
  end;

  iOperacoesDisplay = interface
    ['{1B7B9644-935D-42AC-9FFA-4324029E0DDD}']
    function Resultado(Value: TEventoDisplay): iOperacoesDisplay;
    function EndDisplay : iOperacoes;
  end;


  iCalculadoraDisplay = interface
    ['{241BB46F-82DC-41C7-B3F3-09B37FC2BF39}']
    function Resultado(Value: TEventoDisplay): iCalculadoraDisplay;
    function EndDisplay: iCalculadora;
  end;


  iCalculadora = interface
    ['{41DC5E6A-44D3-4C98-AF75-C265AC72C083}']
    function Add(Value: String): iCalculadora; overload;
    function Add(Value: Integer): iCalculadora; overload;
    function Add(Value: Currency): iCalculadora; overload;
    function Somar: iOperacoes;
    function Subtrair: iOperacoes;
    function Multiplicar: iOperacoes;
    function Dividir: iOperacoes;
    function Display: iCalculadoraDisplay;
  end;

implementation

end.
