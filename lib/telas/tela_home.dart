import 'package:flutter/material.dart';
import 'tela_novo_relato.dart';
import 'tela_historico.dart';

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diário Emocional'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('➕ Novo Relato'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaNovoRelato()),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('📜 Histórico'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaHistorico()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
