import 'package:flutter/material.dart';
import 'tela2.dart';
import 'home.dart';
import 'tela3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NavBar());
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0; //variavel indice atual

  void changeindex(int index) {// funçao para mudar o indice
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> screens = [
    TelaHome(),
    Tela2(),
    Tela3()
  ]; //lista que contem todas as nossas telas

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens.elementAt(currentIndex),//conteudo sera a tela que esta  no index atual
        bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.account_circle)),
          BottomNavigationBarItem(label: "Tela 2", icon: Icon(Icons.account_circle)),
          BottomNavigationBarItem(label: "Tela 3", icon: Icon(Icons.account_circle)) 
        ],
        currentIndex: currentIndex, //posição desejada
        onTap: changeindex, //função que muda o index
      )
      )
    );
  }
}
