unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uClasseCalculadora,
  uClasseMetodosUteis, uInterfaceObjeto;

type
  TForm1 = class(TForm)
    Somar: TButton;
    Multiplicar: TButton;
    Subtrair: TButton;
    Dividir: TButton;
    EDT_NUM: TEdit;
    EdtValue2: TEdit;
    EdtResult: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure SomarClick(Sender: TObject);
    procedure SubtrairClick(Sender: TObject);
    procedure MultiplicarClick(Sender: TObject);
    procedure DividirClick(Sender: TObject);
  private
    FCalculadora: iCalculadora;
    procedure SetCalculadora(const Value: iCalculadora);
    procedure ExibirValue(Value: String);
    { Private declarations }
  public
    { Public declarations }
    property Calculadora: iCalculadora read FCalculadora write SetCalculadora;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

{ TForm1 }

procedure TForm1.DividirClick(Sender: TObject);
begin
  Calculadora.Add(EDT_NUM.Text).Add(EdtValue2.Text).Dividir.Executar;
end;

procedure TForm1.ExibirValue(Value: String);
begin
  EdtResult.Text := Value;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Calculadora := TCalculadora.New.Display.Resultado(ExibirValue).EndDisplay;
end;

procedure TForm1.MultiplicarClick(Sender: TObject);
begin
  Calculadora.Add(EDT_NUM.Text).Add(EdtValue2.Text).Multiplicar.Executar;
end;

procedure TForm1.SetCalculadora(const Value: iCalculadora);
begin
  FCalculadora := Value;
end;

procedure TForm1.SomarClick(Sender: TObject);
begin
  Calculadora.Add(EDT_NUM.Text).Add(EdtValue2.Text).Somar.Executar;
end;

procedure TForm1.SubtrairClick(Sender: TObject);
begin
  Calculadora.Add(EDT_NUM.Text).Add(EdtValue2.Text).Subtrair.Executar;

end;

end.
