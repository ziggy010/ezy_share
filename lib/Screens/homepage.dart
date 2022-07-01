import 'package:ezy_share/Screens/register_screen.dart';
import 'package:ezy_share/Screens/sign_in.dart';
import 'package:ezy_share/constant.dart';
import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                'lib/image/qr-code.png',
                height: 70,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/image/hero1.png',
                  height: 250,
                ),
                const SizedBox(
                  width: 50,
                ),
                Image.asset(
                  'lib/image/hero2.png',
                  height: 250,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Stack all your business cards in a single app.',
                style: kHomePageText,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Now you can store all your business cards in a single app without storing in your wallet, and losing it while you need it the most.',
                style: kHomePageSubText,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableButton(
                    specificText: 'Register',
                    specificColor: Colors.white,
                    textStyle: kButtonText,
                    onTap: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    }),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignIn.id);
                  },
                  child: ReusableButton(
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
