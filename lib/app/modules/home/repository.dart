import 'package:etherum_wallet/app/data/provider/api.dart';

class HomeRepository {
  final MyApi api;

  HomeRepository(this.api);

  getBalance(address) => this.api.getBalance(address);
  deposit(address, args) => this.api.deposit(address, args);
  withdraw(address, args) => this.api.withdraw(address, args);
}
