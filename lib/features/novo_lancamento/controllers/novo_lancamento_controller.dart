import '../../../database/repositories/transactions_repository.dart';

import '../../../models/transaction_model.dart';

class NovoLancamentoController {
  final repository = TransactionsRepository();

  Future<void> saveTransaction({
    required int accountId,

    required String description,

    required String category,

    required double amount,

    required String type,
  }) async {
    final transaction = TransactionModel(
      accountId: accountId,

      description: description,

      category: category,

      amount: amount,

      type: type,

      transactionDate: DateTime.now(),

      createdAt: DateTime.now(),
    );

    await repository.insertTransaction(transaction);
  }
}
