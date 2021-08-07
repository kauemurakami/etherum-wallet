import 'package:etherum_wallet/app/modules/home/repository.dart';
import 'package:etherum_wallet/core/values/keys.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController(this.repository);
  final data = false.obs;
  final val = 0.0.obs;
  final amount = 0.0.obs;

  @override
  void onInit() {
    this.getBalance();
    super.onInit();
  }

  changeValue(v) => this.val.value = v;
  getBalance() async {
    this.data.value = false;
    await this
        .repository
        .getBalance(addressAccount)
        .then((data) => this.amount.value = data.toDouble());
    this.data.value = true;
  }

  deposit() async {}
  withdraw() async {}
}
