import 'package:etherum_wallet/app/data/provider/api.dart';
import 'package:etherum_wallet/app/data/services/app_config/service.dart';
import 'package:etherum_wallet/app/modules/home/controller.dart';
import 'package:etherum_wallet/app/modules/home/repository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() async {
    await Get.putAsync(() => AppConfigService().init());

    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(MyApi())));
  }
}
