import 'package:ezy_share/Screens/saved_pop_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class PopUpScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Container(
        height: 450.h,
        width: 230.w,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(
            20.r,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 3),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.grey.shade800,
              offset: Offset(-3, -3),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 30.w),
          child: Column(
            children: [
              Text(
                'QR CODE',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 20,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              Image.asset(
                'lib/image/qr-code.png',
                color: Colors.grey.shade500,
                height: 200.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
