import 'package:flutter/material.dart';

class Multiplicacion extends StatefulWidget {
  const Multiplicacion({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Body();
  }
}

class Body extends State<Multiplicacion> {
  //varibales
  final TextEditingController variable1 = TextEditingController();
  final TextEditingController variable2 = TextEditingController();
  double resultado = 0;

  bool validacion(String validar) {
    return RegExp(r'^-\d+$').hasMatch(validar);
  }

  //funcion
  void multi() {
    final double num1 = double.tryParse(variable1.text) ?? 0;
    final double num2 = double.tryParse(variable2.text) ?? 0;

    // if (validacion(variable1.text) && validacion(variable2.text)) {
    // restar();
    //} else {
    //showDialog(
    //context: context,
    //builder: (context) {
    //return AlertDialog(
    //title: Text('Entrada invalida'),
    //content: Text('Ingresa solamente numeros '),
    //);
    // },
    //);
    // }
    setState(() {
      resultado = num1 * num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: variable1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Numero1'),
          ),
          SizedBox(height: 10),
          TextField(
            controller: variable2,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Numero2'),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: multi, child: Text('Multiplicar')),
          SizedBox(height: 20),
          Text('Resultado: $resultado'),
        ],
      ),
    );
  }
}
