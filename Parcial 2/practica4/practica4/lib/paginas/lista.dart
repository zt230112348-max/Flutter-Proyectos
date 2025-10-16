import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Disenio();
  }
}

class Disenio extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Image.asset('assets/k1.png'),
            //Image.asset(name),
            //Image.asset(name),
            //Image.asset(name),
          ],
        ),
      ),
    );
  }
}
