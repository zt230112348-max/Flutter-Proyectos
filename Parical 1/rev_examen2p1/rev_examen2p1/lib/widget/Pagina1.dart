import 'package:flutter/material.dart';
import 'package:rev_examen2p1/widget/Pagina2.dart';

class Pagina1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Disenio();
  }
}

class Disenio extends State<Pagina1> {
  TextEditingController nun1 = TextEditingController();
  TextEditingController nun2 = TextEditingController();
  TextEditingController nun3 = TextEditingController();
  TextEditingController nun4 = TextEditingController();

  void enviar() {
    final double c1 = double.tryParse(nun1.text) ?? 0; //double permite numeros
    final double c2 =
        double.tryParse(nun1.text) ?? 0; //tryparse intenta convertir los datos
    final double c3 =
        double.tryParse(nun1.text) ??
        0; // el parametro "??" permite que si hay un error lo convierta en 0
    final double c4 =
        double.tryParse(nun1.text) ??
        0; // tambien "??" permite que si no se asigna un valor le asigune un 0

    Navigator.push(
      context,
      MaterialPageRoute(
        //genera una ruta hacia la pagina indicada
        builder: (context) => Pagina2(
          //ruta indicada a pagina2
          c1: c1,
          c2: c2,
          c3: c3,
          c4: c4,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Pagina 1'), backgroundColor: Colors.blueGrey),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.red,
              child: Center(child: Text('Examen')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(onPressed: () {}, child: Text('enviar')),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.yellow,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: nun1,
                        decoration: InputDecoration(
                          labelText: 'Escribe un numero',
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: nun2,
                        decoration: InputDecoration(
                          labelText: 'Escribe un numero',
                        ),
                      ),
                      TextField(
                        controller: nun3,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Escribe un numero',
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: nun4,
                        decoration: InputDecoration(
                          labelText: 'Escribe un numero',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
