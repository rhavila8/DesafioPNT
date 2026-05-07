import 'package:flutter/material.dart';

class TerceiraScreen extends StatelessWidget {
  const TerceiraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terceira Tela'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar para Tela Inicial'),
        ),
      ),
    );
  }
}