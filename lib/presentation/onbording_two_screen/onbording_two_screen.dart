import 'controller/onbording_two_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OnbordingTwoScreen extends GetWidget<OnbordingTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(40.00),
                    width: getSize(40.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 5, bottom: 5),
                    onTap: onTapArrowleft),
                actions: [
                  AppbarSubtitle1(
                      text: "lbl_skip".tr,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 9),
                      onTap: onTapSkip)
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(top: 50),
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnbordingtwo),
                        fit: BoxFit.cover)),
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 50, top: 51, right: 50, bottom: 51),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          Text("lbl_latest_style".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium24
                                  .copyWith(height: getVerticalSize(0.92))),
                          Container(
                              width: getHorizontalSize(275.00),
                              margin: getMargin(top: 11),
                              child: Text("msg_the_latest_styl".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular14.copyWith(
                                      height: getVerticalSize(1.24)))),
                          Padding(
                              padding: getPadding(top: 39),
                              child: Container(
                                  height: getSize(80.00),
                                  width: getSize(80.00),
                                  child: CircularProgressIndicator(
                                      value: 0.5,
                                      backgroundColor: ColorConstant.gray10001,
                                      color: ColorConstant.gray10001)))
                        ])))));
  }

  onTapArrowleft() {
    Get.back();
  }

  onTapSkip() {
    Get.toNamed(AppRoutes.signUpSignInScreen);
  }
}
