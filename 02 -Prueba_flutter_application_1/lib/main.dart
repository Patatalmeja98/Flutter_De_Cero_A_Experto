import 'package:flutter/material.dart';
import 'package:flutter_application_1/Presentation/screens/Counter_Funcions_Screan.dart';
//import 'package:flutter_application_1/Presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.pink),
        home: const CounterFunctionsScreen());
  }
}
