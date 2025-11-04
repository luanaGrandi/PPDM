import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  //aqui fica a sua logica

  //variavel que "observa" o que o usuario digita, o famoso fofoqueiro
  TextEditingController novaTemperatura = TextEditingController();

  @override
  void initState(){// função que reinicia o estado da pagina
    super.initState();
    mensagem = "";
    erro = "";
  }

  String erro = ""; //variavel para erro
  String mensagem = ""; //variavel para enviar que deu certo

  //função post
  //future, porque a confirmação acontece no futuro
  Future<void> postValue() async{
    try{
       FirebaseFirestore.instance.collection("monitoramneto").add(
        {
          "temperatura": novaTemperatura.text,
        }
      );
      setState(() {
        mensagem = "dados enviados com sucesso";
      });

      Timer(Duration(seconds: 4), (){
        setState(() {
          mensagem = "";
        });
      });
     
    }catch(e){
      setState(() {
        erro = "Erro ao enviar dados";
      });
    }
  }
    
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Post Page"),
            centerTitle: true,
            toolbarHeight: 200,
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
          ),
          body: Center(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 170, vertical: 10),
                  child: TextField(
                    cursorColor: Colors.blueAccent,
                    decoration: InputDecoration(
                      hintText: "Insira a nova temperatura: ",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                        )
                      )
                    ),
                    controller: novaTemperatura,
                  ),
                ),

                SizedBox(height: 50),

                ElevatedButton(onPressed: postValue,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                 child: Text("inserir dados no banco",style: TextStyle(color: Colors.white, fontSize: 15))),
                
                SizedBox(height: 30),

                Text("$mensagem", style: TextStyle(color: Colors.blue)),
                Text("$erro", style: TextStyle(color: Colors.red))
              ],
            ),
          ),
        ),
      );
    }
}