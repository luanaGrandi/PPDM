import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
        textTheme: GoogleFonts.ubuntuTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/images/fundoGif.gif",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/fotoPessoal.png", width: 350),
                    const SizedBox(width: 50),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        children: [
                          Text(
                            "Luana Grandi da Mota",
                            style: GoogleFonts.archivoBlack(
                              textStyle: const TextStyle(
                                color: Color(0xFF2494C8),
                                fontSize: 30,
                              ),
                            ),
                          ),
                          Text(
                            "Sou a Luana, tenho 17 anos. \nEstou cursando o 3 ano do Ensino medio.\nAtualmente estou trabalhando na Bosch como Jovem Aprendiz\njuntamente com o Tecnico de Desenvolvimento de Sistemas \nno Senai Roberto Mange.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                Text(
                  "FERRAMENTAS",
                  style: GoogleFonts.archivoBlack(
                    textStyle: const TextStyle(
                      color: Color(0xFF2494C8),
                      fontSize: 30,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 170),
                    Image.asset("assets/images/fluter.png", width: 60),
                    const SizedBox(width: 20),
                    Image.asset("assets/images/react.png", width: 60),
                    const SizedBox(width: 20),
                    Image.asset("assets/images/python.png", width: 60),
                    const SizedBox(width: 20),
                    Image.asset("assets/images/figma.png", width: 40),
                    const SizedBox(width: 20),
                    Image.asset("assets/images/mysql.png", width: 100),
                    const SizedBox(width: 20),
                    Image.asset("assets/images/java.png", width: 60),
                  ],
                ),
                const SizedBox(height: 70),
                Container(
                  color: Color(0xFF2494C8),
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Text(
                        "Meus Projetos ",
                        style: GoogleFonts.archivoBlack(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 170),
                          Image.asset("assets/images/elogiar.png",width: MediaQuery.of(context).size.width * 0.2,),
                          const SizedBox(width: 20),
                          Image.asset("assets/images/lider.png",width: MediaQuery.of(context).size.width * 0.2,),
                          const SizedBox(width: 20),
                          Image.asset("assets/images/ProfConecta.png",width: MediaQuery.of(context).size.width * 0.2,),
                          const SizedBox(width: 20),
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
