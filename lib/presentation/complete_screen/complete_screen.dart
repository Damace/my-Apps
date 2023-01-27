import 'controller/complete_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CompleteScreen extends GetWidget<CompleteController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgCheckmark,
                          height: getVerticalSize(97.00),
                          width: getHorizontalSize(87.00),
                          margin: getMargin(top: 157)),
                      Container(
                          width: getHorizontalSize(278.00),
                          margin: getMargin(top: 40),
                          child: Text("msg_order_completed".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular18
                                  .copyWith(height: getVerticalSize(1.11)))),
                      Spacer(),
                      CustomButton(
                          height: 52,
                          width: 343,
                          text: "lbl_my_orders".tr,
                          onTap: onTapMyorders)
                    ]))));
  }

  onTapMyorders() {
    Get.toNamed(AppRoutes.trackingOrderScreen);
  }
}
