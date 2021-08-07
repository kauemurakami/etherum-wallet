import 'package:etherum_wallet/app/modules/initial/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('InitialPage')),
        body: SafeArea(child: Text('InitialController')));
  }
}
