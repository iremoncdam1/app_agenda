import 'package:app_agenda/Screens/notas.dart';
import 'package:flutter/material.dart';
import 'package:app_agenda/Screens/prueba.dart';
import 'Screens/dia.dart';
import 'Screens/nav_bar.dart';
import 'Themes/light.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'navegar',
      //* Definimos las rutas de la aplicación para poder navegar de manera sencilla entre pantallas
      routes: {
        'prueba': (context) => const Prueba(),
        'dia': (context) => const Dia(),
        'navegar': (context) => const BottomNav(),
        'notas': (context) => const Notas(),
      },
      theme: CustomLightTheme.themeData,
    );
  }
  
  
}
