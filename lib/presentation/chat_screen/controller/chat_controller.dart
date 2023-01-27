import 'package:alex_s_application2/core/app_export.dart';
import 'package:alex_s_application2/presentation/chat_screen/models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatController extends GetxController {
  TextEditingController group1237Controller = TextEditingController();

  TextEditingController group1237OneController = TextEditingController();

  TextEditingController group1242Controller = TextEditingController();

  TextEditingController group1237TwoController = TextEditingController();

  TextEditingController group1314Controller = TextEditingController();

  Rx<ChatModel> chatModelObj = ChatModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1237Controller.dispose();
    group1237OneController.dispose();
    group1242Controller.dispose();
    group1237TwoController.dispose();
    group1314Controller.dispose();
  }
}
