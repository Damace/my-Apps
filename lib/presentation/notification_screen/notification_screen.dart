import '../notification_screen/widgets/listunsplashqnuur0o5xeight_item_widget.dart';
import '../notification_screen/widgets/listunsplashqnuur0o5xeight_three_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/listunsplashqnuur0o5xeight_item_model.dart';
import 'models/listunsplashqnuur0o5xeight_three_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends GetWidget<NotificationController> {
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
                    onTap: onTapArrowleft16),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_notifications".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_today".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium18Black900
                              .copyWith(height: getVerticalSize(0.93))),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16.00));
                              },
                              itemCount: controller.notificationModelObj.value
                                  .listunsplashqnuur0o5xeightItemList.length,
                              itemBuilder: (context, index) {
                                Listunsplashqnuur0o5xeightItemModel model =
                                    controller.notificationModelObj.value
                                            .listunsplashqnuur0o5xeightItemList[
                                        index];
                                return Listunsplashqnuur0o5xeightItemWidget(
                                    model);
                              }))),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("lbl_yesterday".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18Black900
                                  .copyWith(height: getVerticalSize(0.93)))),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16.00));
                              },
                              itemCount: controller
                                  .notificationModelObj
                                  .value
                                  .listunsplashqnuur0o5xeightThreeItemList
                                  .length,
                              itemBuilder: (context, index) {
                                Listunsplashqnuur0o5xeightThreeItemModel model =
                                    controller.notificationModelObj.value
                                            .listunsplashqnuur0o5xeightThreeItemList[
                                        index];
                                return Listunsplashqnuur0o5xeightThreeItemWidget(
                                    model);
                              })))
                    ]))));
  }

  onTapArrowleft16() {
    Get.back();
  }
}
