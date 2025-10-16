import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Pagina6.dart';

class Pagina5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Disenio();
  }
}

class Disenio extends State<Pagina5> {
  String res = "Sin accion";
  final TextEditingController usuario = TextEditingController();
  final TextEditingController password = TextEditingController();
  void acccion() {
    final String us = usuario.text;
    //  final pass = password.text;
    final int pass = int.tryParse(password.text) ?? 0;

    setState(() {
      if (us == "admin" && pass == "123") {
        res = "usuario y password correctos";
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pagina6(nombre: us)),
        );
      } else {
        // res = "usuario y password incorrectos";
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Error de acceso'),
              content: Text('Usuario y/o password incorrecto'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Aceptar'),
                ),
              ],
            );
          },
        );
        res = "Otro mensaje";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), backgroundColor: Colors.blueGrey),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              color: Colors.amberAccent,
              child: Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: usuario,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: 'Usuario'),
                    ),
                    TextField(
                      controller: password,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                    SizedBox(height: 15),
                    Text('$res'),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 5, right: 5, top: 25, bottom: 25),
              width: double.infinity,
              child: ElevatedButton(onPressed: acccion, child: Text('Aceptar')),
            ),
          ),
        ],
      ),
    );
  }
}
