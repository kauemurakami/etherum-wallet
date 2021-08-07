import 'package:etherum_wallet/app/modules/home/page.dart';
import 'package:etherum_wallet/app/modules/initial/binding.dart';
import 'package:etherum_wallet/app/modules/initial/page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
        name: Routes.INITIAL,
        page: () => InitialPage(),
        binding: InitialBinding()),
  ];
}
