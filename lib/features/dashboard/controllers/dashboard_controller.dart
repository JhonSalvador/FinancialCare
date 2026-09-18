import '../../../database/repositories/accounts_repository.dart';

class DashboardController {
  final repository = AccountsRepository();

  Future<double> getPatrimonio() async {
    return await repository.getTotalBalance();
  }
}
