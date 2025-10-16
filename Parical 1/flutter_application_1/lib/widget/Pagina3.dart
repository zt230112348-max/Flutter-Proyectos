import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pagina2'), backgroundColor: Colors.cyan),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.cyanAccent,
            padding: EdgeInsets.all(25),
            child: Text(
              'Hola Mundo',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.cyanAccent,
            padding: EdgeInsets.all(25),
            child: Text(
              'Hola Mundo',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.cyanAccent,
              padding: EdgeInsets.all(25),
              child: Text(
                'Notas',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
