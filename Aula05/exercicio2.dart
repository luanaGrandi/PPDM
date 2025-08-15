import 'dart:io';

void main() {
  double? valorCompra;

  int? opcao;

  while (valorCompra == null || valorCompra <= 0) {
    stdout.write("\nDigite o valor da sua compra: ");
    String? input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      print("\nExiste dado vazio ou nulo, tente de novo!");
      continue;
    }

    try {
      valorCompra = double.parse(input);

      if(valorCompra <= 0){
        print("O valor deve ser maior que zero");
      }
    } on FormatException {
      print("\nDigite apenas números válidos! ");
    }
  }

  do { 

    print("digite uma opcao de pagamento"); 
    opcao = int.parse(stdin.readLineSync()!); 
    switch(opcao) { 
        case 1:  
          print("Pagamento com pix"); 
        case 2: 
          print("Pagamento dinheiro"); 
        case 3: 
          print("pagamento cartao"); 
        default:
          print("Entrada invalida tente novamente");
    }   
  }while(opcao < 1 || opcao > 3); 


} 



