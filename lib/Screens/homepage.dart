import 'package:ezy_share/Screens/register_screen.dart';
import 'package:ezy_share/Screens/sign_in.dart';
import 'package:ezy_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/reusable_button.dart';

class HomePage extends StatelessWidget {
  static const String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Image.asset(
                'lib/image/qr-code.png',
                height: 70.h,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/image/hero1.png',
                  height: 250.h,
                ),
                SizedBox(
                  width: 50.w,
                ),
                Image.asset(
                  'lib/image/hero2.png',
                  height: 250.h,
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
              ),
              child: Text(
                'Stack all your business cards in a single app.',
                style: kHomePageText,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
              ),
              child: Text(
                'Now you can store all your business cards in a single app without storing in your wallet, and losing it while you need it the most.',
                style: kHomePageSubText,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableButton(
                    width: 150.w,
                    specificText: 'Register',
                    specificColor: Colors.white,
                    textStyle: kButtonText,
                    onTap: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    }),
                SizedBox(
                  width: 20.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignIn.id);
                  },
                  child: ReusableButton(
                    width: 150.w,
                    onTap: () {
                      Navigator.pushNamed(context, SignIn.id);
                    },
                    specificText: 'Sign in',
                    specificColor: Colors.grey.shade800,
                    textStyle: kButtonText.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
