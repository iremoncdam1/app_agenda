import 'package:flutter/material.dart';

import '../Themes/light.dart';

class Notas extends StatefulWidget {
  const Notas({super.key});

  @override
  State<Notas> createState() => _NotasState();
}

class _NotasState extends State<Notas> {
   int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyNotas(),
      backgroundColor: CustomLightTheme.linen,



      //Botón para añadir nueva nota
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Añadir nueva nota',
        backgroundColor:  CustomLightTheme.matcha,
        child: const Icon(Icons.add),
      ),
    );
    
    /*Container(
      children: [
        Center(
          child: Card(
            //clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: CustomLightTheme.matcha,
              onTap: () {
                debugPrint('Card tapped.');
              },
              child: const SizedBox(
                width: 300,
                height: 50,
                child: Text('Primera card', style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
        ),
    );*/




    /*Container(
      
      child: Card(
            //clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: CustomLightTheme.matcha,
              onTap: () {
                debugPrint('Card tapped.');
              },
              child: const SizedBox(
                width: 300,
                height: 50,
                child: Text('Primera card', style: TextStyle(fontSize: 20)),
              ),
            ),),
      
          
      
    );*/


  }
















ListView bodyNotas(){
    return ListView(
        children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Text('Has pulsado $_count veces.', style: const TextStyle(fontSize: 20), textAlign: TextAlign.center),
          ),
        ),
        Card(
            //clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: CustomLightTheme.matcha,
              onTap: () {
                debugPrint('Card tapped.');
              },
              child: const SizedBox(
                width: 300,
                height: 50,
                child: Text('Primera card', style: TextStyle(fontSize: 20)),
              ),
            ),),
        Card(
            //clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: CustomLightTheme.matcha,
              onTap: () {
                debugPrint('Card tapped.');
              },
              child: const SizedBox(
                width: 300,
                height: 50,
                child: Text('Segunda card', style: TextStyle(fontSize: 20)),
              ),
            ),),
        
      ]);
  }






}



