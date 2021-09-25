import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayur/templates/app_color.dart';
import 'package:sayur/templates/app_size.dart';

class CustomButton extends StatelessWidget {
  String text = "";
  Color color = AppColor.primaryColor;
  Color fontColor = AppColor.whiteColor;
  Function() onTap;

  CustomButton({
    Key key,
    @required this.text,
    @required this.color,
    @required this.onTap,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontSize: AppSize.size1,
            fontWeight: FontWeight.w600,
            color: fontColor,
            letterSpacing: 1.5,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
