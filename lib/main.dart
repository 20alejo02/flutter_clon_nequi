import 'package:flutter/material.dart';
import 'screens/nequi_home.dart'; // Importa la pantalla principal
import 'themes/nequi_theme.dart'; // Importa el tema

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nequi Clone',
      theme: nequiTheme, // Aplica el tema
      home: NequiHomePage(), // Establece la pantalla principal
    );
  }
}
