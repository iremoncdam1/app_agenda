import 'package:flutter/material.dart';

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Center(
        child: Card(
          
          child: Text(
            //greetingMessage(),
            "${getCurrentDate()} - ${greetingMessage()}",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            //style: TextStyle(fontWeight: FontWeight.bold),
          ),
          
        ),
      ),
    );
  }
}

String greetingMessage() {
  var timeNow = DateTime.now().hour;

  if (timeNow <= 11.59) {
    return 'Egun on';
  } else if (timeNow > 12 && timeNow < 21) {
    return 'Arratsalde on';
  } else {
    return 'Gabon';
  }
}

String getCurrentDate() {
  var date = DateTime.now().toString();

  var dateParse = DateTime.parse(date);

  var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";
  return formattedDate.toString();
}