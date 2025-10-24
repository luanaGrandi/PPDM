import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,//indica que a rolagem sera na horizontal
          children: [
            Row(
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
        ),
      ),
    );
  }
}