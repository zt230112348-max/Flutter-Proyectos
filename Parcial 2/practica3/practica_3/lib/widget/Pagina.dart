import 'package:flutter/material.dart';
import 'package:practica_3/widget/derecho.dart';
import 'package:practica_3/widget/izquierdo.dart';
import 'package:practica_3/widget/centro.dart';

class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Disenio();
  }
}

class Disenio extends State<Pagina> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ButtonNavigatiorBar',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: _index == 0 ? Izquierdo() : (_index == 1 ? Centro() : Derecho()),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purpleAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.airlines),
            label: 'Izquierdo',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add_call), label: 'Centro'),
          BottomNavigationBarItem(icon: Icon(Icons.zoom_out), label: 'Derecho'),
        ],
        currentIndex: _index,
        selectedItemColor: Colors.deepOrangeAccent,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}

//4 botones validados de suma, resta, multiplicación y división
