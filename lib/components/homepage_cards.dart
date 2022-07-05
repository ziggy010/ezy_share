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
          fullname: 'Risab Tajale',
          companyName: 'EZY SHARE',
          companyMotive: 'Share and connect',
          profession: 'App Developer',
          phoneNumber: '+977 9813110577',
          email: 'tajale01@gmail.com',
          website: 'shresthaventures.com',
        ),
      ],
    );
  }
}
