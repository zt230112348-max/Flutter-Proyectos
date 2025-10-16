import 'package:flutter/material.dart';

class Pagina6 extends StatefulWidget {
  final String nombre;
  Pagina6({required this.nombre});

  @override
  State<StatefulWidget> createState() {
    return Disenio();
  }
}

class Disenio extends State<Pagina6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), backgroundColor: Colors.blueGrey),
      body: Center(child: Text('data')),
    );
  }
}
