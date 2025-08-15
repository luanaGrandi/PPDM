import 'dart:io';

void main(){
  stdout.write("Digite  seu nome completo: ");
  String? nome = stdin.readLineSync();

  while(nome == null || nome.trim().isEmpty){
    print("existe dados vazios ou nulo, tente de novo!");
    nome = stdin.readLineSync(); 
  } 
  print("\nCadastrado com sucesso!");


}