import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayur/pages/login_page.dart';
import 'package:sayur/templates/app_color.dart';
import 'package:sayur/templates/app_font.dart';
import 'package:sayur/templates/app_size.dart';
import 'package:sayur/templates/custom_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(AppSize.globalMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Image(
              image: AssetImage('assets/images/lettuce_groupped.png'),
              width: 100,
            ),
            SizedBox(height: 30),
            Text(
              'Start your healthy life now',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.blackColor,
                fontSize: 30,
                fontFamily: AppFont.bigTitle,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.blackColor,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline),
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.secondaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.secondaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.secondaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'SIGN UP',
              color: AppColor.primaryColor,
              fontColor: AppColor.whiteColor,
              onTap: () {},
            ),
            SizedBox(height: 60),
            Text(
              'Already have an account?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.greyColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'LOGIN',
              color: AppColor.lightGreyColor,
              fontColor: AppColor.greyColor,
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
