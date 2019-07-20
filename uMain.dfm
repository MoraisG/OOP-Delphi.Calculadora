object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 446
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Somar: TButton
    Left = 8
    Top = 232
    Width = 319
    Height = 25
    Caption = 'Somar'
    TabOrder = 0
    OnClick = SomarClick
  end
  object Multiplicar: TButton
    Left = 8
    Top = 312
    Width = 319
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 1
    OnClick = MultiplicarClick
  end
  object Subtrair: TButton
    Left = 8
    Top = 272
    Width = 319
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 2
    OnClick = SubtrairClick
  end
  object Dividir: TButton
    Left = 8
    Top = 351
    Width = 319
    Height = 25
    Caption = 'Dividir'
    TabOrder = 3
    OnClick = DividirClick
  end
  object EDT_NUM: TEdit
    Left = 8
    Top = 40
    Width = 319
    Height = 21
    TabOrder = 4
  end
  object EdtValue2: TEdit
    Left = 8
    Top = 96
    Width = 319
    Height = 21
    TabOrder = 5
  end
  object EdtResult: TEdit
    Left = 8
    Top = 152
    Width = 319
    Height = 21
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 6
  end
end
