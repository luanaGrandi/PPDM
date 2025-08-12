import 'dart:io';

void main(){
  stdout.write("Digite  seu nome: ");
  String? nome = stdin.readLineSync();

  while(nome == null || nome.trim().isEmpty){ //  isEmpty == zavio  | trim == ignora os espaços
    print("existe dados vazios ou nulo, tente de novo!");
    nome = stdin.readLineSync();  // se a pessoa der enter, o espaço fica zavil
  } 
    print("Logado com sucesso!");
  
}