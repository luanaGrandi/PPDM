//usamos ele, quando o valor de entrada são fixos e a condição é simples
import 'dart:io';

void main() {
  print("Bem vindo ao menu da Diva");
  print("1- comprar arroz");
  print("2- comprar feijão");
  print("3- comprar macarrão");

  print("Digite sua opção campeao: ");
  int opcao = int.parse(stdin.readLineSync()!);

  switch(opcao){
    case 1:
      print("Arroz adicionado!");
      break;
    case 2:
      print("Feijão adicionado!");
      break;
    case 3:
      print("Macarrão adicionado!");
      break;
    default:
      print("opção invalida");
      break;
  }

}