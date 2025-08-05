import 'dart:io';

void main(){
  //so pode ser string nos inputs de dart
  print("Digite sua idade: ");
  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!); //converte string para int apenas se houver dados.


  if (idade >= 18){
    print("Você pode dirigir");
  }
  else{
    print("Você deve beber toddynho e pegar um uber");
  }
}