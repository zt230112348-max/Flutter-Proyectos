import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Pagina1.dart';
import 'package:flutter_application_1/widget/Pagina2.dart';
import 'package:flutter_application_1/widget/Pagina3.dart';
import 'package:flutter_application_1/widget/Pagina4.dart';
import 'package:flutter_application_1/widget/Pagina5.dart';
import 'package:flutter_application_1/widget/Pagina6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Pagina6());
  }
}
