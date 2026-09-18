import 'repositories/accounts_repository.dart';
import '../models/account_model.dart';

class DatabaseSeed {
  static Future<void> createInitialData() async {
    final repository = AccountsRepository();

    final accounts = await repository.getAccounts();

    if (accounts.isNotEmpty) {
      return;
    }

    await repository.insertAccount(
      AccountModel(
        name: "Conta Corrente",

        institution: "Nubank",

        accountType: "BANK",

        initialBalance: 0,

        active: true,

        createdAt: DateTime.now(),
      ),
    );

    await repository.insertAccount(
      AccountModel(
        name: "Caixinha 120% CDI",

        institution: "Nubank",

        accountType: "INVESTMENT",

        initialBalance: 1129.33,

        active: true,

        createdAt: DateTime.now(),
      ),
    );

    await repository.insertAccount(
      AccountModel(
        name: "NuCel 120% CDI",

        institution: "Nubank",

        accountType: "INVESTMENT",

        initialBalance: 0,

        active: true,

        createdAt: DateTime.now(),
      ),
    );

    await repository.insertAccount(
      AccountModel(
        name: "Reserva",

        institution: "Nubank",

        accountType: "INVESTMENT",

        initialBalance: 0,

        active: true,

        createdAt: DateTime.now(),
      ),
    );

    await repository.insertAccount(
      AccountModel(
        name: "Absolute Delfos FIF CIC RF LP CP",

        institution: "Fundo",

        accountType: "INVESTMENT",

        initialBalance: 300,

        active: true,

        createdAt: DateTime.now(),
      ),
    );

    await repository.insertAccount(
      AccountModel(
        name: "Tesouro Prefixado 2029",

        institution: "Tesouro Direto",

        accountType: "INVESTMENT",

        initialBalance: 96.71,

        active: true,

        createdAt: DateTime.now(),
      ),
    );
  }
}
