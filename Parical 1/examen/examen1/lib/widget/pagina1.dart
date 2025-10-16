import 'package:flutter/material.dart';

class Pagina1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Clase();
  }
}

class Clase extends State<Pagina1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('examen')),
      body: Container(
        child: Center(
          child: Text(
            'Bienvenido a mi primera app en Flutter',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
