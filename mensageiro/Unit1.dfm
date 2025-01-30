object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 405
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 208
    Top = 64
    Width = 102
    Height = 15
    Caption = 'Digite a Mensagem'
  end
  object EditMensagem: TEdit
    Left = 208
    Top = 96
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object btnEnviar: TButton
    Left = 254
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = btnEnviarClick
  end
end
