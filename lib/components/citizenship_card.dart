import 'package:flutter/material.dart';

import 'package:ezy_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CitizenshipCard extends StatelessWidget {
  final String cardType;
  final Image? specificImage;

  CitizenshipCard({required this.cardType, this.specificImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          cardType,
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 14.sp,
            fontFamily: 'poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 10.w,
            ),
            width: 330.w,
            child: specificImage,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(3, 3),
                  blurRadius: 15.r,
                  spreadRadius: 1.r,
                ),
                BoxShadow(
                  color: Colors.grey.shade800,
                  offset: Offset(-3, -3),
                  blurRadius: 15.r,
                  spreadRadius: 1.r,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
