import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  final double c1;
  final double c2;
  final double c3;
  final double c4;

  const Pagina2({
    super.key,
    required this.c1,
    required this.c2,
    required this.c3,
    required this.c4,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Disenio();
  }
}

class Disenio extends State<Pagina2> {
  double promedio = 0.0;

  void initState() {
    super
        .initState(); //Super hace que se corra primero el constructor y despues este
    calcular(); //se manda a llamar el metodo calcular
  }

  void calcular() {
    promedio = (widget.c1 + widget.c2 + widget.c3 + widget.c4) / 4;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
        backgroundColor: Color.fromARGB(255, 142, 3, 216),
      ),
      body: Center(child: Text('Promedio: $promedio')),
    );
  }
}
