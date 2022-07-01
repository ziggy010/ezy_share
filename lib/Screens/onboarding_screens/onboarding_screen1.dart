import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ezy_share/constant.dart';

import '../../constant.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Want to stack all your business card in one place? ',
                  style: kOnboardingText,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_qmfs6c3i.json',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
