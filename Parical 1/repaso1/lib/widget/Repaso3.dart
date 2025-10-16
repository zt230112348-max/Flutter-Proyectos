import 'package:flutter/material.dart';

class Repaso3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Clase();
  }
}

class Clase extends State<Repaso3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica con Card'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(25),
          child: Card(
            //agregar formulario
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(5),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ), // añade bordes al limite del Card
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: TextField(
                        //caja de texto
                        decoration: InputDecoration(
                          border: OutlineInputBorder(), //añade un borde
                          labelText: 'Escribe el usuario',
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      width: double.infinity,
                      child: TextField(
                        //caja de texto
                        decoration: InputDecoration(
                          border: OutlineInputBorder(), //añade un borde
                          labelText: 'Escribe la contraseña',
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Aceptar'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
