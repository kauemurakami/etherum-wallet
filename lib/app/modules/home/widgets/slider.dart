import 'package:etherum_wallet/app/modules/home/controller.dart';
import 'package:etherum_wallet/app/modules/home/widgets/base_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderWidget extends Container {
  final controller = Get.find<HomeController>();

  final double sliderHeight;
  final int min;
  final int max;
  final fullWidth;

  SliderWidget(
      {this.sliderHeight = 50,
      this.max = 10,
      this.min = 0,
      this.fullWidth = false});
  @override
  Widget build(BuildContext context) {
    double paddingFactor = .2;

    return Container(
      width: this.fullWidth ? double.infinity : (this.sliderHeight) * 5.5,
      height: (this.sliderHeight),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all(
          Radius.circular((this.sliderHeight * .3)),
        ),
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF00c6ff),
              const Color(0xFF0072ff),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.00),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(this.sliderHeight * paddingFactor, 2,
            this.sliderHeight * paddingFactor, 2),
        child: Row(
          children: <Widget>[
            Text(
              '${this.min}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: this.sliderHeight * .3,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: this.sliderHeight * .1,
            ),
            Expanded(
              child: Center(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white.withOpacity(1),
                    inactiveTrackColor: Colors.white.withOpacity(.5),

                    trackHeight: 4.0,
                    thumbShape: CustomSliderThumbRect(
                      thumbRadius: this.sliderHeight * .4,
                      min: this.min,
                      max: this.max,
                    ),
                    overlayColor: Colors.white.withOpacity(.4),
                    //valueIndicatorColor: Colors.white,
                    activeTickMarkColor: Colors.white,
                    inactiveTickMarkColor: Colors.red.withOpacity(.7),
                  ),
                  child: Obx(() => Slider(
                      value: this.controller.val.value,
                      onChanged: (value) =>
                          this.controller.changeValue(value))),
                ),
              ),
            ),
            SizedBox(
              width: this.sliderHeight * .1,
            ),
            Text(
              '${this.max}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: this.sliderHeight * .3,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
