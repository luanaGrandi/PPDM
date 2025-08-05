import 'dart:io';

void main(){
  print("Digite o nome do motorista: ");
  String? nome = stdin.readLineSync();

  print("Digite a velocidade que o motorista estava: ");
  String? entrada1 = stdin.readLineSync();
  double velocidade = double.parse(entrada1!);

  if (velocidade <= 60){
    print("Sem infraçao");
  }
  else if(velocidade >= 61 && velocidade < 80){
    print("Infração leve");
  }
  else if(velocidade >= 81 && velocidade < 100){
    print("Infração media");
  }
  else{
    print("Infração Grave");
  }

  print("-------------------------------------------");
  print("Escolha uam dessas opções: ");
  print("1- Pagar a vista(10% de desconto)");
  print("2- Parcelar em 2X (sem juros)");
  print("3- Parcelar em 3X (com 10% de juros)");

  print("Digite sua opção campeao: ");
  int opcao = int.parse(stdin.readLineSync()!);

  switch(opcao){
    case 1:
      double multa1 = 100.50;
      double desconto = multa1 * 0.10;
      double valorFinal = multa1 - desconto;
      print("Sua multa é de: $valorFinal");
      break;
    case 2:
      double multa2 = 150.50; 
      double semjuros = multa2 / 2;
      print("total da multa é de: $multa2 sem juros | 2x de $semjuros ");
      break;
    case 3:
      double multa3 = 200.50;
      double juros = (multa3 * 0.10) + multa3;
      double vezes = juros / 3;
      print("total da multa com juros é de: $juros | 3x de $vezes ");
      break;
    default:
      print("opção invalida");
      break;
  }

}