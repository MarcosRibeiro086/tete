object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 256
    Top = 48
    Width = 62
    Height = 15
    Caption = 'Mensagem:'
  end
  object lblMensagem: TLabel
    Left = 256
    Top = 88
    Width = 3
    Height = 15
  end
  object btnCancelar: TButton
    Left = 184
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = btnCancelarClick
  end
  object btnConfirmar: TButton
    Left = 328
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
end
