import 'controller/onbording_three_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OnbordingThreeScreen extends GetWidget<OnbordingThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgUnsplashkj6lggcez4m,
                      height: getVerticalSize(767.00),
                      width: getHorizontalSize(375.00),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: size.width,
                          padding: getPadding(top: 5, bottom: 5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup2430),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(56.00),
                                    leadingWidth: 56,
                                    leading: AppbarImage(
                                        height: getSize(40.00),
                                        width: getSize(40.00),
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: getMargin(left: 16),
                                        onTap: onTapArrowleft1),
                                    title: AppbarSubtitle1(
                                        text: "lbl_get_started".tr,
                                        margin: getMargin(left: 199))),
                                Spacer(),
                                Text("lbl_all_for_you".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium24.copyWith(
                                        height: getVerticalSize(0.92))),
                                Container(
                                    width: getHorizontalSize(285.00),
                                    margin: getMargin(top: 14),
                                    child: Text("msg_we_always_try_p".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtPoppinsRegular14
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.24)))),
                                Padding(
                                    padding: getPadding(top: 39, bottom: 46),
                                    child: Container(
                                        height: getSize(80.00),
                                        width: getSize(80.00),
                                        child: CircularProgressIndicator(
                                            value: 0.5,
                                            backgroundColor:
                                                ColorConstant.gray10001,
                                            color: ColorConstant.gray10001)))
                              ])))
                ]))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
