unit uClasseMultiplicar;

interface

uses
  uInterfaceObjeto, System.SysUtils, uClasseOperacoes,
  System.Generics.Collections;

type
  TMultiplicar = class sealed(TOperacoes)
    constructor Create(var Value: TList<Double>);
    class function New(var Value: TList<Double>): iOperacoes;
    destructor Destroy; override;
    function Executar: string; override;
  end;

implementation

{ TMultiplicar }

uses uClasseMetodosUteis;

constructor TMultiplicar.Create(var Value: TList<Double>);
begin
  FLista := Value;
end;

destructor TMultiplicar.Destroy;
begin

  inherited;
end;

function TMultiplicar.Executar: string;
var
  I: Integer;
begin
  begin
    Result := FLista[0].ToString;
    for I := 1 to FLista.Count - 1 do
      Result := (Result.ToNumerico * FLista[I]).ToString;
      DisplayValue(Result);
  end;
  inherited;
end;

class function TMultiplicar.New(var Value: TList<Double>): iOperacoes;
begin
  Result := Self.Create(Value);
end;

end.
