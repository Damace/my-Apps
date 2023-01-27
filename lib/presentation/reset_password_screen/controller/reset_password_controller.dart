import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/reset_password_screen/models/reset_password_model.dart';
import 'package:flutter/material.dart';

class ResetPasswordController extends GetxController {
  TextEditingController group964Controller = TextEditingController();

  TextEditingController group965Controller = TextEditingController();

  Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group964Controller.dispose();
    group965Controller.dispose();
  }
}
