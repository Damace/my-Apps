import 'controller/sign_in_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:alex_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:alex_s_application2/domain/googleauth/google_auth_helper.dart';

class SignInScreen extends GetWidget<SignInController> {
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
                    onTap: onTapArrowleft2),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_let_s_sign_in".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 49, right: 16, bottom: 49),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(144.00),
                          margin: getMargin(top: 1),
                          child: Text("lbl_welcome_back".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium30
                                  .copyWith(height: getVerticalSize(0.87)))),
                      CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.nameController,
                          hintText: "lbl_name".tr,
                          margin: getMargin(top: 49)),
                      Obx(() => CustomTextFormField(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.group963Controller,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 20),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 18, right: 16, bottom: 18),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword.value
                                          ? ImageConstant.imgLocation
                                          : ImageConstant.imgLocation))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52.00)),
                          isObscureText: !controller.isShowPassword.value)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword();
                              },
                              child: Padding(
                                  padding: getPadding(top: 13),
                                  child: Text("lbl_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium14
                                          .copyWith(
                                              height:
                                                  getVerticalSize(1.33)))))),
                      CustomButton(
                          height: 52,
                          width: 343,
                          text: "lbl_sign_in".tr,
                          margin: getMargin(top: 71),
                          onTap: onTapSignin),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtDonthaveanaccount();
                              },
                              child: Padding(
                                  padding: getPadding(top: 14),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_don_t_have_an_a2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray500,
                                                fontSize: getFontSize(13),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: getVerticalSize(0.77))),
                                        TextSpan(
                                            text: "lbl_sign_up".tr,
                                            style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(13),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                height: getVerticalSize(0.77)))
                                      ]),
                                      textAlign: TextAlign.left)))),
                      Padding(
                          padding: getPadding(top: 80),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(106.00),
                                    margin: getMargin(top: 11, bottom: 8),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.black900,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1.00)))),
                                Text("msg_or_continue_wit".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14Black900
                                        .copyWith(
                                            height: getVerticalSize(0.71))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(106.00),
                                    margin: getMargin(top: 11, bottom: 8),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.black900,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1.00))))
                              ])),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: 52,
                                    width: 164,
                                    text: "lbl_google".tr,
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingT12,
                                    fontStyle: ButtonFontStyle.PoppinsRegular15,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 16),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgGoogle)),
                                    onTap: onTapGoogle),
                                CustomButton(
                                    height: 52,
                                    width: 163,
                                    text: "lbl_apple".tr,
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingT12,
                                    fontStyle: ButtonFontStyle.PoppinsRegular15,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 16),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgUimapple)))
                              ]))
                    ]))));
  }

  onTapTxtForgotPassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapTxtDonthaveanaccount() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  onTapGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapArrowleft2() {
    Get.back();
  }
}
