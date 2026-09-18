import '../../../database/repositories/accounts_repository.dart';
import '../../../models/account_model.dart';

class FinanceiroController {
  final repository = AccountsRepository();

  Future<List<AccountModel>> getAccounts() async {
    return await repository.getAccounts();
  }
}
