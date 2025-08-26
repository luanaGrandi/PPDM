
import 'dart:io';

class Produto{
  String nome = "";
  int preco = 0;
  int estoque = 0;

  //construtor
  Produto(this.nome, this.preco, this.estoque);

  void subtrair_estoque(){
    if(estoque > 0){
      estoque -= 1;
    }else{
      print("Estoque esgotado para o produto $nome");
    }
  }
}

void main(){
  Produto produto1 = Produto("Arroz", 12, 10);
  Produto produto2 = Produto("Feijão", 20, 2);
  Produto produto3 = Produto("Macarrão", 25, 0);

  print("Produto 01: ${produto1.nome}, ${produto1.preco}, ${produto1.estoque}");
  print("Produto 02: ${produto2.nome}, ${produto2.preco}, ${produto2.estoque}");
  print("Produto 03: ${produto3.nome}, ${produto3.preco}, ${produto3.estoque}");

  produto1.subtrair_estoque();
  produto2.subtrair_estoque();
  produto3.subtrair_estoque();

  print("\n----------------------------");
  print("Produto 01: ${produto1.estoque}");
  print("Produto 02: ${produto2.estoque}");
  print("Produto 03: ${produto3.estoque}");
}