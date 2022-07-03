import 'package:ezy_share/components/reusable_cards_premium.dart';
import 'package:ezy_share/components/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCard extends StatelessWidget {
  static const String id = 'SavedCardScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: true,
                      child: Text(
                        'Saved cards',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontSize: 26.sp,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                      size: 30.sm,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Column(
                  children: [
                    ReusableCardsPremium(),
                    SizedBox(
                      height: 30.h,
                    ),
                    ReusableCardsPremium(),
                    SizedBox(
                      height: 30.h,
                    ),
                    ReusableCardsPremium(),
                    SizedBox(
                      height: 30.h,
                    ),
                    ReusableCardsPremium(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
