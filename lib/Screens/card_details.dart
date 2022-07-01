import 'package:ezy_share/Screens/sign_in.dart';
import 'package:ezy_share/components/reusable_button.dart';
import 'package:ezy_share/components/text_fields.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class CardScreen extends StatelessWidget {
  static const String id = 'cardScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 70),
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
                            'Fill all your details',
                            style: kBodyTextStyle.copyWith(letterSpacing: 3.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'For your new',
                            style: kWelcomeText.copyWith(letterSpacing: 3.0),
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
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    child: Column(
                      children: [
                        ReusableTextField(
                          hintText: 'First name',
                          labelText: 'First name',
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                          hintText: 'Middle name',
                          labelText: 'Middle name',
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                          hintText: 'Last name',
                          labelText: 'Last name',
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                          hintText: 'Profession',
                          labelText: 'Profession',
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                          hintText: 'Contact number',
                          labelText: 'Contact number',
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                          hintText: 'Email',
                          labelText: 'Email',
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                          hintText: 'Location',
                          labelText: 'Location',
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                          hintText: 'Social media link',
                          labelText: 'Social media link',
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableTextField(
                          hintText: 'Social media link',
                          labelText: 'Social media link',
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
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
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 50,
                        ),
                        child: ReusableButton(
                          specificText: 'Register',
                          specificColor: Colors.white,
                          textStyle: kButtonText,
                          width: 300,
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
