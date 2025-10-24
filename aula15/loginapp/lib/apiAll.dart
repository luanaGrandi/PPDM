import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apiall extends StatefulWidget {
  const Apiall({super.key});

  @override
  State<Apiall> createState() => _ApiallState();
}

class _ApiallState extends State<Apiall> {
 List<dynamic>? value; //lista que armazena os valores recebidos

  @override //precisa para subscrever o valor anterior
  void initState(){ //essa fnção auxilia a resetar o estado da pagina toda vez que entrar nela
    super.initState(); //super == sempre rodas esta funçao
    getvalue(); //função que busca o valor
  }

  void getvalue() async {//função que busca o valor
    final response = await http.get(Uri.parse("https://dummyjson.com/products"));

    if(response.statusCode == 200){// se o status da requisicao for ok
      //json decode transforma as propriedades do json em tipos de dados
      final data = jsonDecode(response.body);

      setState(() {
        value = data["products"];

      });

    }

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: value == null ? CircularProgressIndicator() : 
        Center(
          //listviw é a rolagem de tela .builder vai construir algo
          child: ListView.builder(itemCount: value!.length, //itemCount é a quantidade de items a ser contruido
            itemBuilder:(context, index){ //é o componente a ser construido para cada linha da lista
              final item = value![index]; //value[0]
              return Container(
                width: 150,
                height: 150,
                color:const Color(0xFF3AA4B3),

                child: Center(
                  child: Text("${item["name"]}"),
                ),
              );
            }, 
          ) 
        )
      ),
    );
  }
}