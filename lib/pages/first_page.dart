import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayur/pages/login_page.dart';
import 'package:sayur/pages/register_page.dart';
import 'package:sayur/templates/app_color.dart';
import 'package:sayur/templates/app_font.dart';
import 'package:sayur/templates/app_size.dart';
import 'package:sayur/templates/custom_button.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(AppSize.globalMargin),
        color: AppColor.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Image(
              image: AssetImage('assets/images/lettuce_groupped.png'),
              width: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Sayur',
                style: TextStyle(
                  color: AppColor.whiteColor,
                  fontSize: 40,
                  fontFamily: AppFont.logoFont,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              'Healthy Food Delivery'.toUpperCase(),
              style: TextStyle(
                color: AppColor.whiteColor,
                fontWeight: FontWeight.w500,
                fontSize: 12,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 150),
            Text(
              'Healthy Food, For\nBreakfast',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.whiteColor,
                fontSize: 30,
                fontFamily: AppFont.bigTitle,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.whiteColor,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 50),
            CustomButton(
              text: 'SIGN UP',
              color: AppColor.accentColor,
              fontColor: AppColor.whiteColor,
              onTap: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()))
              },
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'LOGIN',
              color: AppColor.secondaryColor,
              fontColor: AppColor.whiteColor,
              onTap: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()))
              },
            ),
          ],
        ),
      ),
    );
  }
}
