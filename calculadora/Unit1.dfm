object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 380
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 87
    Top = 75
    Width = 53
    Height = 15
    Caption = 'Number 1'
  end
  object Label2: TLabel
    Left = 296
    Top = 75
    Width = 53
    Height = 15
    Caption = 'Number 2'
  end
  object lblResultado: TLabel
    Left = 71
    Top = 296
    Width = 52
    Height = 15
    Caption = 'Resultado'
  end
  object Label3: TLabel
    Left = 184
    Top = 24
    Width = 63
    Height = 15
    Caption = 'Calculadora'
  end
  object btnSoma: TButton
    Left = 24
    Top = 208
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 0
    OnClick = btnSomaClick
  end
  object btnSub: TButton
    Left = 137
    Top = 208
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 1
    OnClick = btnSubClick
  end
  object btnMult: TButton
    Left = 260
    Top = 208
    Width = 75
    Height = 25
    Caption = 'x'
    TabOrder = 2
    OnClick = btnMultClick
  end
  object btnDiv: TButton
    Left = 376
    Top = 208
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 3
    OnClick = btnDivClick
  end
  object Edit1: TEdit
    Left = 50
    Top = 96
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 260
    Top = 96
    Width = 121
    Height = 23
    TabOrder = 5
  end
end
