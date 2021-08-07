import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class IconButtonWidget extends Container {
  final callback, icon, color;
  final String? label;
  IconButtonWidget({this.label, this.callback, this.icon, this.color});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: this.color,
      shape: Vx.roundedSm,
      onPressed: () => this.callback(),
      child: Row(
        children: [
          Icon(
            this.icon,
            color: Colors.white,
            semanticLabel: this.label,
          ),
          "${this.label}".text.white.make()
        ],
      ),
    ).h(50);
  }
}
