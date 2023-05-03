import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/rounded_button.dart';
import '../../view_modal/controller/login/login_controller.dart';

class LoginButtonWidget extends StatefulWidget {
  const LoginButtonWidget({super.key});

  @override
  State<LoginButtonWidget> createState() => _LoginButtonWidgetState();
}

class _LoginButtonWidgetState extends State<LoginButtonWidget> {
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return RoundedButton(
        title: 'login'.tr,
        loading: loginController.loading.value,
        onpress: () {
          loginController.loginApi();
          // Utils.snackBar('error', 'Login issue');
        },
      );
    });
  }
}
