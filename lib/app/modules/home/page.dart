import 'package:etherum_wallet/app/modules/home/controller.dart';
import 'package:etherum_wallet/app/modules/home/widgets/icons_button.dart';
import 'package:etherum_wallet/app/modules/home/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Vx.gray300,
        body: ZStack([
          VxBox()
              .blue600
              .size(context.screenWidth, context.percentHeight * 30)
              .make(),
          VStack([
            (context.percentHeight * 10).heightBox,
            "\$KCoin".text.xl4.white.bold.center.makeCentered().py16(),
            (context.percentHeight * 5).heightBox,
            VxBox(
              child: Obx(
                () => VStack([
                  "Balance".text.gray700.xl2.semiBold.makeCentered(),
                  10.heightBox,
                  this.controller.data.value
                      ? "\$ ${this.controller.val.value}"
                          .text
                          .bold
                          .xl6
                          .makeCentered()
                          .shimmer()
                      : CircularProgressIndicator().centered()
                ]),
              ),
            )
                .p16
                .white
                .size(context.screenWidth, context.percentHeight * 18)
                .rounded
                .shadowXl
                .make()
                .p16(),
            30.heightBox,
            SliderWidget(
              min: 0,
              max: 100,
              sliderHeight: 40,
              fullWidth: false,
            ).centered(),
            HStack(
              [
                IconButtonWidget(
                  color: Colors.blue,
                  label: 'Refresh',
                  callback: () => '',
                  icon: Icons.refresh,
                ),
                IconButtonWidget(
                  color: Colors.green,
                  label: 'Deposit',
                  callback: () => '',
                  icon: Icons.add,
                ),
                IconButtonWidget(
                  color: Colors.red,
                  label: 'Withdraw',
                  callback: () => '',
                  icon: Icons.remove,
                ),
              ],
              alignment: MainAxisAlignment.spaceAround,
              axisSize: MainAxisSize.max,
            ).p16()
          ])
        ]));
  }
}
