import 'controller/onbording_one_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class OnbordingOneScreen extends GetWidget<OnbordingOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnbordingone),
                        fit: BoxFit.cover)),
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 16, top: 13, right: 16, bottom: 13),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtSkip();
                                  },
                                  child: Text("lbl_skip".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium18
                                          .copyWith(
                                              height: getVerticalSize(1.00))))),
                          Spacer(),
                          Text("lbl_cool_product".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium24
                                  .copyWith(height: getVerticalSize(0.92))),
                          Container(
                              width: getHorizontalSize(285.00),
                              margin: getMargin(top: 14),
                              child: Text("msg_we_create_produ".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular14.copyWith(
                                      height: getVerticalSize(1.24)))),
                          Padding(
                              padding: getPadding(top: 39, bottom: 37),
                              child: Container(
                                  height: getSize(80.00),
                                  width: getSize(80.00),
                                  child: CircularProgressIndicator(
                                      value: 0.5,
                                      backgroundColor: ColorConstant.gray10001,
                                      color: ColorConstant.gray10001)))
                        ])))));
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.signUpSignInScreen);
  }
}
