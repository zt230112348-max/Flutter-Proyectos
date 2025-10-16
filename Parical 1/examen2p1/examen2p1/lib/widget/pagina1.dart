import 'package:flutter/material.dart';

class Pagina1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Otra();
  }
}

class Otra extends State<Pagina1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Examen 2 del Parcial 1"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Hola, voy a reprobrar el examen",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.greenAccent,
              child: Center(
                child: ElevatedButton(onPressed: () {}, child: Text("Holi")),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Soy una caja de texto",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Soy una caja de texto",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Soy una caja de texto",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Soy una caja de texto",
                      ),
                    ),
                  ),
                ],
              ),
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
