import '../../../database/repositories/transactions_repository.dart';

import '../../../models/transaction_model.dart';

class TransacoesController {
  final repository = TransactionsRepository();

  Future<List<TransactionModel>> getTransactions() async {
    return await repository.getTransactions();
  }
}
