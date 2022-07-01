import 'package:ezy_share/Screens/card_details.dart';
import 'package:ezy_share/Screens/sign_in.dart';
import 'package:ezy_share/components/reusable_button.dart';
import 'package:ezy_share/components/text_fields.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = 'registerScreen';

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Discover your new,',
                        style: kBodyTextStyle.copyWith(letterSpacing: 3.0),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Business card.',
                        style: kWelcomeText.copyWith(letterSpacing: 3.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                child: Column(
                  children: [
                    ReusableTextField(
                      hintText: 'Fullname',
                      labelText: 'Fullname',
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReusableTextField(
                      hintText: 'Phone number',
                      labelText: 'Phone number',
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReusableTextField(
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'Email',
                      labelText: 'Email',
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReusableTextField(
                      hintText: 'Address',
                      labelText: 'Address',
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReusableTextField(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                      ObscureText: true,
                      hintText: 'Password',
                      labelText: 'Password',
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignIn.id);
                      },
                      child: Text.rich(
                        TextSpan(
                          text: 'Already have an account?  ',
                          style: kBodySmallText,
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: kBodySmallText.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReusableButton(
                      specificText: 'More',
                      specificColor: Colors.white,
                      textStyle: kButtonText,
                      width: 300,
                      onTap: () {
                        Navigator.pushNamed(context, CardScreen.id);
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
