import 'package:laboratorio/login.dart';
import 'package:laboratorio/menu.dart';
import 'package:flutter/material.dart';

// Material, es un template de diseño

void main() =>
    runApp(MyApp()); // funcion de arranque (solo va en el archivo main.dart)

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //crear una clase con herencia del template

  @override
  Widget build(BuildContext context) {
    //construir el widget principal
    return MaterialApp(
      title: "Laboratorio",
      routes: {
        "/": (context) => LoginScreen(),
        "/menu": (context) => Menu(),
      },
    ); //llamado al template
  }
}
