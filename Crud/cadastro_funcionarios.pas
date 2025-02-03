unit cadastro_funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDQueryFuncionarios: TFDQuery;
    DataSourceFuncionarios: TDataSource;
    DBGridFuncionarios: TDBGrid;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    DBNavigatorFuncionarios: TDBNavigator;
    FDQueryFuncionarioscodigo: TFDAutoIncField;
    FDQueryFuncionariosnome: TStringField;
    FDQueryFuncionarioscpf: TStringField;
    FDQueryFuncionariosdata_nascimento: TDateField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;  // CPF
    Label7: TLabel;
    DBEdit7: TDBEdit;  // Data de nascimento
    Label8: TLabel;
    DBEdit8: TDBEdit;

    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DateUtils;

{ *** Formatação e Validação do CPF *** }

procedure TForm1.DBEdit6KeyPress(Sender: TObject; var Key: Char);
var
  sCPF: string;
begin
  if not CharInSet(Key, ['0'..'9', #8]) then
  begin
    Key := #0;
    Exit;
  end;

  sCPF := StringReplace(TDBEdit(Sender).Text, '.', '', [rfReplaceAll]);
  sCPF := StringReplace(sCPF, '-', '', [rfReplaceAll]);

  if CharInSet(Key, ['0'..'9']) then
  begin
    if Length(sCPF) < 11 then
    begin
      sCPF := sCPF + Key;

      case Length(sCPF) of
        3, 6: sCPF := sCPF + '.';
        9: sCPF := sCPF + '-';
      end;

      TDBEdit(Sender).Text := sCPF;
      TDBEdit(Sender).SelStart := Length(sCPF);
    end;
    Key := #0;
  end;
end;

procedure TForm1.DBEdit6Exit(Sender: TObject);
var
  sCPF: string;
begin
  sCPF := StringReplace(TDBEdit(Sender).Text, '.', '', [rfReplaceAll]);
  sCPF := StringReplace(sCPF, '-', '', [rfReplaceAll]);

  if Length(sCPF) = 11 then
  begin
    TDBEdit(Sender).Text := Copy(sCPF, 1, 3) + '.' +
                            Copy(sCPF, 4, 3) + '.' +
                            Copy(sCPF, 7, 3) + '-' +
                            Copy(sCPF, 10, 2);
  end
  else
  begin
    ShowMessage('CPF inválido! Digite 11 números.');
    TDBEdit(Sender).SetFocus;
  end;
end;

{ *** Validação de Data *** }

procedure TForm1.DBEdit7Exit(Sender: TObject);
var
  DataValida: TDateTime;
begin
  if TryStrToDate(TDBEdit(Sender).Text, DataValida) then
  begin
    if (DayOf(DataValida) > 31) or (MonthOf(DataValida) > 12) then
    begin
      ShowMessage('Data inválida! O dia deve estar entre 1 e 31 e o mês entre 1 e 12.');
      TDBEdit(Sender).SetFocus;
      Exit;
    end;
    TDBEdit(Sender).Text := FormatDateTime('dd/mm/yyyy', DataValida);
  end
  else
  begin
    ShowMessage('Data inválida! Digite no formato correto DD/MM/AAAA.');
    TDBEdit(Sender).SetFocus;
  end;
end;

end.

