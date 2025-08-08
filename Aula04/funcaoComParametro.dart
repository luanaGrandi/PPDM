// função com parametro/ sem retorno  precisa de informação para funcionar
// quando precisa de informações, mas nao manipula/modifica os dados, só mostra
import 'dart:io';

void main(){
  soma(10, 20);
}

void soma(int num1, int num2){
  int valor = num1 + num2;
  print("$valor");

}