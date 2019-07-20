unit uClasseCalculadora;

interface

uses uInterfaceObjeto, uClasseSoma, System.Classes,
  System.Generics.Collections, uCalculadoraEventos;

type

  TCalculadora = class(TInterfacedObject, iCalculadora, iCalculadoraDisplay)
  private
  FEventoDisplay : TEventoDisplay;
  FLista : TList<Double>;
  public
    constructor Create;
    destructor Destroy; override;
    Class function New: iCalculadora;
    function Add(Value: String): iCalculadora; overload;
    function Add(Value: Integer): iCalculadora; overload;
    function Add(Value: Currency): iCalculadora; overload;
    function Somar: iOperacoes;
    function Subtrair: iOperacoes;
    function Multiplicar: iOperacoes;
    function Dividir: iOperacoes;
    function Display : iCalculadoraDisplay;
    function Resultado(Value: TEventoDisplay): iCalculadoraDisplay;
    function EndDisplay: iCalculadora;
  end;

implementation

uses
  System.SysUtils, uClasseMetodosUteis, uClasseDividir, uClasseMultiplicar,
  uClasseSubtrair;

{ TCalculadora }

function TCalculadora.Add(Value: String): iCalculadora;
begin
Result:= Self;
FLista.Add(Value.ToNumerico);
end;

function TCalculadora.Add(Value: Integer): iCalculadora;
begin
Result:= Self;
FLista.Add(Value.ToDouble)
end;

function TCalculadora.Add(Value: Currency): iCalculadora;
begin
Result:= Self;
FLista.Add(Value);
end;

constructor TCalculadora.Create;
begin
  FLista:= TList<Double>.Create;
end;

destructor TCalculadora.Destroy;
begin
  FLista.Free;
  inherited;
end;

function TCalculadora.Display: iCalculadoraDisplay;
begin
Result:= Self;
end;

function TCalculadora.Dividir: iOperacoes;
begin
  Result := TDividir.New(FLista).Display.Resultado(FEventoDisplay).EndDisplay;
end;

function TCalculadora.EndDisplay: iCalculadora;
begin
Result:= Self;
end;

function TCalculadora.Multiplicar: iOperacoes;
begin
  Result := TMultiplicar.New(FLista).Display.Resultado(FEventoDisplay).EndDisplay;
end;

class function TCalculadora.New: iCalculadora;
begin
  Result := Self.Create;
end;

function TCalculadora.Resultado(Value: TEventoDisplay): iCalculadoraDisplay;
begin
  Result:= Self;
  FEventoDisplay:= Value;
end;

function TCalculadora.Somar: iOperacoes;
begin
  Result := TSoma.New(FLista).Display.Resultado(FEventoDisplay).EndDisplay;
end;

function TCalculadora.Subtrair: iOperacoes;
begin
  Result := TSubtrair.New(FLista).Display.Resultado(FEventoDisplay).EndDisplay;
end;

end.
