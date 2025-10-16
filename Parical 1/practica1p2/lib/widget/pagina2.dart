import 'package:flutter/material.dart';
import 'package:practica1p2/widget/pagina3.dart';

class Pagina2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Disenio();
  }
}

class Disenio extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('Examen')),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pagina3()),
                );
              },
              child: Text('Aceptar'),
            ),
          ),
        ],
      ),
    );
  }
}
