import 'controller/filter_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:alex_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore_for_file: must_be_immutable
class FilterDraweritem extends StatelessWidget {
  FilterDraweritem(this.controller);

  FilterController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
            child: Container(
                width: size.width,
                margin: getMargin(bottom: 266),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL121),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 88, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_category".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular16
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(0.75))),
                                      CustomButton(
                                          height: 31,
                                          width: 83,
                                          text: "lbl_consilor".tr,
                                          margin: getMargin(top: 9),
                                          variant: ButtonVariant.FillGray10001,
                                          shape: ButtonShape.RoundedBorder7,
                                          padding: ButtonPadding.PaddingAll4,
                                          fontStyle:
                                              ButtonFontStyle.PoppinsRegular14)
                                    ]),
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose16x24,
                                    height: getVerticalSize(16.00),
                                    width: getHorizontalSize(24.00),
                                    margin: getMargin(bottom: 40))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(272.00),
                          margin: getMargin(top: 20, right: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10001)),
                      Padding(
                          padding: getPadding(left: 88, top: 16, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_brand".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular16
                                        .copyWith(
                                            height: getVerticalSize(0.75))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 3, bottom: 4))
                              ])),
                      Padding(
                          padding: getPadding(top: 13, right: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomButton(
                                    height: 31,
                                    width: 83,
                                    text: "lbl_la_girl".tr,
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsRegular14),
                                CustomButton(
                                    height: 31,
                                    width: 94,
                                    text: "lbl_pinkflash".tr,
                                    margin: getMargin(left: 10),
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsRegular14),
                                Container(
                                    width: getHorizontalSize(75.00),
                                    margin: getMargin(left: 10),
                                    padding: getPadding(
                                        left: 12, top: 2, right: 12, bottom: 2),
                                    decoration: AppDecoration.txtFillGray10001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder7),
                                    child: Text("lbl_imagic".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular14Gray500
                                            .copyWith(
                                                height: getVerticalSize(0.67))))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                        height: 31,
                                        width: 83,
                                        text: "lbl_l_a_girl2".tr,
                                        variant: ButtonVariant.FillGray10001,
                                        shape: ButtonShape.RoundedBorder7,
                                        padding: ButtonPadding.PaddingAll4,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsRegular14),
                                    CustomButton(
                                        height: 31,
                                        width: 94,
                                        text: "lbl_focallure".tr,
                                        margin: getMargin(left: 10),
                                        variant: ButtonVariant.FillGray10001,
                                        shape: ButtonShape.RoundedBorder7,
                                        padding: ButtonPadding.PaddingAll4,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsRegular14)
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(272.00),
                          margin: getMargin(top: 20, right: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10001)),
                      Padding(
                          padding: getPadding(left: 88, top: 15, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_service".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular16
                                        .copyWith(
                                            height: getVerticalSize(0.75))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 4, bottom: 3))
                              ])),
                      Padding(
                          padding: getPadding(top: 13, right: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomButton(
                                    height: 31,
                                    width: 114,
                                    text: "lbl_installment".tr,
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsRegular14),
                                CustomButton(
                                    height: 31,
                                    width: 145,
                                    text: "msg_cash_on_deliver".tr,
                                    margin: getMargin(left: 10),
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle: ButtonFontStyle.PoppinsRegular14)
                              ])),
                      Padding(
                          padding: getPadding(top: 10, right: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomButton(
                                    height: 31,
                                    width: 143,
                                    text: "msg_fulfilled_by_ap".tr,
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsRegular14),
                                Container(
                                    width: getHorizontalSize(117.00),
                                    margin: getMargin(left: 9),
                                    padding: getPadding(
                                        left: 8, top: 2, right: 8, bottom: 2),
                                    decoration: AppDecoration.txtFillGray10001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder7),
                                    child: Text("lbl_free_shipping".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular14Gray500
                                            .copyWith(
                                                height: getVerticalSize(0.67))))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(272.00),
                          margin: getMargin(top: 20, right: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10001)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 88, top: 15),
                              child: Text("lbl_location".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16.copyWith(
                                      height: getVerticalSize(0.75))))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 12),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                        height: 31,
                                        width: 83,
                                        text: "lbl_china".tr,
                                        variant: ButtonVariant.FillGray10001,
                                        shape: ButtonShape.RoundedBorder7,
                                        padding: ButtonPadding.PaddingAll4,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsRegular14),
                                    Container(
                                        width: getHorizontalSize(108.00),
                                        margin: getMargin(left: 10),
                                        padding: getPadding(
                                            left: 11,
                                            top: 2,
                                            right: 11,
                                            bottom: 2),
                                        decoration: AppDecoration
                                            .txtFillGray10001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder7),
                                        child: Text("lbl_bangladesh".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular14Gray500
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.67))))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(272.00),
                          margin: getMargin(top: 20, right: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10001)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 88, top: 15),
                              child: Text("lbl_price".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16.copyWith(
                                      height: getVerticalSize(0.75))))),
                      Padding(
                          padding: getPadding(top: 12, right: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomTextFormField(
                                    width: 108,
                                    focusNode: FocusNode(),
                                    controller: controller.group848Controller,
                                    hintText: "lbl_min".tr,
                                    variant:
                                        TextFormFieldVariant.OutlineGray10001,
                                    shape: TextFormFieldShape.RoundedBorder5,
                                    padding: TextFormFieldPadding.PaddingAll4,
                                    fontStyle: TextFormFieldFontStyle
                                        .PoppinsRegular14),
                                Padding(
                                    padding:
                                        getPadding(left: 23, top: 3, bottom: 3),
                                    child: Text("lbl".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16
                                            .copyWith(
                                                height:
                                                    getVerticalSize(0.75)))),
                                CustomTextFormField(
                                    width: 108,
                                    focusNode: FocusNode(),
                                    controller: controller.group847Controller,
                                    hintText: "lbl_max".tr,
                                    margin: getMargin(left: 21),
                                    variant:
                                        TextFormFieldVariant.OutlineGray10001,
                                    shape: TextFormFieldShape.RoundedBorder5,
                                    padding: TextFormFieldPadding.PaddingAll4,
                                    fontStyle:
                                        TextFormFieldFontStyle.PoppinsRegular14,
                                    textInputAction: TextInputAction.done)
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(272.00),
                          margin: getMargin(top: 20, right: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10001)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 88, top: 18),
                              child: Text("lbl_rating".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16.copyWith(
                                      height: getVerticalSize(0.75))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 86, top: 7),
                              child: RatingBar.builder(
                                  initialRating: 5,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  itemSize: getVerticalSize(22.00),
                                  itemCount: 5,
                                  updateOnDrag: true,
                                  onRatingUpdate: (rating) {},
                                  itemBuilder: (context, _) {
                                    return Icon(Icons.star,
                                        color: ColorConstant.gray10001);
                                  }))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(272.00),
                          margin: getMargin(top: 20, right: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10001)),
                      Padding(
                          padding: getPadding(left: 88, top: 15, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_pack_size".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular16
                                        .copyWith(
                                            height: getVerticalSize(0.75))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 4, bottom: 3))
                              ])),
                      Container(
                          height: getVerticalSize(53.00),
                          width: getHorizontalSize(303.00),
                          margin: getMargin(top: 5),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(left: 16, right: 15),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(1.00),
                                              width: getHorizontalSize(272.00),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.gray10001)),
                                          Padding(
                                              padding:
                                                  getPadding(top: 15, right: 1),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("lbl_shelf_life".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular16
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        0.75))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowdownBlack900,
                                                        height: getSize(16.00),
                                                        width: getSize(16.00),
                                                        margin: getMargin(
                                                            top: 4, bottom: 3))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomButton(
                                          height: 53,
                                          width: 143,
                                          text: "lbl_reset".tr,
                                          variant: ButtonVariant.FillGray200,
                                          shape: ButtonShape.Square,
                                          padding: ButtonPadding.PaddingAll15,
                                          fontStyle:
                                              ButtonFontStyle.PoppinsMedium15),
                                      CustomButton(
                                          height: 52,
                                          width: 152,
                                          text: "lbl_complete".tr,
                                          margin: getMargin(bottom: 1),
                                          shape: ButtonShape.Square,
                                          padding: ButtonPadding.PaddingAll15,
                                          fontStyle: ButtonFontStyle
                                              .PoppinsMedium15WhiteA700,
                                          onTap: onTapComplete)
                                    ]))
                          ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(272.00),
                          margin: getMargin(top: 17, right: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10001)),
                      Padding(
                          padding: getPadding(left: 88, top: 19, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_hb".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular16
                                        .copyWith(
                                            height: getVerticalSize(0.75))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 1, bottom: 1))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(272.00),
                          margin: getMargin(top: 20, right: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10001)),
                      Padding(
                          padding: getPadding(left: 88, top: 19, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_coundtry_hb".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular16
                                        .copyWith(
                                            height: getVerticalSize(0.75))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 1, bottom: 1))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(272.00),
                          margin: getMargin(top: 20, right: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10001)),
                      Padding(
                          padding: getPadding(left: 88, top: 19, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_d_mart".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular16
                                        .copyWith(
                                            height: getVerticalSize(0.75))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 1, bottom: 1))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(272.00),
                          margin: getMargin(top: 20, right: 15),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray10001)),
                      Padding(
                          padding: getPadding(left: 88, top: 19, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_usage_area".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular16
                                        .copyWith(
                                            height: getVerticalSize(0.75))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownBlack900,
                                    height: getSize(16.00),
                                    width: getSize(16.00),
                                    margin: getMargin(top: 1, bottom: 1))
                              ]))
                    ]))));
  }

  onTapComplete() {
    Get.toNamed(AppRoutes.popularItemsScreen);
  }
}
