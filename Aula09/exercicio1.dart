import 'dart:io';

class Animal{
  String nome;
   Animal({required this.nome});

  void falar(String nome){
    print("O animal esta falando");
  }
}

class Cachorro extends Animal{
  Cachorro({required String nome}):super(nome: nome);

  @override
  void falar(String nome){
    print("O $nome fala auau");
  }
}

class Gato extends Animal{
  Gato({required String nome}):super(nome: nome);

  @override
  void falar(String nome){
    print("O $nome fala miau");
  }
}
  
class Papagaio extends Animal{
  Papagaio({required String nome}):super(nome: nome);

  @override
  void falar(String nome){
    print("O $nome fala arararar");
  }
}

void main(){
  Cachorro Lua = Cachorro(nome: "Lua");
  Gato Marie = Gato(nome: "Marie");
  Papagaio kito = Papagaio(nome: "Kito");

  List<Animal> animais = [Lua, Marie, kito];

  animais.forEach((animal) {
    animal.falar(animal.nome);
  });
}
