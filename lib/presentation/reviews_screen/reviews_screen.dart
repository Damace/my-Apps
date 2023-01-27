import 'controller/reviews_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsScreen extends GetWidget<ReviewsController> {
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
                    onTap: onTapArrowleft13),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_reviews".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: AppDecoration.fillGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(children: [
                            CustomButton(
                                height: 52,
                                width: 172,
                                text: "lbl_positive".tr,
                                padding: ButtonPadding.PaddingAll15),
                            Padding(
                                padding: getPadding(
                                    left: 49, top: 15, right: 50, bottom: 11),
                                child: Text("lbl_negetive".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16.copyWith(
                                        height: getVerticalSize(0.83))))
                          ])),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("lbl_4_8".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold30.copyWith(
                                  letterSpacing: getHorizontalSize(2.40),
                                  height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(top: 8),
                          child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemSize: getVerticalSize(20.00),
                              unratedColor: ColorConstant.amber500,
                              itemCount: 5,
                              updateOnDrag: true,
                              onRatingUpdate: (rating) {},
                              itemBuilder: (context, _) {
                                return Icon(Icons.star,
                                    color: ColorConstant.amber500);
                              })),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("msg_based_on_1_024".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular14Gray500
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_excellent".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14Gray500
                                        .copyWith(
                                            height: getVerticalSize(0.71))),
                                Padding(
                                    padding: getPadding(top: 9, bottom: 7),
                                    child: Container(
                                        height: getVerticalSize(4.00),
                                        width: getHorizontalSize(196.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00))),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00)),
                                            child: LinearProgressIndicator(
                                                value: 0.93,
                                                backgroundColor: ColorConstant
                                                    .gray300,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                            Color>(
                                                        ColorConstant
                                                            .green600)))))
                              ])),
                      Padding(
                          padding: getPadding(top: 6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_good".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14Gray500
                                        .copyWith(
                                            height: getVerticalSize(0.71))),
                                Padding(
                                    padding: getPadding(top: 9, bottom: 7),
                                    child: Container(
                                        height: getVerticalSize(4.00),
                                        width: getHorizontalSize(196.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00))),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00)),
                                            child: LinearProgressIndicator(
                                                value: 0.32,
                                                backgroundColor: ColorConstant
                                                    .gray300,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                            Color>(
                                                        ColorConstant
                                                            .green500)))))
                              ])),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_average".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14Gray500
                                        .copyWith(
                                            height: getVerticalSize(0.71))),
                                Padding(
                                    padding: getPadding(top: 7, bottom: 9),
                                    child: Container(
                                        height: getVerticalSize(4.00),
                                        width: getHorizontalSize(196.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00))),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00)),
                                            child: LinearProgressIndicator(
                                                value: 0.17,
                                                backgroundColor: ColorConstant
                                                    .gray300,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                            Color>(
                                                        ColorConstant
                                                            .amber400)))))
                              ])),
                      Padding(
                          padding: getPadding(top: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_bellow_average".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14Gray500
                                        .copyWith(
                                            height: getVerticalSize(0.71))),
                                Padding(
                                    padding: getPadding(top: 7, bottom: 9),
                                    child: Container(
                                        height: getVerticalSize(4.00),
                                        width: getHorizontalSize(196.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00))),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00)),
                                            child: LinearProgressIndicator(
                                                value: 0.09,
                                                backgroundColor:
                                                    ColorConstant.gray300,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                            Color>(
                                                        ColorConstant
                                                            .orange700)))))
                              ])),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_poor".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14Gray500
                                        .copyWith(
                                            height: getVerticalSize(0.71))),
                                Padding(
                                    padding: getPadding(top: 9, bottom: 7),
                                    child: Container(
                                        height: getVerticalSize(4.00),
                                        width: getHorizontalSize(196.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00))),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00)),
                                            child: LinearProgressIndicator(
                                                value: 0.04,
                                                backgroundColor:
                                                    ColorConstant.gray300,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                            Color>(
                                                        ColorConstant
                                                            .redA400)))))
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse533x33,
                                    height: getSize(33.00),
                                    width: getSize(33.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(16.00)),
                                    margin: getMargin(top: 3)),
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_ariana_peter".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Black900
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          0.71))),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: RatingBar.builder(
                                                  initialRating: 4,
                                                  minRating: 0,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: false,
                                                  itemSize:
                                                      getVerticalSize(14.00),
                                                  unratedColor:
                                                      ColorConstant.amber500,
                                                  itemCount: 5,
                                                  updateOnDrag: true,
                                                  onRatingUpdate: (rating) {},
                                                  itemBuilder: (context, _) {
                                                    return Icon(Icons.star,
                                                        color: ColorConstant
                                                            .amber500);
                                                  }))
                                        ])),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 7, bottom: 8),
                                    child: Text("lbl_1_day_ago".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular14Gray500
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(1.12),
                                                height: getVerticalSize(0.71))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(291.00),
                              margin: getMargin(top: 11, right: 10),
                              child: Text("msg_it_is_a_long_es2".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14.copyWith(
                                      height: getVerticalSize(1.00))))),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse51,
                                    height: getSize(33.00),
                                    width: getSize(33.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(16.00)),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_nancy_wheeler".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Black900
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          0.71))),
                                          RatingBar.builder(
                                              initialRating: 4,
                                              minRating: 0,
                                              direction: Axis.horizontal,
                                              allowHalfRating: false,
                                              itemSize: getVerticalSize(14.00),
                                              unratedColor:
                                                  ColorConstant.amber500,
                                              itemCount: 5,
                                              updateOnDrag: true,
                                              onRatingUpdate: (rating) {},
                                              itemBuilder: (context, _) {
                                                return Icon(Icons.star,
                                                    color:
                                                        ColorConstant.amber500);
                                              })
                                        ])),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 5, bottom: 8),
                                    child: Text("lbl_1_day_ago".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular14Gray500
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(1.12),
                                                height: getVerticalSize(0.71))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(291.00),
                              margin: getMargin(top: 11, right: 10, bottom: 3),
                              child: Text("msg_it_is_a_long_es2".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14.copyWith(
                                      height: getVerticalSize(1.00)))))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 46),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: 52,
                      width: 343,
                      text: "lbl_write_a_review".tr,
                      padding: ButtonPadding.PaddingAll15)
                ]))));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
