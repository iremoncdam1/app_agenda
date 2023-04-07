import 'package:app_agenda/Screens/prueba.dart';
import 'package:app_agenda/Themes/light.dart';
import 'package:flutter/material.dart';

import 'dia.dart';
import 'notas.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  int bottomIndex = 1;

  List<Widget> pantallas = [
    const Prueba(),
    const Dia(),
    const Center(child: Text('Tercera')),
    const Center(child: Text('Notas')),
    const Notas(),
  ];

  void _bottomNavTap(int index) {
    setState(() {
      bottomIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Nombre aplicación')),
      ),
      body: pantallas.elementAt(bottomIndex),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: CustomLightTheme.linen,
        //backgroundColor: CustomLightTheme.grass,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio', backgroundColor: CustomLightTheme.grass),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_view_day_rounded), label: 'Test_1', backgroundColor: CustomLightTheme.grass),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Mes'),
          BottomNavigationBarItem(icon: Icon(Icons.notes_outlined), label: 'Notas',),
          BottomNavigationBarItem(icon: Icon(Icons.question_mark_outlined), label: 'Pruebas',),
        ],
        currentIndex: bottomIndex, //Cambia el texto del navigationBar.
        onTap: _bottomNavTap,
      ),
    );
  }
}