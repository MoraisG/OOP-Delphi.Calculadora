unit uClasseOperacoes;

interface

uses
  uInterfaceObjeto, System.Generics.Collections, uCalculadoraEventos;

type

  TOperacoes = class(TInterfacedObject, iOperacoes, iOperacoesDisplay)
  protected
    FLista: TList<Double>;
    FEventoDisplay: TEventoDisplay;
    procedure DisplayValue(Value: String);
  public
    function Executar: string; virtual;
    function Display: iOperacoesDisplay;
    function Resultado(Value: TEventoDisplay): iOperacoesDisplay;
    function EndDisplay: iOperacoes;
  end;

implementation

{ TOperacoes }

function TOperacoes.Display: iOperacoesDisplay;
begin
  Result := Self;
end;

procedure TOperacoes.DisplayValue(Value: String);
begin
  if Assigned(FEventoDisplay) then
    FEventoDisplay(Value);

end;

function TOperacoes.EndDisplay: iOperacoes;
begin
  Result := Self;
end;

function TOperacoes.Executar: string;
begin
  FLista.Clear;
end;

function TOperacoes.Resultado(Value: TEventoDisplay): iOperacoesDisplay;
begin
  Result := Self;
  FEventoDisplay := Value;
end;

end.
