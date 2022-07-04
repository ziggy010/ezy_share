import 'package:ezy_share/components/reusable_cards_premium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BussinessCardHomeScreen extends StatelessWidget {
  final String cardType;

  BussinessCardHomeScreen({required this.cardType});
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
          height: 30.h,
        ),
        ReusableCardsPremium(
          fullname: 'Risab tajale',
          companyName: 'Ezy share',
        ),
      ],
    );
  }
}
