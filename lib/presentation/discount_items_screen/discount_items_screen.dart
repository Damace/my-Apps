import '../discount_items_screen/widgets/discount_items_item_widget.dart';
import 'controller/discount_items_controller.dart';
import 'models/discount_items_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DiscountItemsScreen extends GetWidget<DiscountItemsController> {
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
                    onTap: onTapArrowleft17),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_discount_items".tr)),
            body: Padding(
                padding: getPadding(left: 16, top: 24, right: 16),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(14.00));
                    },
                    itemCount: controller.discountItemsModelObj.value
                        .discountItemsItemList.length,
                    itemBuilder: (context, index) {
                      DiscountItemsItemModel model = controller
                          .discountItemsModelObj
                          .value
                          .discountItemsItemList[index];
                      return DiscountItemsItemWidget(model);
                    })))));
  }

  onTapArrowleft17() {
    Get.back();
  }
}
