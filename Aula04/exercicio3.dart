import 'dart:io';

void main(){
  stdout.write("Digite a temperatura: ");
  String? entrada1 = stdin.readLineSync();
  double celsius = double.parse(entrada1!); 

  double valorfinal  = celsiusParaFahrenheit(celsius);
  print("A temperatura convertida para fahrenheit é: $valorfinal ");
}
double celsiusParaFahrenheit(double celsius){
  double fahrenheit = (celsius * 9 / 5) + 32;
  return fahrenheit;
}