import '../controller/popular_items_controller.dart';
import '../models/popular_items_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopularItemsItemWidget extends StatelessWidget {
  PopularItemsItemWidget(this.popularItemsItemModelObj,
      {this.onTapColumnunsplashzhh3wm2ko3s});

  PopularItemsItemModel popularItemsItemModelObj;

  var controller = Get.find<PopularItemsController>();

  VoidCallback? onTapColumnunsplashzhh3wm2ko3s;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnunsplashzhh3wm2ko3s!();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              192.00,
            ),
            width: getHorizontalSize(
              164.00,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUnsplashzhh3wm2ko3s192x164,
                  height: getVerticalSize(
                    192.00,
                  ),
                  width: getHorizontalSize(
                    164.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      15.00,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgFrame19,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  alignment: Alignment.topRight,
                  margin: getMargin(
                    top: 12,
                    right: 12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 34,
              top: 12,
            ),
            child: Text(
              "lbl_black_jacket".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular14Black900.copyWith(
                height: getVerticalSize(
                  0.71,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                top: 5,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl3".tr,
                      style: TextStyle(
                        color: ColorConstant.orange700,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: getVerticalSize(
                          0.63,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "lbl_246_002".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: getVerticalSize(
                          0.63,
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
