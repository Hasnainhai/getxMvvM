import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/utils/utils.dart';
import 'package:getxmvvm/view_modal/controller/login/login_controller.dart';

class InutEmailWidget extends StatefulWidget {
  const InutEmailWidget({super.key});

  @override
  State<InutEmailWidget> createState() => _InutEmailWidgetState();
}

class _InutEmailWidgetState extends State<InutEmailWidget> {
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextFormField(
        controller: loginController.emailController.value,
        focusNode: loginController.emailFocusNode.value,
        decoration: InputDecoration(
          hintText: 'Email'.tr,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            Utils.snackBar('error', value.toString());
          }
        },
        onFieldSubmitted: (value) {
          Utils.fieldFocusChange(context, loginController.emailFocusNode.value,
              loginController.passwordFocusNode.value);
        },
      );
    });
  }
}
