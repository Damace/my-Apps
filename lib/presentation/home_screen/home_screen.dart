import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_bottom_bar.dart';
import 'package:alex_s_application2/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgComputer,
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16),
                      onTap: onTapSearch),
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 24, right: 16),
                      onTap: onTapNotification)
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 40, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 137),
                                      child: Text("lbl_find_your_style".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsBold24
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.11))))),
                              Container(
                                  height: getVerticalSize(51.00),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(left: 137, top: 18),
                                      scrollDirection: Axis.horizontal,
                                      physics: BouncingScrollPhysics(),
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16.00));
                                      },
                                      itemCount: controller.homeModelObj.value
                                          .homeItemList.length,
                                      itemBuilder: (context, index) {
                                        HomeItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .homeItemList[index];
                                        return HomeItemWidget(model);
                                      }))),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 24),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 16, bottom: 16),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height: getVerticalSize(
                                                          216.00),
                                                      width: getHorizontalSize(
                                                          182.00),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgUnsplashemlkhdeydhg216x182,
                                                                height:
                                                                    getVerticalSize(
                                                                        216.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        182.00),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            15.00)),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFrame18WhiteA700,
                                                                height: getSize(
                                                                    24.00),
                                                                width:
                                                                    getSize(
                                                                        24.00),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                margin:
                                                                    getMargin(
                                                                        top: 12,
                                                                        right:
                                                                            12))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 12),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_casual"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            getVerticalSize(0.71))),
                                                                TextSpan(
                                                                    text: " ",
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            getVerticalSize(0.71))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_jeans_shoes"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            getVerticalSize(0.71)))
                                                              ]),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text: "lbl3"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        height:
                                                                            getVerticalSize(0.63))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_165_002"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .gray50001,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        height:
                                                                            getVerticalSize(0.63)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.center))
                                                ])),
                                        GestureDetector(
                                            onTap: () {
                                              onTapColumnunsplashstivslutjteight();
                                            },
                                            child: Padding(
                                                padding: getPadding(left: 24),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  248.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  209.00),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgUnsplashstivslutjt8,
                                                                    height: getVerticalSize(
                                                                        248.00),
                                                                    width: getHorizontalSize(
                                                                        209.00),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            15.00)),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgFrame19,
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    margin: getMargin(
                                                                        top: 12,
                                                                        right:
                                                                            12))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 12),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_casual"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            fontSize: getFontSize(
                                                                                14),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height: getVerticalSize(0.71))),
                                                                    TextSpan(
                                                                        text:
                                                                            " ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            fontSize: getFontSize(
                                                                                14),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height: getVerticalSize(0.71))),
                                                                    TextSpan(
                                                                        text: "lbl_jeans_shoes"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            fontSize: getFontSize(
                                                                                14),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height: getVerticalSize(0.71)))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl2"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .orange700,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: getVerticalSize(0.63))),
                                                                    TextSpan(
                                                                        text:
                                                                            " ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: getVerticalSize(0.63))),
                                                                    TextSpan(
                                                                        text: "lbl_165_002"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: getVerticalSize(0.63)))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(
                                                left: 24, top: 16, bottom: 20),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height: getVerticalSize(
                                                          216.00),
                                                      width: getHorizontalSize(
                                                          182.00),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgUnsplashr9ltxkntq7i,
                                                                height:
                                                                    getVerticalSize(
                                                                        216.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        182.00),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            15.00)),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFrame19,
                                                                height: getSize(
                                                                    24.00),
                                                                width:
                                                                    getSize(
                                                                        24.00),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                margin:
                                                                    getMargin(
                                                                        top: 12,
                                                                        right:
                                                                            12))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 12),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_casual"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            getVerticalSize(0.71))),
                                                                TextSpan(
                                                                    text: " ",
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            getVerticalSize(0.71))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_jeans_shoes"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            getVerticalSize(0.71)))
                                                              ]),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text: "lbl3"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        height:
                                                                            getVerticalSize(0.63))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_165_002"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .gray50001,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        height:
                                                                            getVerticalSize(0.63)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.center))
                                                ]))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 22, right: 16),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_populer_items".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium18Black900
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(0.67))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeAll();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 171,
                                                    top: 1,
                                                    bottom: 4),
                                                child: Text("lbl_see_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium14Orange700
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    0.71)))))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 9, right: 16),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapColumnunsplashzhh3wm2ko3s();
                                            },
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height: getVerticalSize(
                                                          192.00),
                                                      width: getHorizontalSize(
                                                          164.00),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgUnsplashzhh3wm2ko3s,
                                                                height:
                                                                    getVerticalSize(
                                                                        192.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        164.00),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            15.00)),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFrame19,
                                                                height: getSize(
                                                                    24.00),
                                                                width:
                                                                    getSize(
                                                                        24.00),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                margin:
                                                                    getMargin(
                                                                        top: 12,
                                                                        right:
                                                                            12))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 34, top: 12),
                                                      child: Text(
                                                          "lbl_black_jacket".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular14Black900
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          0.71)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl3"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .orange700,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: getVerticalSize(0.63))),
                                                                    TextSpan(
                                                                        text: "lbl_246_002"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: getVerticalSize(0.63)))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left)))
                                                ])),
                                        GestureDetector(
                                            onTap: () {
                                              onTapColumnunsplash8haslee6fbo();
                                            },
                                            child: Padding(
                                                padding: getPadding(left: 16),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  192.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  163.00),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgUnsplash8haslee6fbo,
                                                                    height: getVerticalSize(
                                                                        192.00),
                                                                    width: getHorizontalSize(
                                                                        163.00),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            15.00)),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgFrame19,
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00),
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    margin: getMargin(
                                                                        top: 12,
                                                                        right:
                                                                            12))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 12),
                                                          child: Text(
                                                              "msg_casual_jeans_sh"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular14Black900
                                                                  .copyWith(
                                                                      height: getVerticalSize(
                                                                          0.71)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl3"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .orange700,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: getVerticalSize(0.63))),
                                                                    TextSpan(
                                                                        text: "lbl_165_002"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: getVerticalSize(0.63)))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ])))
                                      ]))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {}),
            floatingActionButton: CustomFloatingButton(
                height: 44,
                width: 32,
                child: CustomImageView(
                    svgPath: ImageConstant.imgHome,
                    height: getVerticalSize(22.00),
                    width: getHorizontalSize(16.00)))));
  }

  onTapColumnunsplashstivslutjteight() {
    Get.toNamed(AppRoutes.productViewScreen);
  }

  onTapTxtSeeAll() {
    Get.toNamed(AppRoutes.popularItemsScreen);
  }

  onTapColumnunsplashzhh3wm2ko3s() {
    Get.toNamed(AppRoutes.productViewScreen);
  }

  onTapColumnunsplash8haslee6fbo() {
    Get.toNamed(AppRoutes.productViewScreen);
  }

  onTapSearch() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  onTapNotification() {
    Get.toNamed(AppRoutes.notificationScreen);
  }
}
