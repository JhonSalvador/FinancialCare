import 'repositories/transactions_repository.dart';
import '../../models/transaction_model.dart';

class TransactionSeed {
  static Future<void> create() async {
    final repository = TransactionsRepository();

    final transactions = await repository.getTransactions();

    if (transactions.isNotEmpty) {
      return;
    }

    // Salário

    await repository.insertTransaction(
      TransactionModel(
        accountId: 1,

        description: "Salário Setembro",

        category: "Salário",

        amount: 5000,

        type: "INCOME",

        transactionDate: DateTime.now(),

        createdAt: DateTime.now(),
      ),
    );

    // Mercado

    await repository.insertTransaction(
      TransactionModel(
        accountId: 1,

        description: "Supermercado",

        category: "Alimentação",

        amount: 350,

        type: "EXPENSE",

        transactionDate: DateTime.now(),

        createdAt: DateTime.now(),
      ),
    );

    // Aporte

    await repository.insertTransaction(
      TransactionModel(
        accountId: 2,

        description: "Aporte Caixinha CDI",

        category: "Investimento",

        amount: 1000,

        type: "TRANSFER",

        transactionDate: DateTime.now(),

        createdAt: DateTime.now(),
      ),
    );
  }
}
