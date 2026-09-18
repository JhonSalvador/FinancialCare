import '../app_database.dart';

import '../../models/account_model.dart';

class AccountsRepository {
  Future<int> insertAccount(AccountModel account) async {
    final db = await AppDatabase.database;

    return await db.insert('accounts', account.toMap());
  }

  Future<List<AccountModel>> getAccounts() async {
    final db = await AppDatabase.database;

    final result = await db.query('accounts', orderBy: 'id ASC');

    return result.map((map) => AccountModel.fromMap(map)).toList();
  }

  Future<double> getTotalBalance() async {
    final db = await AppDatabase.database;

    final result = await db.rawQuery('''
      SELECT SUM(initialBalance) AS total
      FROM accounts
      WHERE active = 1
      ''');

    return result.first['total'] == null
        ? 0
        : (result.first['total'] as num).toDouble();
  }
}
