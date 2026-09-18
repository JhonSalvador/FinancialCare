import 'package:flutter/material.dart';

class InvestimentosPage extends StatelessWidget {
  const InvestimentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Investimentos")),

      body: const Center(
        child: Text("Minha carteira", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
