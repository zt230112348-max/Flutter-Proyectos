import 'package:flutter/material.dart';

class Pagina4 extends StatelessWidget {
  void acccion() {
    print('Hola Mundo');
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
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: 'Usuario'),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                    SizedBox(height: 15),
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
