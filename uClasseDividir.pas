unit uClasseDividir;

interface

uses
  uInterfaceObjeto, System.SysUtils, uClasseOperacoes,
  System.Generics.Collections;

type
  TDividir = class sealed(TOperacoes)
    constructor Create(var Value: TList<Double>);
    class function New(var Value: TList<Double>): iOperacoes;
    destructor Destroy; override;
    function Executar: string; override;
  end;

implementation

{ TDividir }

uses uClasseMetodosUteis;

constructor TDividir.Create(var Value: TList<Double>);
begin
  FLista := Value;
end;

destructor TDividir.Destroy;
begin

  inherited;
end;

function TDividir.Executar: string;
var
  I: Integer;
begin
  begin
    Result := FLista[0].ToString;
    for I := 1 to FLista.Count - 1 do
      Result := (Result.ToNumerico / FLista[I]).ToString;
    DisplayValue(Result);
  end;

  inherited;
end;

class function TDividir.New(var Value: TList<Double>): iOperacoes;
begin
  Result := Self.Create(Value);
end;

end.
