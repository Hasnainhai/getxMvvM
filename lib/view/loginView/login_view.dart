import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/components/rounded_button.dart';
import 'package:getxmvvm/utils/utils.dart';
import 'package:getxmvvm/view/widgets/LoginButton_widget.dart';
import 'package:getxmvvm/view/widgets/input_email_widget.dart';
import 'package:getxmvvm/view/widgets/input_password_widget.dart';
import 'package:getxmvvm/view_modal/controller/login/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginController = Get.put(LoginController());
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login_View'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: const [
                  InutEmailWidget(),
                  SizedBox(height: 40.0),
                  InputPasswordWidget(),
                ],
              ),
            ),
            const SizedBox(height: 46.0),
            const LoginButtonWidget(),
          ],
        ),
      ),
    );
  }
}
