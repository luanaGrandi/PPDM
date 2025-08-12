import 'dart:io';

void main(){
  stdout.write("Digite sua idade: ");
  String? entrada1 = stdin.readLineSync();
  int idade = int.parse(entrada1!); 

  bool valorfinal = eMaiorIdade(idade);
  print("Você é maior de idade? $valorfinal");

}
bool eMaiorIdade(int idade){
    if(idade >= 18){
      return true;
      
    }else{
      return false;
    }
}