import '../controller/my_cart_controller.dart';
import '../models/my_cart_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCartItemWidget extends StatelessWidget {
  MyCartItemWidget(this.myCartItemModelObj);

  MyCartItemModel myCartItemModelObj;

  var controller = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplash8hqpxttomn0,
          height: getVerticalSize(
            171.00,
          ),
          width: getHorizontalSize(
            142.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
          margin: getMargin(
            top: 5,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 2,
              ),
              child: Text(
                "lbl_casual".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18Black900.copyWith(
                  height: getVerticalSize(
                    0.67,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 2,
                top: 5,
              ),
              child: Text(
                "msg_casual_jeans_sh".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular15Black900.copyWith(
                  height: getVerticalSize(
                    0.67,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 2,
                top: 4,
              ),
              child: Text(
                "lbl_size_xl".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular14Gray500.copyWith(
                  height: getVerticalSize(
                    0.67,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 2,
                top: 4,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl2".tr,
                      style: TextStyle(
                        color: ColorConstant.orange700,
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: getVerticalSize(
                          0.85,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "lbl_134_982".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: getVerticalSize(
                          0.85,
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 35,
              ),
              child: Row(
                children: [
                  Container(
                    height: getVerticalSize(
                      28.00,
                    ),
                    width: getHorizontalSize(
                      83.00,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              24.00,
                            ),
                            width: getHorizontalSize(
                              51.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray10001,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgPlus,
                          height: getSize(
                            28.00,
                          ),
                          width: getSize(
                            28.00,
                          ),
                          alignment: Alignment.centerRight,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: getSize(
                            28.00,
                          ),
                          width: getSize(
                            28.00,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_1".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium15.copyWith(
                              height: getVerticalSize(
                                0.67,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgClose,
                    height: getSize(
                      16.00,
                    ),
                    width: getSize(
                      16.00,
                    ),
                    margin: getMargin(
                      left: 82,
                      top: 6,
                      bottom: 6,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
