import 'package:flutter/material.dart';
import 'package:repaso1/widget/Repaso1.dart';
import 'package:repaso1/widget/Repaso2.dart';
import 'package:repaso1/widget/Repaso3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Repaso3());
  }
}
