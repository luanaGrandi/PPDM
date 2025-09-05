import 'dart:io';
import 'encapsulamento.dart';

void main(){
  Carro UpTesla = Carro(modelo: "Não agrade todo mundo");
  UpTesla.alterar_velocidade = 20;
  print(UpTesla.mostrar_velocidade);
}