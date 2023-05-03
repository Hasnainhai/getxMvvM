import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:getxmvvm/res/colors/colors.dart';

class GeneralException extends StatefulWidget {
  const GeneralException({super.key});

  @override
  State<GeneralException> createState() => _GeneralExceptionState();
}

class _GeneralExceptionState extends State<GeneralException> {
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
                'general_exception'.tr,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: height * .15),
          Container(
            height: 46,
            width: 144,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.green),
            child: const Center(
              child: Text(
                'Retry',
                style: TextStyle(color: AppColor.whitecolor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
