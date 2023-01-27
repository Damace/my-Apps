import '../controller/explore_shop_controller.dart';
import '../models/explore_shop_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreShopItemWidget extends StatelessWidget {
  ExploreShopItemWidget(this.exploreShopItemModelObj);

  ExploreShopItemModel exploreShopItemModelObj;

  var controller = Get.find<ExploreShopController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: getHorizontalSize(
            102.00,
          ),
          padding: getPadding(
            left: 15,
            top: 7,
            right: 15,
            bottom: 7,
          ),
          decoration: AppDecoration.txtFillBlack900.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder18,
          ),
          child: Text(
            "lbl_electonics".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular14Gray200.copyWith(
              height: getVerticalSize(
                0.67,
              ),
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            75.00,
          ),
          margin: getMargin(
            left: 8,
          ),
          padding: getPadding(
            left: 16,
            top: 7,
            right: 16,
            bottom: 7,
          ),
          decoration: AppDecoration.txtFillGray200.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder18,
          ),
          child: Text(
            "lbl_books".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular14Black900.copyWith(
              height: getVerticalSize(
                0.67,
              ),
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            88.00,
          ),
          margin: getMargin(
            left: 8,
          ),
          padding: getPadding(
            left: 15,
            top: 5,
            right: 15,
            bottom: 5,
          ),
          decoration: AppDecoration.txtFillBlack900.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder18,
          ),
          child: Text(
            "lbl_reading".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular14Gray200.copyWith(
              height: getVerticalSize(
                0.67,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
