import 'dart:io';

class Veiculos{
  String modelo;
  String cor;
  String marca;

  Veiculos({ required this.modelo, required this.cor, required this.marca});

  void mover(bool cnh){
    if(cnh == true){
      print("movendo o veiculo");
    }else{
      print("Voce não tem CNH");
    }
  }

  String toString(){ //faz retornar todos os dados do seu objeto no print
    return "$modelo, $cor, $marca";
  }
}

class Carro extends Veiculos{
  Carro({required String modelo, required String cor, required String marca}):super(cor: cor, modelo:modelo, marca:marca);

  @override
  void mover(bool cnh){
    if(cnh == true){
      print("Virando a chave");
      print("engatar a marcha");
      print("Soltar o pé da embreagem");
      print("Aceleraaaaaaaaaa");
      
    }else{
      print("Voce não tem CNH");
    }
  }

  @override
  String toString(){ 
    return "$modelo";
  }
}

class Moto extends Veiculos{
  Moto({required String modelo, required String cor, required String marca}):super(cor: cor, modelo:modelo, marca:marca);

  @override
  void mover(bool cnh){
    if(cnh == true){
      print("Virando a chave");
      print("colocar no neutro");
      print("ligar moto");
      print("engata a primeira marcha");
      print("Aceleraaaaaaaaaaaaaaaaa");
    }else{
      print("Voce não tem CNH");
    }
  }
}


void main(){
  Carro Bugatti = Carro(modelo: "Veyron", cor: "azul", marca: "bugatti/volks");
  print(Bugatti);
  Bugatti.mover(true);
  print("---------------------------------------------------------");
  Moto hornet = Moto(modelo: "hornet", cor: "Amarela", marca: "Honda");
  print(hornet);
  hornet.mover(false);
  

}