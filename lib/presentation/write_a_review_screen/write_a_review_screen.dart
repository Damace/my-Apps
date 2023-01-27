import 'controller/write_a_review_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class WriteAReviewScreen extends GetWidget<WriteAReviewController> {
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
                    onTap: onTapArrowleft14),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_write_a_review".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgUnsplashifnycbwtal4135x142,
                            height: getVerticalSize(135.00),
                            width: getHorizontalSize(142.00),
                            radius: BorderRadius.circular(
                                getHorizontalSize(12.00))),
                        Padding(
                            padding: getPadding(left: 30, top: 10, bottom: 11),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("lbl_jacket".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium18Black900
                                          .copyWith(
                                              height: getVerticalSize(0.67))),
                                  Padding(
                                      padding: getPadding(top: 5),
                                      child: Text("lbl_black_jacket".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular15Black900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(0.67)))),
                                  Padding(
                                      padding: getPadding(top: 4),
                                      child: Text("lbl_size_xl".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular14Gray500
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(0.67)))),
                                  Padding(
                                      padding: getPadding(top: 4),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl2".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.orange700,
                                                    fontSize: getFontSize(18),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height:
                                                        getVerticalSize(0.85))),
                                            TextSpan(
                                                text: "lbl_134_982".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(18),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height:
                                                        getVerticalSize(0.85)))
                                          ]),
                                          textAlign: TextAlign.left))
                                ]))
                      ]),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Text("msg_add_photo_or_vi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18Black900
                                  .copyWith(height: getVerticalSize(0.93)))),
                      Padding(
                          padding: getPadding(top: 15),
                          child: DottedBorder(
                              color: ColorConstant.gray20004,
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(2.00),
                                  top: getVerticalSize(2.00),
                                  right: getHorizontalSize(2.00),
                                  bottom: getVerticalSize(2.00)),
                              strokeWidth: getHorizontalSize(2.00),
                              radius: Radius.circular(16),
                              borderType: BorderType.RRect,
                              dashPattern: [6, 6],
                              child: Container(
                                  width: getHorizontalSize(343.00),
                                  padding: getPadding(
                                      left: 96, top: 24, right: 96, bottom: 24),
                                  decoration: AppDecoration.outlineGray20004
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgUpload,
                                            height: getSize(50.00),
                                            width: getSize(50.00)),
                                        Padding(
                                            padding: getPadding(top: 12),
                                            child: Text(
                                                "msg_click_here_to_u".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular15
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.50),
                                                        height: getVerticalSize(
                                                            1.00))))
                                      ])))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("msg_write_yor_revie".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18Black900
                                  .copyWith(height: getVerticalSize(0.93)))),
                      Padding(
                          padding: getPadding(top: 13),
                          child: DottedBorder(
                              color: ColorConstant.gray20004,
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(2.00),
                                  top: getVerticalSize(2.00),
                                  right: getHorizontalSize(2.00),
                                  bottom: getVerticalSize(2.00)),
                              strokeWidth: getHorizontalSize(2.00),
                              radius: Radius.circular(16),
                              borderType: BorderType.RRect,
                              dashPattern: [6, 6],
                              child: Container(
                                  width: getHorizontalSize(343.00),
                                  padding: getPadding(
                                      left: 21, top: 16, right: 21, bottom: 16),
                                  decoration: AppDecoration.outlineGray20004
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(280.00),
                                            margin: getMargin(bottom: 61),
                                            child: Text("msg_would_you_like".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00))))
                                      ])))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 16, bottom: 5),
                              child: Text("msg_350_characters".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14.copyWith(
                                      height: getVerticalSize(1.00)))))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 39),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: 52,
                      width: 343,
                      text: "lbl_write_a_review".tr,
                      padding: ButtonPadding.PaddingAll15,
                      onTap: onTapWriteareviewOne)
                ]))));
  }

  onTapWriteareviewOne() {
    Get.toNamed(AppRoutes.reviewsScreen);
  }

  onTapArrowleft14() {
    Get.back();
  }
}
