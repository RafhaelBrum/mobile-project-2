import 'package:flutter/material.dart';

import '../modules/calc/screens/calc.dart';
import '../modules/forms/screens/formulario.dart';
import '../modules/home/screens/home.dart';

class BottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomBarState();
  }
}

class BottomBarState extends State<BottomBar> {
  int abaSelecionada = 0;

  final List<Widget> telas = [
    Home(),
    Calculator(),
    Formulario(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Olá, Usuário!"),
        centerTitle: true,
        leading: Icon(Icons.favorite),
        backgroundColor: Color.fromARGB(158, 57, 180, 41),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: abaSelecionada,
        onTap: (index) {
          setState(() {
            abaSelecionada = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Início",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_sharp),
            label: "Calculadora",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
        selectedItemColor: Color(0xff525252),
        unselectedItemColor: Color.fromARGB(158, 57, 180, 41),
      ),
      body: telas[abaSelecionada],
    );
  }
}
