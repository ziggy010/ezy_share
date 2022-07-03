import 'package:ezy_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/aboutUsIcons.dart';

class AboutScreen extends StatelessWidget {
  static const String id = 'AboutScren';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Easy Share',
              style: kAboutTextStyle,
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Version 1.1.2',
              style: kAboutVersion,
            ),
            SizedBox(
              height: 60.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AboutIcons(
                  specificIcon: 'instagram',
                ),
                SizedBox(
                  width: 20.w,
                ),
                AboutIcons(
                  specificIcon: 'twitter',
                ),
                SizedBox(
                  width: 20.w,
                ),
                AboutIcons(
                  specificIcon: 'globe',
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ezyshare.com',
                  style: kAboutSub,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Support',
                  style: kAboutSub,
                ),
              ],
            ),
            SizedBox(
              height: 250.h,
            ),
          ],
        ),
      ),
    );
  }
}
