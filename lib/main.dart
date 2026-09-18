import 'package:flutter/material.dart';

import 'database/database_seed.dart';
import 'app/app.dart';
import 'database/app_database.dart';
import 'database/transaction_seed.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppDatabase.database;

  await DatabaseSeed.createInitialData();

  await TransactionSeed.create();

  runApp(const PersonalFinanceApp());
}
