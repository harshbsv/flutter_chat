import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterchat/controllers/bindings/authController.dart';
import 'package:flutterchat/views/home.dart';
import 'package:flutterchat/views/introView.dart';
import 'package:get/get.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.user == null ? IntroView() : HomeScreen());
  }
}
