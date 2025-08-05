import 'dart:io';

void main(){
  print('Verificações de notas da luana');

  print("digite sua nota: ");
  String? input1 = stdin.readLineSync();
  int nota1 = int.parse(input1!);

  print("digite sua nota: ");
  String? input2 = stdin.readLineSync();
  int nota2 = int.parse(input2!);

  print("digite sua nota: ");
  String? input3 = stdin.readLineSync();
  int nota3 = int.parse(input3!);

  print("digite sua nota: ");
  String? input4 = stdin.readLineSync();
  int nota4 = int.parse(input4!);

  print("digite sua nota: ");
  String? input5 = stdin.readLineSync();
  int nota5 = int.parse(input5!);


  double media = (nota1 + nota2 + nota3 + nota4 + nota5) /5;

  if (media >= 5){
    print("aprovado");
  }
  else if (media <= 4){
    print("Reprovado");
  }
  else{
    print("recuperação");
  }
}