import '../search_screen/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item_model.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/custom_bottom_bar.dart';
import 'package:alex_s_application2/widgets/custom_floating_button.dart';
import 'package:alex_s_application2/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends GetWidget<SearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 16,
                top: 11,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 139,
                    ),
                    child: Text(
                      "lbl_search".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18Black900.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  CustomSearchView(
                    width: 343,
                    focusNode: FocusNode(),
                    controller: controller.group1305Controller,
                    hintText: "lbl_search".tr,
                    margin: getMargin(
                      top: 35,
                    ),
                    prefix: Container(
                      margin: getMargin(
                        all: 16,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearchGray500,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        48.00,
                      ),
                    ),
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          15.00,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          controller.group1305Controller.clear;
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        48.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Text(
                      "lbl_recent_search".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18Black900.copyWith(
                        height: getVerticalSize(
                          0.67,
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 12,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashqnuur0o5x8,
                            height: getSize(
                              58.00,
                            ),
                            width: getSize(
                              58.00,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashqnuur0o5x858x58,
                            height: getSize(
                              58.00,
                            ),
                            width: getSize(
                              58.00,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                            margin: getMargin(
                              left: 24,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashqnuur0o5x81,
                            height: getSize(
                              58.00,
                            ),
                            width: getSize(
                              58.00,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                            margin: getMargin(
                              left: 24,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashqnuur0o5x82,
                            height: getSize(
                              58.00,
                            ),
                            width: getSize(
                              58.00,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                            margin: getMargin(
                              left: 24,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashqnuur0o5x83,
                            height: getSize(
                              58.00,
                            ),
                            width: getSize(
                              58.00,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                            margin: getMargin(
                              left: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 36,
                    ),
                    child: Text(
                      "msg_items_that_you".tr,
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
                      top: 10,
                      right: 16,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              14.00,
                            ),
                          );
                        },
                        itemCount: controller
                            .searchModelObj.value.searchItemList.length,
                        itemBuilder: (context, index) {
                          SearchItemModel model = controller
                              .searchModelObj.value.searchItemList[index];
                          return SearchItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
        floatingActionButton: CustomFloatingButton(
          height: 44,
          width: 32,
          child: CustomImageView(
            svgPath: ImageConstant.imgSearchOrange700,
            height: getVerticalSize(
              22.00,
            ),
            width: getHorizontalSize(
              16.00,
            ),
          ),
        ),
      ),
    );
  }
}
