unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    lblMensagem: TLabel;
    btnCancelar: TButton;
    btnConfirmar: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ReceberMensagem(const Msg: string);
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ReceberMensagem(const Msg: string);
begin
  lblMensagem.Caption:= Msg;
end;

procedure TForm2.btnCancelarClick(Sender: TObject);
begin
  ShowMessage('Mensagem cancelada!');
  Close;
end;

procedure TForm2.btnConfirmarClick(Sender: TObject);
begin
  ShowMessage('Mensagem confirmada.');
  Close;
end;

end.
