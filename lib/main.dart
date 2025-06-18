import 'package:flutter/material.dart';
import 'telas/tela_home.dart';
import 'theme/cores.dart';

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
        colorScheme: ColorScheme.light(
          primary: AppColors.verdeEscuro,
          secondary: AppColors.rosinha,
          surface: AppColors.azulBemClaro, 
        ),
        scaffoldBackgroundColor: AppColors.azulBemClaro,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.verdeEscuro,
          foregroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.verdeEscuro,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
       cardTheme: CardThemeData(
       color: Colors.white,
       elevation: 4,
       margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
       shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(12),
  ),
),

      ),
      home: const TelaHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
