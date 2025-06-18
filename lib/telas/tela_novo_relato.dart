import 'package:flutter/material.dart';
import '../theme/cores.dart';

class TelaNovoRelato extends StatefulWidget {
  const TelaNovoRelato({super.key});

  @override
  State<TelaNovoRelato> createState() => _TelaNovoRelatoState();
}

class _TelaNovoRelatoState extends State<TelaNovoRelato> {
  final TextEditingController _relatoController = TextEditingController();
  String _sentimento = '';

  void analisarSentimento(String texto) {
    // Simulação de análise de sentimento
    if (texto.contains('feliz') || texto.contains('bom')) {
      _sentimento = 'Positivo';
    } else if (texto.contains('triste') || texto.contains('ruim')) {
      _sentimento = 'Negativo';
    } else {
      _sentimento = 'Neutro';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text(
        'Novo Relato',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: AppColors.verdeEscuro,
      iconTheme: const IconThemeData(color: Colors.white), // deixa o botão de voltar branco
    ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _relatoController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Como foi seu dia?',
              ),
              maxLines: 6,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Analisar e Salvar'),
              onPressed: () {
                setState(() {
                  analisarSentimento(_relatoController.text);
                });

                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Relato Salvo'),
                    content: Text('Sentimento detectado: $_sentimento'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
