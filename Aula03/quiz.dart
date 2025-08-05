import 'dart:io';

void main(){
  String opcao = "";
  do{
    print("Formas de pagamento: ");
    print("1- Pix");
    print("2- Credito");
    print("3- Debito");

    print("Qual sua opção: ");
    opcao = stdin.readLineSync()!;

  }while (opcao == "1" || opcao == "2" || opcao == "3");
  
}