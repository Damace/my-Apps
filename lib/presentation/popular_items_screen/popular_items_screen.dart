import '../popular_items_screen/widgets/popular_items_item_widget.dart';
import 'controller/popular_items_controller.dart';
import 'models/popular_items_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_bottom_bar.dart';
import 'package:alex_s_application2/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class PopularItemsScreen extends GetWidget<PopularItemsController> {
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
                    onTap: onTapArrowleft8),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_popular_items".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 13),
                      onTap: onTapSearch1)
                ]),
            body: Container(
                margin: getMargin(left: 16, top: 24, right: 16),
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(255.00),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(16.00),
                                  crossAxisSpacing: getHorizontalSize(16.00)),
                          physics: BouncingScrollPhysics(),
                          itemCount: controller.popularItemsModelObj.value
                              .popularItemsItemList.length,
                          itemBuilder: (context, index) {
                            PopularItemsItemModel model = controller
                                .popularItemsModelObj
                                .value
                                .popularItemsItemList[index];
                            return PopularItemsItemWidget(model,
                                onTapColumnunsplashzhh3wm2ko3s:
                                    onTapColumnunsplashzhh3wm2ko3s);
                          }))
                    ])),
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

  onTapColumnunsplashzhh3wm2ko3s() {
    Get.toNamed(AppRoutes.productViewScreen);
  }

  onTapArrowleft8() {
    Get.back();
  }

  onTapSearch1() {
    Get.toNamed(AppRoutes.searchScreen);
  }
}
