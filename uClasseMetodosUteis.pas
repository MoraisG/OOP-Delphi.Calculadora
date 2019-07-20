unit uClasseMetodosUteis;

interface

uses
   Vcl.Controls;
 type

 TCaptionHelper = record  Helper for TCaption
  function ToNumerico : Double;
 end;

 TStrHelper = record Helper for String
 function ToNumerico : double;
 end;
implementation

uses
  System.SysUtils;

{ TCaptionHelper }

function TCaptionHelper.ToNumerico: Double;
begin
Result:= StrToFloat(Self);
end;

{ TStrHelper }

function TStrHelper.ToNumerico: double;
begin
Result:= StrtoFloat(Self);
end;

end.
