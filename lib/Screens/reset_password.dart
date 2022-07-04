import 'package:ezy_share/components/reusable_button.dart';
import 'package:ezy_share/components/text_fields.dart';
import 'package:ezy_share/constant.dart';
import 'package:ezy_share/Screens/home.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  static const String id = 'ResetPassword';

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool passwordReveal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Colors.grey.shade900,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Reset Password',
                    style: kOnboardingText.copyWith(fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  ReusableTextField(
                    icon: GestureDetector(
                      onTap: () {
                        setState(() {
                          passwordReveal = !passwordReveal;
                        });
                      },
                      child: Icon(
                        passwordReveal
                            ? Icons.remove_red_eye_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.white,
                      ),
                    ),
                    ObscureText: passwordReveal ? true : false,
                    hintText: 'Old Password',
                    labelText: 'Old Password',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ReusableTextField(
                    icon: GestureDetector(
                      onTap: () {
                        setState(() {
                          passwordReveal = !passwordReveal;
                        });
                      },
                      child: Icon(
                        passwordReveal
                            ? Icons.remove_red_eye_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.white,
                      ),
                    ),
                    ObscureText: passwordReveal ? true : false,
                    hintText: 'New Password',
                    labelText: 'New Password',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ReusableTextField(
                    icon: GestureDetector(
                      onTap: () {
                        setState(() {
                          passwordReveal = !passwordReveal;
                        });
                      },
                      child: Icon(
                        passwordReveal
                            ? Icons.remove_red_eye_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.white,
                      ),
                    ),
                    ObscureText: passwordReveal ? true : false,
                    hintText: 'Re enter New Password',
                    labelText: 'Re enter New Password',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Container(
                            height: 65,
                            child: ReusableButton(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home())),
                              specificColor: Colors.grey.shade200,
                              specificText: 'Reset Password',
                              textStyle: kButtonText,
                              width: 300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
