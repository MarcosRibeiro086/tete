unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit2;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    EditMensagem: TEdit;
    btnEnviar: TButton;
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.btnEnviarClick(Sender: TObject);
begin
  Form2:= TForm2.Create(Self);
  Form2.ReceberMensagem(EditMensagem.Text);
  Form2.ShowModal;
  FreeAndNil(Form2);
end;

end.
