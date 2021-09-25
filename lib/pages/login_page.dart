import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayur/pages/home_page.dart';
import 'package:sayur/pages/register_page.dart';
import 'package:sayur/templates/app_color.dart';
import 'package:sayur/templates/app_font.dart';
import 'package:sayur/templates/app_size.dart';
import 'package:sayur/templates/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              'Welcome back',
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
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
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
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'LOGIN',
              color: AppColor.primaryColor,
              onTap: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()))
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Or sign in with',
                    style: TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image(
                    image: AssetImage('assets/images/lettuce.png'),
                    width: 50,
                  ),
                ),
                SizedBox(width: 24),
                InkWell(
                  onTap: () {},
                  child: Image(
                    image: AssetImage('assets/images/lettuce.png'),
                    width: 50,
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Text(
              'Don\'t have an account?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.greyColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'CREATE AN ACCOUNT',
              color: AppColor.lightGreyColor,
              fontColor: AppColor.greyColor,
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
