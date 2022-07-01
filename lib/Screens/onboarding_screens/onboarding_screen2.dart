import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ezy_share/constant.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        'No worries, now we got your back!',
                        style: kOnboardingText.copyWith(fontSize: 28),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'With this new app, you can easily store all your business cards in single app in a few clicks!',
                        style: kWelcomeText.copyWith(fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Lottie.network(
                        'https://assets4.lottiefiles.com/packages/lf20_oj5zw0yb.json',
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
