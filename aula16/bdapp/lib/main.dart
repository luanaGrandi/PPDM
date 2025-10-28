import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //função para inicializar os componentes que utilizam o firebase
  await Firebase.initializeApp(//aguarda o firebase inicializar
    options: DefaultFirebaseOptions.currentPlatform

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaGet()
    );
  }
}

class TelaGet extends StatefulWidget {
  const TelaGet({super.key});

  @override
  State<TelaGet> createState() => _TelaGetState();
}

class _TelaGetState extends State<TelaGet> {
  String? temperatura; //variavel pode ser nula, caso o database não exista

  @override
  void initState(){
    super.initState();
    gettemp();
  }

  void gettemp(){
    //collection é o nome da sua coleção, precisas ser o mesmo nome escolhido no banco de dados
    FirebaseFirestore.instance.collection("monitoramento").snapshots().listen(//snapshots => dados retornados do banco | listen=> para listar os dados 
      (snapshots){// o que você ira fazer para cada um?
        dynamic data =  snapshots.docs.first.data();//data => ao primeiro documento que tem no seu banco |dynamic => armazena todo tipos de dados
        setState(() {
          temperatura = data['temperatura'];
        });
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tela Get Firebase"),
          centerTitle: true,
          toolbarHeight: 200,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,

        ),
        body: Column(
          children: [
            Text("$temperatura")
          ],
        )
      ),
    );
  }
}