//quando não sabemos a quantidade de vezes que ira repetir
// Do while ->  testa a condição depois de executar
// while -> ele so executa antes da condição


// void main(){
//   int number = 0;

//   do{
//     print("hello");
//   }while(number>1);
// }

import 'dart:io';

void main(){
  String continuar = "";

  // do while -> usado para fazer ações e depois verificar se deve repetir/continuar -> Menu
  do{
    print("bem vindo ao mercado da Lu");
    print("1- comprar carne");
    print("1- comprar feijão");
    print("1- comprar arroz");

    print("Deseja continuar comprando?(sim/não) ");
    continuar = stdin.readLineSync()!;

  }while(continuar == "sim");


}