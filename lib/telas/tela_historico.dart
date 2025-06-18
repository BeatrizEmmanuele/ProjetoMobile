import 'package:flutter/material.dart';
import '../theme/cores.dart';

class TelaHistorico extends StatelessWidget {
  const TelaHistorico({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> relatos = [
      {'data': '2024-06-15', 'texto': 'Dia feliz, foi muito bom!', 'sentimento': 'Positivo'},
      {'data': '2024-06-14', 'texto': 'Hoje foi bem estressante.', 'sentimento': 'Negativo'},
      {'data': '2024-06-13', 'texto': 'Um dia normal, sem novidades.', 'sentimento': 'Neutro'},
      {'data': '2024-06-12', 'texto': 'Recebi boas notícias no trabalho.', 'sentimento': 'Positivo'},
      {'data': '2024-06-11', 'texto': 'Me senti cansado e desanimado.', 'sentimento': 'Negativo'},
      {'data': '2024-06-10', 'texto': 'Passei tempo com a família, foi tranquilo.', 'sentimento': 'Neutro'},
      {'data': '2024-06-09', 'texto': 'Consegui finalizar um projeto importante!', 'sentimento': 'Positivo'},
      {'data': '2024-06-08', 'texto': 'Tive uma discussão chata com um amigo.', 'sentimento': 'Negativo'},
      {'data': '2024-06-07', 'texto': 'Acordei sem muita energia, dia comum.', 'sentimento': 'Neutro'},
      {'data': '2024-06-06', 'texto': 'Fui reconhecido pelo meu esforço.', 'sentimento': 'Positivo'},
    ];

    return Scaffold(
      appBar: AppBar(
      title: const Text(
        'Histórico de Relatos',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: AppColors.verdeEscuro,
      iconTheme: const IconThemeData(color: Colors.white), // botão de voltar branco
    ),


      body: ListView.builder(
        itemCount: relatos.length,
        itemBuilder: (context, index) {
          final relato = relatos[index];
          Color sentimentoCor;

          switch (relato['sentimento']) {
            case 'Positivo':
              sentimentoCor = AppColors.verdeClaro;
              break;
            case 'Negativo':
              sentimentoCor = AppColors.laranja;
              break;
            default:
              sentimentoCor = AppColors.rosinha;
          }

          return Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              title: Text(relato['texto']!),
              subtitle: Text('Data: ${relato['data']}'),
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: sentimentoCor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  relato['sentimento']!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
