unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TOperacao  = (Multiplicacao,Soma,Divisao,Subtracao); // Declaração do Tipo Enumerado
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
    procedure btn_subtracaoClick(Sender: TObject);
    function StrToEnumerado(var s: String; const AString:
array of string; const AEnumerados: array of variant): variant;
function EnumeradoToStr(s: variant; const AString:
array of string; const AEnumerados: array of variant): String;
function StrToOperacao(valor: String): TOperacao;

    procedure btn_divisaoClick(Sender: TObject);
    procedure btn_multiplicacaoClick(Sender: TObject);

  private
    { Private declarations }
    function OperacaoToStr(operacao: TOperacao): String;
  public
    { Public declarations }
    function numeros (key:Char) : Char;


  end;

var
  Form1: TForm1;
    valor1, valor2,resultado : real;
    operacao : TOperacao;


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

  //Trantando números inseridos no teclado
   if not (((key in ['0'..'9', #8])) or (key in ['-','/','+','*',','])) then
    Result := #0
  else
    Result:=key;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btn_Resultado.Click;
  end
  else
  begin
    Key := numeros(key);
  end;

  if Key ='+' then
  begin
    operacao := Soma;
     pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '+';
  end
  else if Key ='-' then
  begin
    operacao := Subtracao;
     pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '-';
  end
  else if Key ='*' then
  begin
    operacao := Multiplicacao;
     pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '*';
  end
  else if Key ='/' then
  begin
    operacao := Divisao;
     pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + '/';
  end
  else
  begin
    //pnlTela_Calculadora.Caption := Key;
    pnlTela_Calculadora.Caption := pnlTela_Calculadora.Caption + key;
  end;
end;


procedure TForm1.btn_somaClick(Sender: TObject);
begin

  //valor1 := StrToFloat(pnlTela_Calculadora.Caption);

  pnlTela_Calculadora.Caption:= pnlTela_Calculadora.Caption + '+';

  operacao := Soma;

  //valor2 := StrToFloat(pnlTela_Calculadora.Caption);



end;

function TForm1.EnumeradoToStr(s: variant; const AString:
array of string; const AEnumerados: array of variant): String; // A ideia de variaveis const e que elas nao podem mudar
var
i: integer;
begin
  result := '';
  //Low pega o indice mais baixo do array
  //Higj pega o indice mais alto do array
  for i := Low(AEnumerados) to High(AEnumerados) do
    if AEnumerados[i] = s then
      result := AString[i];  //result é o retorno da função [Padrão do Delphi para retorno]
end;

function TForm1.StrToEnumerado(var s: String; const AString:
array of string; const AEnumerados: array of variant): variant;
var
i: integer;
begin
result := -1;
  for i := Low(AString) to High(AString) do
    if AnsiSameText(s, AString[i]) then
      result := AEnumerados[i];
end;

function TForm1.StrToOperacao(valor: String): TOperacao;
begin
result := StrToEnumerado(valor, ['+', '-', '/', '*'], [Soma, Subtracao, Divisao, Multiplicacao]);
end;



procedure TForm1.btn_ResultadoClick(Sender: TObject);
var
  teste, teste2, teste3,mensagem, expressao, operador, strValor1, strValor2 : string;
  i, ind: integer;
begin

      //Quebrando a String
      valor1 := StrToFloat((Copy(pnlTela_Calculadora.Caption,1,Pred(Pos(OperacaoToStr(operacao),pnlTela_Calculadora.Caption)))));
      valor2 := StrToFloat((Copy(pnlTela_Calculadora.Caption,Succ(Pos(OperacaoToStr(operacao),pnlTela_Calculadora.Caption)), Length(pnlTela_Calculadora.Caption))));

     //Testando o tipo de operador e efetuando a operação
     case operacao of

     Soma:
     begin
          resultado := valor1 + valor2;
     end;
     Subtracao: resultado := valor1 - valor2;

     Divisao: resultado := valor1 / valor2;

     Multiplicacao: resultado := valor1 * valor2;


     end;
     //Atribuindo  valor dos resultados das expressões ao Panel
        mensagem := FloatToStr(resultado);
         pnlTela_Calculadora.Caption := mensagem;
         



     //Testando aplicação, deletar no futuro
      //teste := FloatToStr(valor1);
      //teste2 := FloatToStr(valor2);
     // teste3 := FloatToStr(resultado);
     //ShowMessage('Resultado: '+ teste);
     //ShowMessage('Resultado: '+ teste2);
     //ShowMessage('Resultado: '+ teste3);


end;

procedure TForm1.btn_subtracaoClick(Sender: TObject);
begin
 pnlTela_Calculadora.Caption:= pnlTela_Calculadora.Caption + '-';

  operacao := Subtracao;
end;

procedure TForm1.btn_divisaoClick(Sender: TObject);
begin
      pnlTela_Calculadora.Caption:= pnlTela_Calculadora.Caption + '/';

  operacao := Divisao;
end;

procedure TForm1.btn_multiplicacaoClick(Sender: TObject);
begin
    pnlTela_Calculadora.Caption:= pnlTela_Calculadora.Caption + '*';

     operacao := Multiplicacao;
end;

function TForm1.OperacaoToStr(operacao: TOperacao): String;
begin
  result := EnumeradoToStr(Ord(operacao), ['+', '-', '/' , '*'], [Soma, Subtracao, Divisao, Multiplicacao]);
end;

end.
