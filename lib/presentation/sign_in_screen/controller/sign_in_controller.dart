import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController group963Controller = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    group963Controller.dispose();
  }
}
