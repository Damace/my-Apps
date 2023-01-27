import '../order_status_screen/widgets/order_status_item_widget.dart';
import 'controller/order_status_controller.dart';
import 'models/order_status_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OrderStatusScreen extends GetWidget<OrderStatusController> {
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
                    onTap: onTapArrowleft12),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_order_status".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgUnsplashvfrcrteqkl8,
                          height: getVerticalSize(227.00),
                          width: getHorizontalSize(343.00),
                          radius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(getHorizontalSize(12.00)),
                              topRight:
                                  Radius.circular(getHorizontalSize(12.00)))),
                      Container(
                          padding: getPadding(
                              left: 30, top: 9, right: 30, bottom: 9),
                          decoration: AppDecoration.fillBlack900.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL12),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClock30x30,
                                    height: getSize(30.00),
                                    width: getSize(30.00),
                                    margin: getMargin(top: 7, bottom: 6)),
                                Padding(
                                    padding: getPadding(
                                        left: 16, right: 104, bottom: 2),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_delivered".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular16WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          0.83))),
                                          Text("msg_drinks_june_07".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsLight12
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.11)))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 39, top: 4, right: 133),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.orderStatusModelObj.value
                                  .orderStatusItemList.length,
                              itemBuilder: (context, index) {
                                OrderStatusItemModel model = controller
                                    .orderStatusModelObj
                                    .value
                                    .orderStatusItemList[index];
                                return OrderStatusItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 46),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: 52,
                      width: 343,
                      text: "msg_confirm_deliver".tr,
                      onTap: onTapConfirmdeliveryOne)
                ]))));
  }

  onTapConfirmdeliveryOne() {
    Get.toNamed(AppRoutes.settingsScreen);
  }

  onTapArrowleft12() {
    Get.back();
  }
}
