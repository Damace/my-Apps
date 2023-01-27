import '../explore_shop_screen/widgets/explore_shop_item_widget.dart';
import 'controller/explore_shop_controller.dart';
import 'models/explore_shop_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ExploreShopScreen extends GetWidget<ExploreShopController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10002,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 16,
            top: 29,
            right: 16,
            bottom: 29,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  222.00,
                ),
                child: Text(
                  "msg_what_products_y".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium30.copyWith(
                    height: getVerticalSize(
                      0.87,
                    ),
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  294.00,
                ),
                margin: getMargin(
                  top: 10,
                ),
                child: Text(
                  "msg_choose_which_yo".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular16.copyWith(
                    height: getVerticalSize(
                      1.17,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 35,
                  right: 9,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          12.00,
                        ),
                      );
                    },
                    itemCount: controller
                        .exploreShopModelObj.value.exploreShopItemList.length,
                    itemBuilder: (context, index) {
                      ExploreShopItemModel model = controller
                          .exploreShopModelObj.value.exploreShopItemList[index];
                      return ExploreShopItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 16,
            right: 16,
            bottom: 36,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                height: 52,
                width: 343,
                text: "lbl_explore_shop".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
