import '../checkout_screen/widgets/checkout_item_widget.dart';
import 'controller/checkout_controller.dart';
import 'models/checkout_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:alex_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends GetWidget<CheckoutController> {
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
                    onTap: onTapArrowleft10),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_checkout".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 20, right: 16, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_delivery_addres".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium18Black900
                              .copyWith(height: getVerticalSize(0.67))),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Row(children: [
                            CustomIconButton(
                                height: 42,
                                width: 42,
                                margin: getMargin(bottom: 2),
                                variant: IconButtonVariant.OutlineGray10001_1,
                                padding: IconButtonPadding.PaddingAll9,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgLocation42x42)),
                            Padding(
                                padding: getPadding(left: 12),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_address".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular14Black900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.05))),
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_nsw_australia".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Orange700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.05))))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("lbl_payment_mathod".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18Black900
                                  .copyWith(height: getVerticalSize(0.67)))),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16.00));
                              },
                              itemCount: controller.checkoutModelObj.value
                                  .checkoutItemList.length,
                              itemBuilder: (context, index) {
                                CheckoutItemModel model = controller
                                    .checkoutModelObj
                                    .value
                                    .checkoutItemList[index];
                                return CheckoutItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 86),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_total".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium17.copyWith(
                                        height: getVerticalSize(0.59))),
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl2".tr,
                                          style: TextStyle(
                                              color: ColorConstant.orange700,
                                              fontSize: getFontSize(17),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: getVerticalSize(0.59))),
                                      TextSpan(
                                          text: "lbl_144_942".tr,
                                          style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: getFontSize(17),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: getVerticalSize(0.59)))
                                    ]),
                                    textAlign: TextAlign.left)
                              ])),
                      CustomButton(
                          height: 52,
                          width: 343,
                          text: "lbl_pay_now".tr,
                          margin: getMargin(top: 24, bottom: 5),
                          onTap: onTapPaynow)
                    ]))));
  }

  onTapPaynow() {
    Get.toNamed(AppRoutes.completeScreen);
  }

  onTapArrowleft10() {
    Get.back();
  }
}
