import 'dart:io';

void main(){
  int anoAtual = 2025;
  print("Digite sua idade atual: ");
  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!); 

  int idadeAno = idade + 1;

  print("Sua idade atual é $idade | sua idade no proximo ano: $idadeAno");
}