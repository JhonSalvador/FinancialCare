import 'package:flutter/material.dart';
import 'controllers/transacoes_controller.dart';
import 'widgets/transaction_card.dart';
import '../../../models/transaction_model.dart';

class TransacoesPage extends StatefulWidget {
  const TransacoesPage({super.key});

  @override
  State<TransacoesPage> createState() => _TransacoesPageState();
}

class _TransacoesPageState extends State<TransacoesPage> {
  final controller = TransacoesController();

  late Future<List<TransactionModel>> transactions;

  @override
  void initState() {
    super.initState();

    transactions = controller.getTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lançamentos")),

      body: FutureBuilder(
        future: transactions,

        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final data = snapshot.data!;

          return ListView.builder(
            padding: const EdgeInsets.all(16),

            itemCount: data.length,

            itemBuilder: (context, index) {
              return TransactionCard(transaction: data[index]);
            },
          );
        },
      ),
    );
  }
}
