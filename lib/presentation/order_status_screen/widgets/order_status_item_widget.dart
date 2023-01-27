import '../controller/order_status_controller.dart';
import '../models/order_status_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderStatusItemWidget extends StatelessWidget {
  OrderStatusItemWidget(this.orderStatusItemModelObj);

  OrderStatusItemModel orderStatusItemModelObj;

  var controller = Get.find<OrderStatusController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      svgPath: ImageConstant.imgGroup1341,
      height: getVerticalSize(
        249.00,
      ),
      width: getHorizontalSize(
        8.00,
      ),
    );
  }
}
