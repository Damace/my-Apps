import 'controller/chat_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends GetWidget<ChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(40.00),
                    width: getSize(40.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 5, bottom: 4),
                    onTap: onTapArrowleft19),
                title: Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse65,
                      height: getSize(40.00),
                      width: getSize(40.00),
                      radius: BorderRadius.circular(getHorizontalSize(20.00)),
                      margin: getMargin(left: 43, top: 5, bottom: 4)),
                  Padding(
                      padding: getPadding(left: 14, bottom: 1),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("lbl_mahbuba".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular18Black900
                                        .copyWith(
                                            height: getVerticalSize(0.74)))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(right: 39),
                                    child: Text("lbl_online".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular15Green600
                                            .copyWith(
                                                height:
                                                    getVerticalSize(0.67)))))
                          ]))
                ]),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgCall,
                      margin: getMargin(left: 16, top: 13, bottom: 12)),
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgVideocamera,
                      margin:
                          getMargin(left: 24, top: 13, right: 16, bottom: 12))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 21, right: 16, bottom: 21),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_yesterday".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular10
                                  .copyWith(height: getVerticalSize(0.47)))),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse65,
                                    height: getSize(40.00),
                                    width: getSize(40.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20.00)),
                                    margin: getMargin(top: 33, bottom: 22)),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomTextFormField(
                                          width: 287,
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.group1237Controller,
                                          hintText: "msg_hi_anne_i_am_f".tr,
                                          variant: TextFormFieldVariant
                                              .FillGray10001,
                                          shape: TextFormFieldShape
                                              .CustomBorderTL30,
                                          fontStyle: TextFormFieldFontStyle
                                              .PoppinsRegular14,
                                          maxLines: 3),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray500
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.11))))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: getPadding(
                                              left: 32,
                                              top: 19,
                                              right: 32,
                                              bottom: 19),
                                          decoration: AppDecoration.fillGray600
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL301),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgGroup230,
                                                height: getVerticalSize(35.00),
                                                width:
                                                    getHorizontalSize(181.00)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 7, top: 6, bottom: 6),
                                                child: Text("lbl_0_37".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNunitoRegular16
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    0.92))))
                                          ])),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtNunitoRegular12
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.22))))
                                    ]),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse5,
                                    height: getSize(40.00),
                                    width: getSize(40.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20.00)),
                                    margin: getMargin(top: 33, bottom: 22))
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse65,
                                    height: getSize(40.00),
                                    width: getSize(40.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20.00)),
                                    margin: getMargin(top: 33, bottom: 22)),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomTextFormField(
                                          width: 287,
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.group1237OneController,
                                          hintText: "msg_hi_anne_i_am_f".tr,
                                          variant: TextFormFieldVariant
                                              .FillGray10001,
                                          shape: TextFormFieldShape
                                              .CustomBorderTL30,
                                          fontStyle: TextFormFieldFontStyle
                                              .PoppinsRegular14,
                                          maxLines: 3),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray500
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.11))))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomTextFormField(
                                          width: 287,
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.group1242Controller,
                                          hintText: "msg_hi_don_t_worry".tr,
                                          variant:
                                              TextFormFieldVariant.FillGray600,
                                          shape: TextFormFieldShape
                                              .CustomBorderTL30_1,
                                          fontStyle: TextFormFieldFontStyle
                                              .PoppinsRegular14WhiteA700,
                                          maxLines: 3),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtNunitoRegular12
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.22))))
                                    ]),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse5,
                                    height: getSize(40.00),
                                    width: getSize(40.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20.00)),
                                    margin: getMargin(top: 33, bottom: 22))
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse65,
                                    height: getSize(40.00),
                                    width: getSize(40.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20.00)),
                                    margin: getMargin(top: 33, bottom: 22)),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomTextFormField(
                                          width: 287,
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.group1237TwoController,
                                          hintText: "msg_hi_anne_i_am_f".tr,
                                          variant: TextFormFieldVariant
                                              .FillGray10001,
                                          shape: TextFormFieldShape
                                              .CustomBorderTL30,
                                          fontStyle: TextFormFieldFontStyle
                                              .PoppinsRegular14,
                                          maxLines: 3),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray500
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.11))))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(top: 9, bottom: 8),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse65,
                                height: getSize(40.00),
                                width: getSize(40.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20.00))),
                            Padding(
                                padding:
                                    getPadding(left: 6, top: 11, bottom: 7),
                                child: Text("msg_mahbuba_is_typi".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14Gray500
                                        .copyWith(
                                            height: getVerticalSize(0.95))))
                          ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 27),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomTextFormField(
                      width: 343,
                      focusNode: FocusNode(),
                      controller: controller.group1314Controller,
                      hintText: "lbl_type_a_message".tr,
                      variant: TextFormFieldVariant.FillGray20005,
                      padding: TextFormFieldPadding.PaddingT14,
                      fontStyle: TextFormFieldFontStyle.PoppinsRegular14,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          margin: getMargin(
                              left: 30, top: 14, right: 27, bottom: 14),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgMicrophone)),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(52.00)))
                ]))));
  }

  onTapArrowleft19() {
    Get.back();
  }
}
