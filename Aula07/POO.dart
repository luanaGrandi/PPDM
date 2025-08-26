import 'dart:io';
import 'classecachorro.dart';

//class
//é como um modelo para os objetos. elá ira definir as caracteristicas e metodos.

void main(){
  //criar nosso objeto
  Humano Vinicius = Humano("azul", "Vinicius", 20, "topete");
  Humano Luana = Humano("castanho", "Lulu", 17, "liso");
  Humano Ana = Humano("castanho escuro", "Ana", 18, "cacheado");
  Cachorro Spike = Cachorro("Spike Mota");
  print(Spike.nome);
}

class Humano{//class, faça sempre com a primeira letra maiuscula
  String cor_olho = " ";
  String nome = "";
  int iddade = 0;
  String cabelo= "";
  //construtor
  Humano(this.cor_olho, this.nome, this.iddade, this.cabelo);
}