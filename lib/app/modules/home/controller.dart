import 'package:etherum_wallet/app/modules/home/repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController(this.repository);
  final data = false.obs;
  final val = 0.0.obs;

  changeValue(v)=> this.val.value = v;
}
