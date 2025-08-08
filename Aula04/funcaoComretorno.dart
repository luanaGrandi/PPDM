

import 'dart:io';

// função com retorno -> ela não precisa de informçoes adicionais para funcionar, mas voce pode manipular os dados que foram retornados  
// void main(){
//  int valordafuncao = soma();
//  int valorfinal = valordafuncao * 2;
//  print("Valor final: $valorfinal");
// }

// int soma(){
//   int valor = 1 + 2;
//   return valor;
//   // return -> pegar o valor e alterar e não so visualizar o valor
// }



//função com parametro e retorno
void main(){
 int valordafuncao = soma(30,50);
 int valorfinal = valordafuncao * 2;
 print("Valor final: $valorfinal");
}

int soma(int num1, int num2){
  int valor = num1 + num1;
  return valor;
  // return -> pegar o valor e alterar e não so visualizar o valor
}