import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {
  const Tela3({super.key});

  @override
  State<Tela3> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  String descricao = "";

  void descricaoflutter(){
    setState(() {
      descricao = "tenho apenas 2 meses da minha humilde experiencia";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text("$descricao"),
            ElevatedButton(onPressed: (){
              descricaoflutter();
            }, child: Text("flutter"))
          ],
        ),
      ),
    );
  }
}