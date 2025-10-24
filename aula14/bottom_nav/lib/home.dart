import 'package:flutter/material.dart';

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(//permite a rolagem de tela
          children: [
            Column(
              children: [
                Container(
                  width: 400,
                  height: 600,
                  color: Colors.blue,
                ),
                Container(
                  width: 400,
                  height: 600,
                  color: const Color(0xFF6B21F3),
                ),
                Container(
                  width: 400,
                  height: 600,
                  color: const Color(0xFFF321D7),
                ),
                Container(
                  width: 400,
                  height: 600,
                  color: const Color(0xFFF32148),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}