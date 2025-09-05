import 'dart:io';

class Forma{
  double medida1;
  double medida2;

  Forma({required this.medida1, required this.medida2});
  void CalcularArea(){
    print("Calculando area");
  }
}
class Quadrado extends Forma{
  Quadrado({required double medida1, required double medida2}):super(medida1: medida1, medida2: medida2);

  @override
  void CalcularArea(){
    double calculo = medida1 * medida2;
    print("A area do quadrado é: $calculo");
  }
}

class Retangulo extends Forma{
  Retangulo({required double medida1, required double medida2}):super(medida1: medida1, medida2: medida2);

  @override
  void CalcularArea(){
    double calculo = medida1 * medida2;
    print("A area do retangulo é: $calculo");
  }
}

class Circulo extends Forma{
  Circulo({required double medida1, required double medida2}):super(medida1: medida1, medida2: medida2);

  @override
  void CalcularArea(){
    double calculo = 3.141592653589793 * medida1 * medida1; 
    print("A area do circulo é: $calculo");
  }
}

void main() {

  Quadrado quad = Quadrado(medida1: 4, medida2: 4);
  quad.CalcularArea(); 

  Retangulo ret = Retangulo(medida1: 5, medida2: 3);
  ret.CalcularArea(); 

  Circulo circ = Circulo(medida1: 3, medida2: 0); 
  circ.CalcularArea();
}