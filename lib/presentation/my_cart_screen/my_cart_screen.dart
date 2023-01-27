import '../my_cart_screen/widgets/my_cart_item_widget.dart';
import 'controller/my_cart_controller.dart';
import 'models/my_cart_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_bottom_bar.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:alex_s_application2/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class MyCartScreen extends GetWidget<MyCartController> {
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
                    margin: getMargin(left: 16),
                    onTap: onTapArrowleft9),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_my_cart".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgBag,
                      margin: getMargin(left: 16, top: 8, right: 16, bottom: 8))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 23, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("msg_promo_code_or_v".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular20
                                            .copyWith(
                                                height: getVerticalSize(0.67))),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightBlack900,
                                        height: getSize(16.00),
                                        width: getSize(16.00),
                                        margin: getMargin(top: 7, bottom: 6))
                                  ]),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16.00));
                                      },
                                      itemCount: controller.myCartModelObj.value
                                          .myCartItemList.length,
                                      itemBuilder: (context, index) {
                                        MyCartItemModel model = controller
                                            .myCartModelObj
                                            .value
                                            .myCartItemList[index];
                                        return MyCartItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 33),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_subtotal".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular17
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.59))),
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl2".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .orange700,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height:
                                                              getVerticalSize(
                                                                  0.63))),
                                                  TextSpan(
                                                      text: "lbl_134_942".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height:
                                                              getVerticalSize(
                                                                  0.63)))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_fee_delivery".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular17
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.59))),
                                        Padding(
                                            padding: getPadding(bottom: 2),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl2".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .orange700,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height:
                                                              getVerticalSize(
                                                                  0.63))),
                                                  TextSpan(
                                                      text: "lbl_102".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height:
                                                              getVerticalSize(
                                                                  0.63)))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 4),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_total".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium17
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.59))),
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl2".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .orange700,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height:
                                                              getVerticalSize(
                                                                  0.63))),
                                                  TextSpan(
                                                      text: "lbl_144_942".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height:
                                                              getVerticalSize(
                                                                  0.63)))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              CustomButton(
                                  height: 52,
                                  width: 343,
                                  text: "lbl_checkout".tr,
                                  margin: getMargin(top: 35),
                                  padding: ButtonPadding.PaddingAll15,
                                  onTap: onTapCheckout)
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {}),
            floatingActionButton: CustomFloatingButton(
                height: 44,
                width: 32,
                child: CustomImageView(
                    svgPath: ImageConstant.imgCartOrange700,
                    height: getVerticalSize(22.00),
                    width: getHorizontalSize(16.00)))));
  }

  onTapCheckout() {
    Get.toNamed(AppRoutes.checkoutScreen);
  }

  onTapArrowleft9() {
    Get.back();
  }
}
