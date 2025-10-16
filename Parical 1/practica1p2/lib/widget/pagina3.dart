import 'package:flutter/material.dart';

class Pagina3 extends StatefulWidget {
  const Pagina3({super.key});

  @override
  State<StatefulWidget> createState() {
    return Otra();
  }
}

class Otra extends State<Pagina3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Pagina 3')));
  }
}
