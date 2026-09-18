import 'package:flutter/material.dart';
import 'controllers/financeiro_controller.dart';
import '../../../models/account_model.dart';

class FinanceiroPage extends StatefulWidget {
  const FinanceiroPage({super.key});

  @override
  State<FinanceiroPage> createState() => _FinanceiroPageState();
}

class _FinanceiroPageState extends State<FinanceiroPage> {
  final controller = FinanceiroController();

  late Future<List<AccountModel>> accounts;

  @override
  void initState() {
    super.initState();

    accounts = controller.getAccounts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Financeiro")),

      body: FutureBuilder(
        future: accounts,

        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final data = snapshot.data!;

          return ListView.builder(
            padding: const EdgeInsets.all(16),

            itemCount: data.length,

            itemBuilder: (context, index) {
              final account = data[index];

              return Card(
                child: ListTile(
                  leading: const Icon(Icons.account_balance_wallet),

                  title: Text(account.name),

                  subtitle: Text(account.institution),

                  trailing: Text(
                    "R\$ ${account.initialBalance.toStringAsFixed(2)}",

                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
