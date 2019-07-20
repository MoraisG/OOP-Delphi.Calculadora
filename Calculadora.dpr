program Calculadora;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uClasseCalculadora in 'uClasseCalculadora.pas',
  uClasseMetodosUteis in 'uClasseMetodosUteis.pas',
  uInterfaceObjeto in 'uInterfaceObjeto.pas',
  uClasseSoma in 'uClasseSoma.pas',
  uClasseSubtrair in 'uClasseSubtrair.pas',
  uClasseMultiplicar in 'uClasseMultiplicar.pas',
  uClasseDividir in 'uClasseDividir.pas',
  uClasseOperacoes in 'uClasseOperacoes.pas',
  uCalculadoraEventos in 'uCalculadoraEventos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
