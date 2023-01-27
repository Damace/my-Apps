import 'controller/sign_up_sign_in_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpSignInScreen extends GetWidget<SignUpSignInController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 50, right: 16, bottom: 50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgUnsplashw7b3edub2i,
                          height: getSize(299.00),
                          width: getSize(299.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(149.00)),
                          margin: getMargin(top: 23)),
                      Container(
                          width: getHorizontalSize(186.00),
                          margin: getMargin(top: 81),
                          child: Text("msg_discover_your_s".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsMedium25
                                  .copyWith(height: getVerticalSize(0.88)))),
                      Container(
                          width: getHorizontalSize(304.00),
                          margin: getMargin(top: 13),
                          child: Text("msg_it_is_a_long_es".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular15
                                  .copyWith(height: getVerticalSize(1.16)))),
                      Padding(
                          padding: getPadding(top: 48),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: 52,
                                    width: 164,
                                    text: "lbl_register".tr,
                                    onTap: onTapRegister),
                                CustomButton(
                                    height: 52,
                                    width: 163,
                                    text: "lbl_sign_in".tr,
                                    variant: ButtonVariant.FillGray200,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsMedium16Black900,
                                    onTap: onTapSignin)
                              ]))
                    ]))));
  }

  onTapRegister() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
