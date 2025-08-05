// for -> quando temos ja ua quantidade definada de vezes que precisa rodar
// I -> passa pelos elementos de uma lista ou verificar uma quantidade de vezes 

import 'dart:io';

void main(){
  //programa que recebe as 3 frutas preferidas de um usuario
  List<String> frutas = [];

  for(int i = 0; i < 3; i++){
    //comece declarando a variavel
    // defina a condição para parar o programa
    // define a mudança de valor a cada repetição
    print("Digite sua fruta favorita: ");
    String?  fruta = stdin.readLineSync();
    frutas.add(fruta!);
  }
  // print(frutas);
  for(String i in frutas){ // para cada dado da fruta mostre o dado da fruta
    print("$i");
  }

// FOR EACH
  // for -> para
  // each -> cada
  // observa cada dado da lista
  frutas.forEach((String i) => print(i)); //serve para fazer ações para cada dado da lista fruta
  frutas.forEach((String i){
    print(i);
    print("oBA");
  });

  //OUTRO EXEMPLO

  List<int> numeros = [1,3,5];
  numeros.forEach((int i){
    i += 1;
    print(i);
  });
  print(numeros);
}