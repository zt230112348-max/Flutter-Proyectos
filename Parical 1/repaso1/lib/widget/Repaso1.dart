import 'package:flutter/material.dart';

class Repaso1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Clase();
  }
}

class Clase extends State<Repaso1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Titulo"), backgroundColor: Colors.blueGrey),
      body: Column(
        children: [
          Expanded(
            flex: 2, //aumenta proporcionalmente el tamaño
            //abarca el espacio considerando el tamaño del dispositivo
            child: Container(
              padding: EdgeInsets.all(20), //Margen
              color: Colors.teal,

              width: double.infinity, //ancho
              child: Center(
                child: Text(
                  'Hola Mundo',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 24,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20), //Margen
              color: Colors.grey,

              width: double.infinity, //ancho
              child: Center(
                child: Text(
                  'que hace',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 24,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20), //Margen
              color: Colors.black87,

              width: double.infinity, //ancho
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ola de nuevo grrr',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 24,
                        color: Colors.white38,
                      ),
                    ),
                    Text(
                      'ola de nuevo grrr',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 24,
                        color: Colors.white38,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
