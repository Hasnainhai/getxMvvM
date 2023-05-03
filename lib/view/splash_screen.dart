import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/view_modal/SplashServices/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = Get.put(SplashServices());
  @override
  void initState() {
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'welcome_screen'.tr,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));
  }
}
