import 'controller/tracking_order_controller.dart';
import 'dart:async';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore_for_file: must_be_immutable
class TrackingOrderScreen extends GetWidget<TrackingOrderController> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: size.height,
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                    height: size.height,
                                    width: size.width,
                                    child: GoogleMap(
                                        mapType: MapType.normal,
                                        initialCameraPosition: CameraPosition(
                                            target: LatLng(37.43296265331129,
                                                -122.08832357078792),
                                            zoom: 14.4746),
                                        onMapCreated:
                                            (GoogleMapController controller) {
                                          googleMapController
                                              .complete(controller);
                                        },
                                        zoomControlsEnabled: false,
                                        zoomGesturesEnabled: false,
                                        myLocationButtonEnabled: false,
                                        myLocationEnabled: false)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, right: 16, bottom: 68),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(94.00),
                                                  width:
                                                      getHorizontalSize(183.00),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgGroup1262,
                                                            height:
                                                                getVerticalSize(
                                                                    61.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    131.00),
                                                            alignment: Alignment
                                                                .bottomLeft),
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Container(
                                                                height: getVerticalSize(
                                                                    57.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        60.00),
                                                                padding:
                                                                    getPadding(
                                                                        all:
                                                                            10),
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: fs.Svg(ImageConstant
                                                                            .imgGroup1263),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgEllipse5,
                                                                          height: getSize(
                                                                              33.00),
                                                                          width: getSize(
                                                                              33.00),
                                                                          radius: BorderRadius.circular(getHorizontalSize(
                                                                              16.00)),
                                                                          alignment:
                                                                              Alignment.topRight)
                                                                    ])))
                                                      ])),
                                              Container(
                                                  width:
                                                      getHorizontalSize(343.00),
                                                  margin: getMargin(top: 213),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder12),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                top: 28,
                                                                right: 20),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                            "lbl_tracking_order"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular16.copyWith(height: getVerticalSize(0.63))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 3),
                                                                            child: Text("msg_order_no_84503".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12.copyWith(height: getVerticalSize(1.11))))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              2,
                                                                          bottom:
                                                                              22),
                                                                      child: Text(
                                                                          "msg_arrived_in_16_0"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsMedium13Orange700
                                                                              .copyWith(height: getVerticalSize(1.03))))
                                                                ])),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    343.00),
                                                            margin: getMargin(
                                                                top: 21),
                                                            padding: getPadding(
                                                                left: 150,
                                                                top: 12,
                                                                right: 150,
                                                                bottom: 12),
                                                            decoration: AppDecoration
                                                                .fillBlack900
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder12),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_done"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsMedium16WhiteA700
                                                                              .copyWith(height: getVerticalSize(0.83))))
                                                                ]))
                                                      ]))
                                            ]))),
                                CustomAppBar(
                                    height: getVerticalSize(69.00),
                                    leadingWidth: 56,
                                    leading: AppbarImage(
                                        height: getSize(40.00),
                                        width: getSize(40.00),
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: getMargin(
                                            left: 16, top: 5, bottom: 24),
                                        onTap: onTapArrowleft11),
                                    centerTitle: true,
                                    title: AppbarSubtitle(
                                        text: "lbl_tracking_order".tr),
                                    styleType: Style.bgShadowBlack90019)
                              ]))
                    ]))));
  }

  onTapArrowleft11() {
    Get.back();
  }
}
