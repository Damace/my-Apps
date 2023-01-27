import '../controller/notification_controller.dart';
import '../models/listunsplashqnuur0o5xeight_three_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listunsplashqnuur0o5xeightThreeItemWidget extends StatelessWidget {
  Listunsplashqnuur0o5xeightThreeItemWidget(
      this.listunsplashqnuur0o5xeightThreeItemModelObj);

  Listunsplashqnuur0o5xeightThreeItemModel
      listunsplashqnuur0o5xeightThreeItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 3,
        bottom: 3,
      ),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashqnuur0o5x8,
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                10.00,
              ),
            ),
            margin: getMargin(
              top: 11,
              bottom: 11,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 11,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_you".tr,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: getVerticalSize(
                            0.63,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: " ",
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: getVerticalSize(
                            0.63,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl_purchased_shoes".tr,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: getVerticalSize(
                            0.63,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "lbl_02_minites_ago".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsLight14.copyWith(
                        height: getVerticalSize(
                          0.71,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
