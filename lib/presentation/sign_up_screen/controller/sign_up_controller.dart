import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController nameOneController = TextEditingController();

  TextEditingController group964Controller = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    nameOneController.dispose();
    group964Controller.dispose();
  }
}
