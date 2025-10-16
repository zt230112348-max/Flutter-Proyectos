import 'package:flutter/material.dart';
import 'package:tarea1/widget/Division.dart';
import 'package:tarea1/widget/Multi.dart';
import 'package:tarea1/widget/Suma.dart';
import 'package:tarea1/widget/Resta.dart';

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
        title: Text('Tarea', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 101, 3, 93),
      ),
      body: _index == 0
          ? Suma()
          : (_index == 1
                ? Resta()
                : (_index == 2 ? Multiplicacion() : Division())),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Suma"),
          BottomNavigationBarItem(icon: Icon(Icons.remove), label: "Resta"),
          BottomNavigationBarItem(
            icon: Icon(Icons.snowing),
            label: "Multiplicacion",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.multiple_stop),
            label: "Division",
          ),
        ],
        currentIndex: _index,
        selectedItemColor: Colors.lightBlueAccent,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
