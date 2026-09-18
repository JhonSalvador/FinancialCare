import '../app_database.dart';

import '../../models/transaction_model.dart';

class TransactionsRepository {
  Future<int> insertTransaction(TransactionModel transaction) async {
    final db = await AppDatabase.database;

    return await db.insert('transactions', transaction.toMap());
  }

  Future<List<TransactionModel>> getTransactions() async {
    final db = await AppDatabase.database;

    final result = await db.query(
      'transactions',

      orderBy: 'transactionDate DESC',
    );

    return result.map((map) => TransactionModel.fromMap(map)).toList();
  }
}
