object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'FormFuncionarios'
  ClientHeight = 574
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label5: TLabel
    Left = 8
    Top = 150
    Width = 39
    Height = 15
    Caption = 'C'#243'digo'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 86
    Width = 33
    Height = 15
    Caption = 'Nome'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 214
    Width = 21
    Height = 15
    Caption = 'CPF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 8
    Top = 275
    Width = 107
    Height = 15
    Caption = 'Data de Nascimento'
    FocusControl = DBEdit8
  end
  object DBGridFuncionarios: TDBGrid
    Left = 0
    Top = 454
    Width = 669
    Height = 120
    Align = alBottom
    DataSource = DataSourceFuncionarios
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigatorFuncionarios: TDBNavigator
    Left = 0
    Top = 0
    Width = 669
    Height = 25
    DataSource = DataSourceFuncionarios
    Align = alTop
    TabOrder = 1
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 171
    Width = 154
    Height = 23
    DataField = 'codigo'
    DataSource = DataSourceFuncionarios
    TabOrder = 2
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 107
    Width = 277
    Height = 23
    DataField = 'nome'
    DataSource = DataSourceFuncionarios
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 235
    Width = 154
    Height = 23
    DataField = 'cpf'
    DataSource = DataSourceFuncionarios
    MaxLength = 14
    TabOrder = 4
  end
  object DBEdit8: TDBEdit
    Left = 8
    Top = 304
    Width = 154
    Height = 23
    DataField = 'data_nascimento'
    DataSource = DataSourceFuncionarios
    MaxLength = 10
    TabOrder = 5
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=cadastro'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 504
    Top = 488
  end
  object DataSourceFuncionarios: TDataSource
    DataSet = FDQueryFuncionarios
    Left = 344
    Top = 472
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\marco\OneDrive\Desktop\projetos\tete\libmysql.dll'
    Left = 448
    Top = 496
  end
  object FDQueryFuncionarios: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM funcionarios;')
    Left = 232
    Top = 504
    object FDQueryFuncionarioscodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDQueryFuncionariosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 255
    end
    object FDQueryFuncionarioscpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '000.000.000-00;1;_'
      Size = 14
    end
    object FDQueryFuncionariosdata_nascimento: TDateField
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
  end
end
