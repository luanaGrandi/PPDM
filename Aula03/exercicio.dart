import 'dart:io';

void main(){

  List<String> produtos = [];
  List<double> precos = [];
  String continuar = "";
  double total = 0.0;
  int opcao = 0;

  print("Mercadinho da Luana da Moda!");
  print("Items que estão disponiveis!");
  print("--------------------------------");
  print("Nome: Arroz | Preço: 10.00");
  print("Nome: Feijão | Preço: 12.00");
  print("Nome: Macarrão | Preço: 20.00");
  print("Nome: Batata | Preço: 8.00");

  stdout.write("\nDigite seu CPF: ");
  String CPF  = stdin.readLineSync()!;

  do{
    print("\nIncluir items!");
    print("------------------");

    stdout.write("\nDigite o nome do item: ");
    String? nomeItem = stdin.readLineSync();
    produtos.add(nomeItem!);

    stdout.write("\nDigite o preço do item: ");
    String? entrada1 = stdin.readLineSync();
    double precoItem = double.parse(entrada1!);
    precos.add(precoItem);
    total = total + precoItem;

    print("\nDeseja continuar incluindo?(sim/não) ");
    continuar = stdin.readLineSync()!;

  }while(continuar == "sim");

  print("\nItens comprados!");
  print("--------------------");
  print("nome: $produtos | preco: $precos");
  print("Total da Sua compra: $total");


  do{
    print("\n-------------------------------------------");
    print("Escolha uma dessas opções de pagamento: ");
    print("1- Pagar a vista(10% de desconto)");
    print("2- Parcelado no cartão 2x (10% de juros)");
    print("3- Fiado (com 15% a mais para a proxima compra)");

    print("Digite sua opção: ");
    opcao = int.parse(stdin.readLineSync()!);

    switch(opcao){
    case 1:
      double desconto = total * 0.10;
      double valorFinal = total - desconto;
      print("O valor total é: $valorFinal");
      break;

    case 2:
      double juros = (total * 0.10) + total;
      double vezes = juros / 2;
      print("total da multa com juros é de: $juros | 3x de $vezes ");
      break;

    case 3:
      print("O valor dessa compra sera: $total");
      print("mas na proxima compra tera um aumento de 15%!!!!!!!");

    default:
      print("opção invalida");
      
    }
  }while( opcao < 0 ||opcao >3);

}