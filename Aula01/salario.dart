import 'dart:io';

void main(){
  //usuario digitar seu nome
  print("Digite seu nome: ");
  String? nome = stdin.readLineSync();
  print("Ola, $nome");

  print("digite seu salario do 1 mes: ");
  String? entrada1 = stdin.readLineSync();
  double salario1 = double.parse(entrada1!);

  print("digite seu salario do 2 mes: ");
  String? entrada2 = stdin.readLineSync();
  double salario2 = double.parse(entrada2!);

  print("digite seu salario do 3 mes: ");
  String? entrada3 = stdin.readLineSync();
  double salario3 = double.parse(entrada3!);

  double media = (salario1 + salario2 + salario3) /3;

  if(salario1 <= 0 || salario2 <= 0 || salario3 <= 0){
    print("Salario invalido!, tente so salarios positivos");
  }
  else if(media > 0 && media < 500){
    print("Cuidado para não fazer tantas contas!");
   
  }
  else if(media >= 500 && media < 1000){
    print("Seu salario ta top, mas cuidado!");
  }
  else if (media >= 1000 && media < 2000){
    print("Parabes, voce ja pode comprar um carro ");
  }
  else{
    print("Você é super ricoooooooooo");
  }





}