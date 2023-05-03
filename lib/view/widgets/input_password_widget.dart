import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/utils/utils.dart';
import 'package:getxmvvm/view_modal/controller/login/login_controller.dart';

class InputPasswordWidget extends StatefulWidget {
  const InputPasswordWidget({super.key});

  @override
  State<InputPasswordWidget> createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextFormField(
        focusNode: loginController.passwordFocusNode.value,
        controller: loginController.passwordController.value,
        decoration: InputDecoration(
          hintText: 'password'.tr,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            Utils.snackBar('error', value.toString());
          }
        },
        onFieldSubmitted: (value) {
          Utils.fieldFocusChange(
              context,
              loginController.passwordFocusNode.value,
              loginController.emailFocusNode.value);
        },
      );
    });
  }
}
