unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls,TypInfo;

type
  TOperacao  = (Multiplicacao,Soma,Divisao,Subtracao);
  TForm1 = class(TForm)
    pnl1: TPanel;
    btn_Resultado: TButton;
    btn_soma: TButton;
    btn_subtracao: TButton;
    btn_multiplicacao: TButton;
    btn_divisao: TButton;
    btn_9: TButton;
    btn_8: TButton;
    btn_7: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_0: TButton;
    btn_zerar: TButton;
    pm1: TPopupMenu;
    TopMenu: TMenuItem;
    Sair1: TMenuItem;
    pnlTela_Calculadora: TPanel;
    procedure btn_9Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_zerarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn_somaClick(Sender: TObject);
    procedure btn_ResultadoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    function numeros (key:Char) : Char;

  end;

var
  Form1: TForm1;
    valor1, valor2,resultado : real;
    operacao : TOperacao;
const
  tipo_operacao: array [0..4] of string = ('soma','multiplicacao','subtracao','divisao','resultado');

implementation

{$R *.dfm}

procedure TForm1.btn_9Click(Sender: TObject);
begin
  pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '9';
end;

procedure TForm1.btn_8Click(Sender: TObject);
begin
 pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '8';
end;

procedure TForm1.btn_7Click(Sender: TObject);
begin
  pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '7';
end;

procedure TForm1.btn_6Click(Sender: TObject);
begin
  pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '6';
end;

procedure TForm1.btn_5Click(Sender: TObject);
begin
  pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '5';
end;

procedure TForm1.btn_4Click(Sender: TObject);
begin
 pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '4';
end;

procedure TForm1.btn_3Click(Sender: TObject);
begin
  pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '3';
end;

procedure TForm1.btn_2Click(Sender: TObject);
begin
  pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '2';
end;

procedure TForm1.btn_1Click(Sender: TObject);
begin
 pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '1';
end;

procedure TForm1.btn_0Click(Sender: TObject);
begin
  pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '0';
end;

procedure TForm1.btn_zerarClick(Sender: TObject);
begin
  pnlTela_Calculadora.Caption := '';
end;



function TForm1.numeros (Key:Char) : Char;
begin

  //Trantando n�meros inseridos no teclado
  if not ((key in ['0'..'9', #8])) then
    Result := #0
  else
    Result:=key;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
    Key := numeros(key);
    if Key = #8 then
    
        //pnlTela_Calculadora.Caption := Key;
        pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + key;
end;


procedure TForm1.btn_somaClick(Sender: TObject);
begin

  //valor1 := StrToFloat(pnlTela_Calculadora.Caption);

  pnlTela_Calculadora.Caption:= pnlTela_Calculadora.Caption + '+';

  operacao := Soma;
  //valor2 := StrToFloat(pnlTela_Calculadora.Caption);



end;

procedure TForm1.btn_ResultadoClick(Sender: TObject);
var
  teste, teste2, teste3,s: string;
begin
     //Recebendo valores com fun��o copy, pos, pred e Succ
     valor1 := StrToFloat(Copy(pnlTela_Calculadora.Caption,1,Pred(Pos('+',pnlTela_Calculadora.Caption))));
     valor2 := StrToFloat(Copy(pnlTela_Calculadora.Caption,Succ(Pos('+',pnlTela_Calculadora.Caption)), Length(pnlTela_Calculadora.Caption)));

     //Testando o tipo de operador e efetuando a opera��o
     case operacao of

     Soma: resultado := valor1 + valor2;

     Subtracao: resultado := valor1 - valor2;

     Divisao: resultado := valor1 / valor2;

     Multiplicacao: resultado := valor1 * valor2;

          s := GetTOperacao(TypeInfo(TOperacao));


     end;




     //Testando aplica��o, deletar no futuro
      teste := FloatToStr(valor1);
      teste2 := FloatToStr(valor2);
      teste3 := FloatToStr(resultado);
     ShowMessage('Resultado: '+ teste);
     ShowMessage('Resultado: '+ teste2);
     ShowMessage('Resultado: '+ teste3);


end;

end.
