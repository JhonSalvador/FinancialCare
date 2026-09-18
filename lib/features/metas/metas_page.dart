import 'package:flutter/material.dart';

class MetasPage extends StatelessWidget {
  const MetasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Metas")),

      body: const Center(
        child: Text("Planejamento financeiro", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
