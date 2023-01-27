import 'controller/logout_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogoutBottomsheet extends StatelessWidget {
  LogoutBottomsheet(this.controller);

  LogoutController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: size.width,
            padding: getPadding(left: 16, top: 40, right: 16, bottom: 40),
            decoration: AppDecoration.fillWhiteA700
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: getPadding(top: 2),
                      child: Text("lbl_alert".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium25
                              .copyWith(height: getVerticalSize(0.67)))),
                  Container(
                      width: getHorizontalSize(189.00),
                      margin: getMargin(top: 7),
                      child: Text("msg_do_you_want_to".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsRegular15
                              .copyWith(height: getVerticalSize(1.02)))),
                  Padding(
                      padding: getPadding(top: 47),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                                height: 52,
                                width: 164,
                                text: "lbl_yes".tr,
                                onTap: onTapYes),
                            CustomButton(
                                height: 52,
                                width: 163,
                                text: "lbl_no".tr,
                                variant: ButtonVariant.FillGray200,
                                padding: ButtonPadding.PaddingAll15,
                                fontStyle:
                                    ButtonFontStyle.PoppinsMedium16Black900,
                                onTap: onTapNo)
                          ]))
                ])));
  }

  onTapYes() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapNo() {
    Get.toNamed(AppRoutes.profileScreen);
  }
}
