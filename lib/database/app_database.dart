import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'tables/accounts_table.dart';
import 'tables/transactions_table.dart';

class AppDatabase {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();

    return _database!;
  }

  static Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'personal_finance.db');

    return await openDatabase(
      path,

      version: 2,

      onCreate: (db, version) async {
        await db.execute(AccountsTable.create);
        await db.execute(TransactionsTable.create);
      },

      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          await db.execute(TransactionsTable.create);
        }
      },
    );
  }
}
