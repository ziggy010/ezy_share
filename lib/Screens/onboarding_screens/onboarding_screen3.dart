import 'package:ezy_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Share your business cards in a single click without any printing cost..',
                  style: kBodyTextStyle.copyWith(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Lottie.network(
                  'https://assets2.lottiefiles.com/packages/lf20_imz0kwa5.json',
                  height: 230,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
