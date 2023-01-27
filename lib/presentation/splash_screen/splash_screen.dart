import 'controller/splash_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                padding: getPadding(top: 171),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgBag11,
                          height: getSize(191.00),
                          width: getSize(191.00)),
                      Padding(
                          padding: getPadding(top: 25, bottom: 5),
                          child: Text("lbl_fashionista".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtQuicksandRegular32.copyWith(
                                  letterSpacing: getHorizontalSize(1.00),
                                  height: getVerticalSize(1.30))))
                    ]))));
  }
}
