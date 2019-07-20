unit uClasseSoma;

interface

uses uInterfaceObjeto, System.SysUtils, uClasseOperacoes,
  System.Generics.Collections;

type

  TSoma = class sealed(TOperacoes)
  public
    constructor Create(var Value: TList<Double>);
    class function New(var Value: TList<Double>): iOperacoes;
    destructor Destroy; override;
    function Executar: string; override;
  end;

implementation

{ TSoma }

uses uClasseMetodosUteis;

constructor TSoma.Create(var Value: TList<Double>);
begin
  FLista := Value;
end;

destructor TSoma.Destroy;
begin

  inherited;
end;

function TSoma.Executar: string;
var
  I: Integer;
begin
  begin
    Result := FLista[0].ToString;
    for I := 1 to FLista.Count - 1 do
      Result := (Result.ToNumerico + FLista[I]).ToString;
    DisplayValue(Result);
  end;
  inherited;
end;

class function TSoma.New(var Value: TList<Double>): iOperacoes;
begin
  Result := Self.Create(Value);
end;

end.
