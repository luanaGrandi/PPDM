import 'dart:io';

class Pagamento{
  void processar(){
    print("procesando...");
  }
}

class Pix extends Pagamento{
  @override
  void processar(){
    print("Pagamento via Pix efetuado com sucesso!");
  }
}

class Debito extends Pagamento{
  @override
  void processar(){
    print("Pagamento via Debito efetuado com sucesso!");
  }
}

class Boleto extends Pagamento{
  @override
  void processar(){
    print("Pagamento via Boleto efetuado com sucesso!");
  }
}

void main(){
  print("Escolha a forma de pagamento que você deseja: \n1-Pix \n2-Debito \n3-Boleto  ");
  String? input1 = stdin.readLineSync();
  int escolha = int.parse(input1!);

  switch(escolha){
    case 1:
    Pix pix1 = Pix();
    pix1.processar();

    case 2:
    Debito debito1 = Debito();
    debito1.processar();

    case 3:
    Boleto boleto1 = Boleto();
    boleto1.processar();

    default:
      print("opção invalida");
  }
}