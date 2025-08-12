import 'dart:io';

void main(){
  stdout.write("Digite o preco: ");
  String? entrada1 = stdin.readLineSync();
  double preco = double.parse(entrada1!); 

  stdout.write("Digite o desconto: ");
  String? entrada2 = stdin.readLineSync();
  double desconto = double.parse(entrada2!); 

  double valorFuncao = calcularDesconto(preco, desconto);
  print("o desconto é: $valorFuncao");
}

double calcularDesconto(double preco, double desconto){
  double valor = preco - desconto;
  return valor;
  
}