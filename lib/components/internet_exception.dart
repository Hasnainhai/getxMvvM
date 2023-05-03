import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/res/colors/colors.dart';

class InternetException extends StatefulWidget {
  const InternetException({super.key, required this.onpress});
  final VoidCallback onpress;
  @override
  State<InternetException> createState() => _InternetExceptionState();
}

class _InternetExceptionState extends State<InternetException> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height * .15),
          const Icon(
            Icons.cloud_off,
            color: AppColor.redcolor,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                'internet_exception'.tr,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: height * .15),
          InkWell(
            onTap: widget.onpress,
            child: Container(
              height: 46,
              width: 144,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
              ),
              child: const Center(
                child: Text(
                  'Retry',
                  style: TextStyle(color: AppColor.whitecolor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
