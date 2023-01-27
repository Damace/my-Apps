import 'controller/settings_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(40.00),
                    width: getSize(40.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 5, bottom: 5),
                    onTap: onTapArrowleft15),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_settings".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 16, top: 14, right: 16, bottom: 14),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Container(
                                    height: getSize(64.00),
                                    width: getSize(64.00),
                                    child:
                                        CircularProgressIndicator(value: 0.5))),
                            Padding(
                                padding:
                                    getPadding(left: 22, top: 6, bottom: 8),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_anne_christion".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular18Black900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(0.74))),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_premium_user".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Gray500
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          0.71))))
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowrightBlack900,
                                height: getSize(16.00),
                                width: getSize(16.00),
                                margin: getMargin(top: 24, bottom: 25))
                          ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Text("lbl_settings".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18Black900
                                  .copyWith(height: getVerticalSize(0.67)))),
                      Container(
                          margin: getMargin(top: 9),
                          padding: getPadding(
                              left: 16, top: 13, right: 16, bottom: 13),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgNotification24x24,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 24, bottom: 1),
                                    child: Text("lbl_notifications".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16
                                            .copyWith(
                                                height:
                                                    getVerticalSize(0.63)))),
                                Spacer(),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(top: 3, bottom: 4),
                                    value: controller.isSelectedSwitch.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    }))
                              ])),
                      Container(
                          margin: getMargin(top: 15),
                          padding: getPadding(
                              left: 16, top: 12, right: 16, bottom: 12),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgTimeline,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(top: 1, bottom: 2)),
                                Padding(
                                    padding: getPadding(left: 24, top: 3),
                                    child: Text("lbl_tracking_order".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16
                                            .copyWith(
                                                height:
                                                    getVerticalSize(0.63)))),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 5, bottom: 6))
                              ])),
                      Container(
                          margin: getMargin(top: 15),
                          padding: getPadding(
                              left: 16, top: 14, right: 16, bottom: 14),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClock24x24,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 24),
                                    child: Text("lbl_order_status".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16
                                            .copyWith(
                                                height:
                                                    getVerticalSize(0.63)))),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 4, bottom: 5))
                              ])),
                      Container(
                          margin: getMargin(top: 15),
                          padding: getPadding(
                              left: 16, top: 12, right: 16, bottom: 12),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMinimize,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(top: 1, bottom: 2)),
                                Padding(
                                    padding: getPadding(left: 24, top: 4),
                                    child: Text("lbl_language".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16
                                            .copyWith(
                                                height:
                                                    getVerticalSize(0.63)))),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 5, bottom: 6))
                              ])),
                      Container(
                          margin: getMargin(top: 15, bottom: 5),
                          padding: getPadding(
                              left: 16, top: 13, right: 16, bottom: 13),
                          decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgComputer24x24,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 24, top: 1),
                                    child: Text("lbl_faqs".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16
                                            .copyWith(
                                                height:
                                                    getVerticalSize(0.63)))),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 4, bottom: 5))
                              ]))
                    ]))));
  }

  onTapArrowleft15() {
    Get.back();
  }
}
