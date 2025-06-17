import 'package:flutter/material.dart';
import 'telas/tela_home.dart';

void main() {
  runApp(const DiarioEmocionalApp());
}

class DiarioEmocionalApp extends StatelessWidget {
  const DiarioEmocionalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diário Emocional',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const TelaHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
