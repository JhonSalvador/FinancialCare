import 'package:flutter/material.dart';

import 'controllers/novo_lancamento_controller.dart';

import 'widgets/type_selector.dart';

class NovoLancamentoPage extends StatefulWidget {
  const NovoLancamentoPage({super.key});

  @override
  State<NovoLancamentoPage> createState() => _NovoLancamentoPageState();
}

class _NovoLancamentoPageState extends State<NovoLancamentoPage> {
  final controller = NovoLancamentoController();

  final descriptionController = TextEditingController();

  final valueController = TextEditingController();

  String type = "EXPENSE";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Novo lançamento")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            TypeSelector(
              value: type,

              onChanged: (value) {
                setState(() {
                  type = value;
                });
              },
            ),

            const SizedBox(height: 20),

            TextField(
              controller: descriptionController,

              decoration: const InputDecoration(labelText: "Descrição"),
            ),

            TextField(
              controller: valueController,

              keyboardType: TextInputType.number,

              decoration: const InputDecoration(labelText: "Valor"),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () async {
                  await controller.saveTransaction(
                    accountId: 1,

                    description: descriptionController.text,

                    category: "Outros",

                    amount: double.parse(valueController.text),

                    type: type,
                  );

                  Navigator.pop(context);
                },

                child: const Text("Salvar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
