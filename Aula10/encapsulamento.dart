//conseguir consultar e alterar valores dos atributos
//estando em arquivos diferentes
//em dart so encapsilamento so funciona em arquivos diferentes

//ENCAPSULAMENTO 
// ELE NOS DA SEGURANÇA NO CODIGO

import 'dart:io';

class Carro{
  String modelo;
  int _velocidade = 0;// Atributo privado precisa de _ "underline" antes do nome da variavel

  Carro({required this.modelo});

  //função Get --> para ver a função dos atributo privado

  int get mostrar_velocidade{
    return _velocidade;
  }

  // função Set --> alterar o valor com validação
  set alterar_velocidade(int v){
    if (v < 0){
      print("velocidade não pode ser igual a zero");
    }else{
      _velocidade = v;
    }
  }
}