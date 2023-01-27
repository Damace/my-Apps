import 'controller/product_view_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:alex_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ProductViewScreen extends GetWidget<ProductViewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: getVerticalSize(854.00),
                                  width: size.width,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgProduct,
                                            height: getVerticalSize(451.00),
                                            width: getHorizontalSize(375.00),
                                            alignment: Alignment.topCenter),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                width: size.width,
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 26,
                                                    right: 16,
                                                    bottom: 26),
                                                decoration: AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL30),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 42,
                                                          width: 42,
                                                          variant: IconButtonVariant
                                                              .OutlineGray10001_1,
                                                          padding:
                                                              IconButtonPadding
                                                                  .PaddingAll9,
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgShare)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 10),
                                                          child: Text(
                                                              "lbl_order_status"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium20
                                                                  .copyWith(
                                                                      height: getVerticalSize(
                                                                          0.67)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 13),
                                                          child: Row(children: [
                                                            Container(
                                                                width: getSize(
                                                                    46.00),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 10,
                                                                        right:
                                                                            18,
                                                                        bottom:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .txtOutlineGray10001
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder12),
                                                                child: Text(
                                                                    "lbl_s".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular15Black900
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(0.67)))),
                                                            Container(
                                                                width: getSize(
                                                                    46.00),
                                                                margin: getMargin(
                                                                    left: 9),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 10,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .txtOutlineGray10001
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder12),
                                                                child: Text(
                                                                    "lbl_m".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular15Black900
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(0.67)))),
                                                            Container(
                                                                width: getSize(
                                                                    46.00),
                                                                margin: getMargin(
                                                                    left: 9),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 10,
                                                                        right:
                                                                            19,
                                                                        bottom:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .txtOutlineGray10001
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder12),
                                                                child: Text(
                                                                    "lbl_l".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular15Black900
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(0.67)))),
                                                            Container(
                                                                width: getSize(
                                                                    46.00),
                                                                margin: getMargin(
                                                                    left: 9),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        top: 10,
                                                                        right:
                                                                            14,
                                                                        bottom:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .txtFillBlack900
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder12),
                                                                child: Text(
                                                                    "lbl_xl".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium15WhiteA700
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(0.67)))),
                                                            Container(
                                                                width: getSize(
                                                                    46.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            9),
                                                                padding:
                                                                    getPadding(
                                                                        all:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .txtOutlineGray10001
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder12),
                                                                child: Text(
                                                                    "lbl_xxl"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular15Black900
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(0.67))))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 24),
                                                          child: Text(
                                                              "lbl_color".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium20
                                                                  .copyWith(
                                                                      height: getVerticalSize(
                                                                          0.67)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 13),
                                                          child: Obx(() => PinCodeTextField(
                                                              appContext:
                                                                  context,
                                                              controller: controller
                                                                  .otpController
                                                                  .value,
                                                              length: 4,
                                                              obscureText:
                                                                  false,
                                                              obscuringCharacter:
                                                                  '*',
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              autoDismissKeyboard:
                                                                  true,
                                                              enableActiveFill:
                                                                  true,
                                                              inputFormatters: [
                                                                FilteringTextInputFormatter
                                                                    .digitsOnly
                                                              ],
                                                              onChanged:
                                                                  (value) {},
                                                              pinTheme: PinTheme(
                                                                  fieldHeight:
                                                                      getHorizontalSize(
                                                                          30.00),
                                                                  fieldWidth:
                                                                      getHorizontalSize(
                                                                          30.00),
                                                                  shape:
                                                                      PinCodeFieldShape
                                                                          .box,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(8.00)),
                                                                  selectedFillColor: ColorConstant.gray900,
                                                                  activeFillColor: ColorConstant.gray900,
                                                                  inactiveFillColor: ColorConstant.gray900,
                                                                  inactiveColor: ColorConstant.deepPurpleA200,
                                                                  selectedColor: ColorConstant.deepPurpleA200,
                                                                  activeColor: ColorConstant.deepPurpleA200)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 24),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "lbl_reviews"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium20
                                                                        .copyWith(
                                                                            height:
                                                                                getVerticalSize(0.67))),
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapTxtSeeAll();
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                5,
                                                                            bottom:
                                                                                4),
                                                                        child: Text(
                                                                            "lbl_see_all"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsMedium14Orange700.copyWith(height: getVerticalSize(0.71)))))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 14),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgStar6,
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            1.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            4),
                                                                child: Text(
                                                                    "msg_4_8_1_024_reviews"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsSemiBold16Gray500
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(1.28),
                                                                            height: getVerticalSize(1.00))))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 29,
                                                              right: 9,
                                                              bottom: 15),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 12,
                                                                        bottom:
                                                                            11),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "lbl2".tr,
                                                                              style: TextStyle(color: ColorConstant.orange700, fontSize: getFontSize(22), fontFamily: 'Poppins', fontWeight: FontWeight.w600, height: getVerticalSize(0.67))),
                                                                          TextSpan(
                                                                              text: "lbl_134_982".tr,
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(22), fontFamily: 'Poppins', fontWeight: FontWeight.w600, height: getVerticalSize(0.67)))
                                                                        ]),
                                                                        textAlign: TextAlign.left)),
                                                                CustomButton(
                                                                    height: 57,
                                                                    width: 173,
                                                                    text:
                                                                        "lbl_add_to_cart"
                                                                            .tr,
                                                                    padding:
                                                                        ButtonPadding
                                                                            .PaddingAll15,
                                                                    onTap:
                                                                        onTapAddtocart)
                                                              ]))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapTxtSeeAll() {
    Get.toNamed(AppRoutes.reviewsScreen);
  }

  onTapAddtocart() {
    Get.toNamed(AppRoutes.myCartScreen);
  }
}
