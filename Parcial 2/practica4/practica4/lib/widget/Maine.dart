import 'package:flutter/material.dart';
import 'package:practica4/paginas/datos.dart';
import 'package:practica4/paginas/home.dart';
import 'package:practica4/paginas/lista.dart';

class Maine extends StatefulWidget {
  const Maine({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Base();
  }
}

class Base extends State<Maine> {
  int _index = 0;

  final List<Widget> _paginas = [Home(), Lista(), Datos()];

  void _clicIndex(int i) {
    //i representa el parametro a recibir
    setState(() {
      _index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/home.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Aplicacion',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Times New Roman",
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text('oli de prueba'),
                        Text(
                          'oli de prueba por mi',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Arial Arrow",
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.snowing),
              title: Text('ola nevoso home'),
              onTap: () {
                _clicIndex(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('ola estrelloso lista'),
              onTap: () {
                _clicIndex(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.sunny),
              title: Text('ola soleado datos'),
              onTap: () {
                _clicIndex(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body:
          _paginas[_index], //indica que el body cambie segun lo que indique la variable _index
    );
  }
}
