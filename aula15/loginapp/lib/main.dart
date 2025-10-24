import 'package:flutter/material.dart';
import 'package:loginapp/api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { //permite a navegação
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage()
    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController user = TextEditingController();  //variavel para observar o que o usuario esta colocando
   TextEditingController password = TextEditingController();

  //variaveis para logar
  String correctUser = "luana";
  String correctPassword = "123";

  //variavel para mostrar a mensagem o erro
  String erro = "";

  void login(){
    if(user.text == correctUser && password.text == correctPassword){
      Navigator.push(context,MaterialPageRoute(builder: (context)=> ApiPage()));
    }else{
      setState(() {
        erro = "Existem credenciais erradas";
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person,size: 100, color: Color(0xFF3AA4B3)),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 170, vertical: 10),
                child: TextField(//campo para o usuario digitar as informações
                  cursorColor: const Color(0xFF3AA4B3),
                  controller: user,
                  decoration: InputDecoration(
                    hintText: "Insira o seu nome",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color:  const Color(0xFF3AA4B3),
                      )
                    )
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 170, vertical: 70),
                child: TextField(
                  cursorColor: const Color(0xFF3AA4B3),
                  controller: password,
                  obscureText: true , //senha privada
                  decoration: InputDecoration(
                    hintText: "Insira sua senha",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color:  const Color(0xFF3AA4B3),
                      )
                    )
                  ),
                ),
              ),
              
              ElevatedButton(
                onPressed: login, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3AA4B3),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 18 ))
              ),
              const SizedBox(height: 18),
              Text("$erro", style: TextStyle(color: Colors.red)),

              ElevatedButton(
                onPressed: (){
                  
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3AA4B3),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Text("Api", style: TextStyle(color: Colors.white, fontSize: 18 ))
              ),
            
            ],
          )
        )
      ),
    );
  }
}