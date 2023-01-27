import 'controller/verification_code_controller.dart';
import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alex_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:alex_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alex_s_application2/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCodeScreen extends GetWidget<VerificationCodeController> {
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
                    onTap: onTapArrowleft6),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_verification_co".tr)),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 28, right: 16, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("msg_enter_the_code".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16
                                  .copyWith(height: getVerticalSize(1.17)))),
                      Padding(
                          padding: getPadding(top: 52, right: 78),
                          child: Text("msg_did_t_receive_a".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular15Black900
                                  .copyWith(height: getVerticalSize(0.89)))),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Obx(() => PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 5,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(27),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: getVerticalSize(0.49)),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(52.00),
                                  fieldWidth: getHorizontalSize(52.00),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10.00)),
                                  selectedFillColor: ColorConstant.gray20001,
                                  activeFillColor: ColorConstant.gray20001,
                                  inactiveFillColor: ColorConstant.gray20001,
                                  inactiveColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  selectedColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  activeColor:
                                      ColorConstant.fromHex("#1212121D"))))),
                      Padding(
                          padding: getPadding(top: 10, right: 15),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_did_t_receive_a".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: getVerticalSize(1.44))),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: getVerticalSize(1.44))),
                                TextSpan(
                                    text: "lbl_resent_code".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(13),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: getVerticalSize(1.44)))
                              ]),
                              textAlign: TextAlign.left)),
                      CustomButton(
                          height: 52,
                          width: 343,
                          text: "lbl_confirm".tr,
                          margin: getMargin(top: 97, bottom: 5),
                          onTap: onTapConfirm)
                    ]))));
  }

  onTapConfirm() {
    Get.toNamed(AppRoutes.resetPasswordScreen);
  }

  onTapArrowleft6() {
    Get.back();
  }
}
