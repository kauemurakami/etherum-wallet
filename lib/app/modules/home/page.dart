import 'package:etherum_wallet/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (_, __) => ListTile(
                      title: Text('Todos'),
                    )),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(flex: 5, child: TextField()),
                Expanded(
                  flex: 1,
                  child: MaterialButton(
                    onPressed: () => '',
                    child: Text('ADD'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
