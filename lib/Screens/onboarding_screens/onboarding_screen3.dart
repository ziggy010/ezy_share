import 'package:ezy_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Share your business cards in a single click without any printing cost..',
                  style: kBodyTextStyle.copyWith(fontSize: 20.sp),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Lottie.network(
                  'https://assets2.lottiefiles.com/packages/lf20_imz0kwa5.json',
                  height: 230.h,
                  errorBuilder: (context, error, stackTrace) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        '*Error loading image*, connect to internet.',
                        style: kErrorText,
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
