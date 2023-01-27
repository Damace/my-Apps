import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj);

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          47.00,
        ),
        margin: getMargin(
          right: 16,
        ),
        padding: getPadding(
          left: 14,
          top: 5,
          right: 14,
          bottom: 5,
        ),
        decoration: AppDecoration.txtOutlineGray20002.copyWith(
          borderRadius: BorderRadiusStyle.txtRoundedBorder7,
        ),
        child: Text(
          "lbl_all".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsRegular14Black900.copyWith(
            height: getVerticalSize(
              0.71,
            ),
          ),
        ),
      ),
    );
  }
}
