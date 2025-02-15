unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnSoma: TButton;
    btnSub: TButton;
    btnMult: TButton;
    btnDiv: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblResultado: TLabel;
    Label3: TLabel;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
  private
    function ObterNumeros(out num1, num2: Double): Boolean;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Fun��o para obter os n�meros
function TForm1.ObterNumeros(out num1, num2: Double): Boolean;
begin
  // Validar as entradas
  Result := TryStrToFloat(Edit1.Text, num1) and TryStrToFloat(Edit2.Text, num2);
  if not Result then
    ShowMessage('Digite valores num�ricos v�lidos!');
end;

// Soma
procedure TForm1.btnSomaClick(Sender: TObject);
var
  num1, num2: Double;
begin
  if ObterNumeros(num1, num2) then
    lblResultado.Caption := 'Resultado: ' + FloatToStr(num1 + num2);
end;

// Subtra��o
procedure TForm1.btnSubClick(Sender: TObject);
var
  num1, num2: Double;
begin
  if ObterNumeros(num1, num2) then
    lblResultado.Caption := 'Resultado: ' + FloatToStr(num1 - num2);
end;

// Multiplica��o
procedure TForm1.btnMultClick(Sender: TObject);
var
  num1, num2: Double;
begin
  if ObterNumeros(num1, num2) then
    lblResultado.Caption := 'Resultado: ' + FloatToStr(num1 * num2);
end;

// Divis�o
procedure TForm1.btnDivClick(Sender: TObject);
var
  num1, num2: Double;
begin
  //garantir que n�o exista uma divis�o por 0
  if ObterNumeros(num1, num2) then
  begin
    if num2 = 0 then
      ShowMessage('Erro: Divis�o por zero!')
    else
      lblResultado.Caption := 'Resultado: ' + FloatToStr(num1 / num2);
  end;
end;

end.

