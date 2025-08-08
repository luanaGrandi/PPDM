import 'dart:io';

void main(){

  stdout.write("Digite o total da sua compra:  ");
  double valor  = double.parse(stdin.readLineSync()!);

  stdout.write("Digite quantas vezes deseja parcelar:  ");
  int parcela  = int.parse(stdin.readLineSync()!);

  for( int i = 0; i < parcela; i++){
    double resultadoParcela = valor / parcela;

    print("Sua ${i+1} parcela é: ${resultadoParcela.toStringAsFixed(2)}");
  }

}