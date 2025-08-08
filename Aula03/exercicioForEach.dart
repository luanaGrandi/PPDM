import 'dart:io';

void main(){

  List<String> nomes = ["Ana", "Bruno", "Carlos", "Luana"];
  List<String> nomesPresentes = [ ];

  
  nomes.forEach((String i){
    
    print("O aluno(a) $i está presente? (sim/não)");
    String? resposta = stdin.readLineSync();

    if (resposta == "sim"){
      nomesPresentes.add(i);
    }
  });
  
  print("\nAlunos que estão presentes:");
  print(nomesPresentes.join(","));


}