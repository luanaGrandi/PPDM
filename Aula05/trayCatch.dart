import 'dart:io';

// void main(){

//   try{ //tenta fazer algo
//     print("digite seu numero: ");
//     int numero = int.parse(stdin.readLineSync()!);
    
//   }catch(ola){ // e == erro || mostra o erro
//     print("Esse é o seu erro $ola");
//   }finally{ // independente dio que aconteça execute:
//     print("Encerrando o programa");

//   }

// }

void main(){

  try{ //tenta fazer algo
    print("digite seu numero: ");
    int numero = int.parse(stdin.readLineSync()!);
    
  } on FormatException { // voce consegue mostrar respostas personalizadas para cda tipo de erro
    print("Digite apenas numeros: ");

  }on TypeError{
    print("Conversão de dados invalidos");
  }

}