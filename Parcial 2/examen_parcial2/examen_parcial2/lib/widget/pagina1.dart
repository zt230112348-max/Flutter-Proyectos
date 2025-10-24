import 'package:flutter/material.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({super.key});
  @override
  State<StatefulWidget> createState() {
    return Base();
  }
}

class Base extends State<Pagina1> {
  final _llave = GlobalKey<FormState>();
  TextEditingController numeros = TextEditingController();
  TextEditingController sexo = TextEditingController();
  TextEditingController nombre = TextEditingController();

  String? _validarTelefono(String? value) {
    if (value == null || value.isEmpty) {
      return 'Escribe un Telefono';
    }
    if (!(value.length == 10)) {
      return 'El telefono debe ser 10 digitos';
    }
    final exp = RegExp(r'^[0-9]*$');
    if (!exp.hasMatch(value)) {
      return 'Ingresa solo numeros';
    }
    return null;
  }

  void validar() {
    if (_llave.currentState?.validate() ?? false) {
      String n = nombre.text;
      int e = int.tryParse(numeros.text) ?? 0;
      String s = sexo.text;
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Datos incorrectos')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('otro examen reprobado, parcial 2')),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: numeros,
                      decoration: InputDecoration(
                        labelText: "Digita 5 a 10 numeros",
                      ),
                      validator: _validarTelefono,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Escribe tu sexo, ya sea 'F' 'f' o 'H' 'h'",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(""),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Escribe tu nombre',
                      ),
                    ),
                    ElevatedButton(onPressed: validar, child: Text("Aceptar")),
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
