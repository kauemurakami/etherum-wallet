import 'package:etherum_wallet/app/modules/home/binding.dart';
import 'package:etherum_wallet/app/modules/home/page.dart';
import 'package:etherum_wallet/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    initialBinding: HomeBinding(),
    initialRoute: Routes.HOME,
    getPages: AppPages.pages,
  ));
}
