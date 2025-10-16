import 'package:flutter/material.dart';

class Repaso2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Clase();
  }
}

class Clase extends State<Repaso2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Titulo"), backgroundColor: Colors.blueGrey),
      body: ListView(
        //Lo acomoda automaticamente sin importar el tamaño
        children: [
          Column(
            children: [
              Container(
                height: 400,
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

              Container(
                height: 400,
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

              Container(
                height: 200,
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
            ],
          ),
        ],
      ),
    );
  }
}
