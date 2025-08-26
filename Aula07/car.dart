import 'dart:io';

class Carro{
  int rodas = 0;
  String cor = "";
  String placa = "";
  String marca = "";
  String modelo = "";
  int velocidade = 0;

  Carro(this.rodas, this.cor, this.placa, this.marca, this.modelo, this.velocidade);

  void acelerar(){
  velocidade += 10;
  }
}


void main(){
  Carro Mustang = Carro(4, "azul", "AJA1800", "Ford", "Mustang Manual", 170);
  Carro Ferrari = Carro(4, "Vermelha", "AC777", "Ferrari", "La Ferrari", 200);
  print("Velocidade antes de acelerar ${Mustang.velocidade}");
  print("Velocidade antes de acelerar ${Ferrari.velocidade}");

  Mustang.acelerar();
  Ferrari.acelerar();
  
  print("Velocidade antes de acelerar ${Mustang.velocidade}");
  print("Velocidade antes de acelerar ${Ferrari.velocidade}");
}