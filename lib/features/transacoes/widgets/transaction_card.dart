import 'package:flutter/material.dart';
import '../../../models/transaction_model.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final type = transaction.type;

    final isExpense = type == "EXPENSE";

    return Card(
      child: ListTile(
        leading: Icon(
          isExpense ? Icons.remove_circle : Icons.add_circle,

          color: isExpense ? Colors.red : Colors.green,
        ),

        title: Text(transaction.description),

        subtitle: Text(transaction.category),

        trailing: Text(
          "R\$ ${transaction.amount.toStringAsFixed(2)}",

          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
