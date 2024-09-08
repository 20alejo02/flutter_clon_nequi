import 'package:flutter/material.dart';
import 'screens/nequi_tu_plata.dart'; 
import 'themes/nequi_theme.dart'; 

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
      home: Nequituplata(), // Establece la pantalla principal
    );
  }
}
