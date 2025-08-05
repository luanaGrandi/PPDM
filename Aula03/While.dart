import 'dart:io';

void main(){

  // print("digite sua senha: ");
  stdout.write("digite sua senha: "); //para deixar o input do lado da pergunta
  String? senha = stdin.readLineSync();

  //while -> usado para verificar antes de fazer a ação -> autenticação
  while(senha != "1234"){
    print("tente novamente");
    senha = stdin.readLineSync()!;
  }

  print("Acesso liberado");
  print("seu nome é luluzinha");
}