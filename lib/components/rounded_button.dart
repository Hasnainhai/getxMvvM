import 'package:flutter/material.dart';
import 'package:getxmvvm/res/colors/colors.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    super.key,
    this.loading = false,
    this.height = 46,
    this.width = 144,
    this.buttonColor = AppColor.blackcolor,
    this.textColor = AppColor.whitecolor,
    required this.title,
    required this.onpress,
  });
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onpress;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: AppColor.redcolor,
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Text(title),
              ),
      ),
    );
  }
}
