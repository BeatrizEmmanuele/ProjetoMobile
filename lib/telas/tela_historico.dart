import 'package:flutter/material.dart';

class TelaHistorico extends StatelessWidget {
  const TelaHistorico({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de relatos simulada
    final List<Map<String, String>> relatos = [
  {'data': '2024-06-15', 'texto': 'Dia feliz, foi muito bom!', 'sentimento': 'Positivo'},
  {'data': '2024-06-14', 'texto': 'Hoje foi bem estressante.', 'sentimento': 'Negativo'},
  {'data': '2024-06-13', 'texto': 'Um dia normal, sem novidades.', 'sentimento': 'Neutro'},
  {'data': '2024-06-12', 'texto': 'Recebi boas notícias no trabalho.', 'sentimento': 'Positivo'},
  {'data': '2024-06-11', 'texto': 'Me senti cansado e desanimado o dia todo.', 'sentimento': 'Negativo'},
  {'data': '2024-06-10', 'texto': 'Passei tempo com a família, foi tranquilo.', 'sentimento': 'Neutro'},
  {'data': '2024-06-09', 'texto': 'Consegui finalizar um projeto importante!', 'sentimento': 'Positivo'},
  {'data': '2024-06-08', 'texto': 'Tive uma discussão chata com um amigo.', 'sentimento': 'Negativo'},
  {'data': '2024-06-07', 'texto': 'Acordei sem muita energia, dia comum.', 'sentimento': 'Neutro'},
  {'data': '2024-06-06', 'texto': 'Fui reconhecido pelo meu esforço.', 'sentimento': 'Positivo'},
  {'data': '2024-06-05', 'texto': 'Me senti sobrecarregado e estressado.', 'sentimento': 'Negativo'},
];


    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Relatos'),
      ),
      body: ListView.builder(
        itemCount: relatos.length,
        itemBuilder: (context, index) {
          final relato = relatos[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(relato['texto']!),
              subtitle: Text('Data: ${relato['data']}'),
              trailing: Text(relato['sentimento']!),
            ),
          );
        },
      ),
    );
  }
}
