import 'dart:io' ; //importa a biblioteca com as funções da linguagem

//função principal para rodar o codigo
void main(){

  // VARIAVIES
  print("Digite seu nome: "); //mensagem que aparece no input. precisa ter para o programa não ter loop infinito
  String? nome = stdin.readLineSync(); //input - para que esse input possa ser nulo tbm, coloque o "?" depois do tipo da variavel
  String nome2 = nome!.toLowerCase();// transforma o valor da variavel nome para minusculo
  //para transformar tudo em maiusculo utiliza o  toUpperCase()
  print("ola amigo(a) seu nome é $nome :)"); // print para aparecer a resposta do input

  // IF E ELSE
  if (nome2 == "luana"){ // utilizar parenteses para a expressão
    print("Voce é top!");
  }
  else if(nome2 == "Marquin"){
    print("Qual foi Marquin!");
  }
  else{
    print("vai emboraaaaaaaaaa");
  }

}

// para rodar o projeto, de o comando "dart nome do arquivo"