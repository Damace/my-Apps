import 'controller/information_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:alex_s_application2/widgets/custom_icon_button.dart';
import 'package:alex_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InformationScreen extends GetWidget<InformationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(40.00),
                    width: getSize(40.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 5, bottom: 5),
                    onTap: onTapArrowleft4),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_information".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getSize(92.00),
                              width: getSize(92.00),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse5,
                                        height: getVerticalSize(91.00),
                                        width: getHorizontalSize(92.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(46.00)),
                                        alignment: Alignment.center),
                                    CustomIconButton(
                                        height: 29,
                                        width: 30,
                                        alignment: Alignment.bottomRight,
                                        onTap: () {
                                          onTapBtnCamera();
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgCamera))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 13),
                              child: Text("lbl_anne_christion".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium20.copyWith(
                                      height: getVerticalSize(0.67))))),
                      Align(
                          alignment: Alignment.center,
                          child: Text("msg_annechristion_g".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular127
                                  .copyWith(height: getVerticalSize(1.05)))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("lbl_account_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15
                                  .copyWith(height: getVerticalSize(0.89)))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.group969Controller,
                          hintText: "lbl_anne_christion".tr,
                          margin: getMargin(top: 10)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_date_of_birth".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15
                                  .copyWith(height: getVerticalSize(0.89)))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.dateController,
                          hintText: "lbl_11_01_1997".tr,
                          margin: getMargin(top: 11)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("lbl_address".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15
                                  .copyWith(height: getVerticalSize(0.89)))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.countryController,
                          hintText: "msg_new_south_wales".tr,
                          margin: getMargin(top: 10)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_mobile_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15
                                  .copyWith(height: getVerticalSize(0.89)))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.group975Controller,
                          hintText: "lbl_9999_999_999".tr,
                          margin: getMargin(top: 11, bottom: 3),
                          textInputAction: TextInputAction.done)
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 50),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: 52,
                      width: 343,
                      text: "lbl_complete".tr,
                      onTap: onTapComplete)
                ]))));
  }

  onTapBtnCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapComplete() {
    Get.toNamed(AppRoutes.exploreShopScreen);
  }

  onTapArrowleft4() {
    Get.back();
  }
}
