import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    //return Text('Hola mundo');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practica 1',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
            fontFamily: 'Times new Roman',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 153, 89, 255),
      ),
      body: Column(
        children: [
          Text(
            'Hola Mundo',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20), // Espacio entre el texto y el botón
          ElevatedButton(
            onPressed: () {
              // Aquí va la acción del botón
              print('Botón Aceptar presionado');
            },
            child: Text('Aceptar'),
          ),
        ],
      ),
    );
  }
}
