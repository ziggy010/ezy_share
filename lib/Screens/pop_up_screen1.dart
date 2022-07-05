import 'package:ezy_share/Screens/saved_pop_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class PopUpScreen1 extends StatelessWidget {
  final String fullname;
  final String companyName;
  final String profession;
  final String phoneNumber;
  final String email;
  final String website;
  final String companyMotive;

  PopUpScreen1({
    required this.fullname,
    required this.companyName,
    required this.profession,
    required this.phoneNumber,
    required this.email,
    required this.website,
    required this.companyMotive,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Container(
        height: 350.h,
        width: 370.w,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'lib/image/cardLogo.png',
                    height: 80.h,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    companyName,
                    style: GoogleFonts.bebasNeue(
                      textStyle: kCardCompanyName.copyWith(
                        color: Colors.grey.shade100,
                        fontSize: 32.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    companyMotive,
                    style: GoogleFonts.poppins(
                      textStyle: kCardCompanyMotive.copyWith(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    fullname,
                    style: kCardName.copyWith(
                        color: Colors.white, fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    profession,
                    style: kProfession.copyWith(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  PopUpCardInlineDetails(
                    specificIcon: Icons.phone,
                    content: phoneNumber,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  PopUpCardInlineDetails(
                    specificIcon: Icons.email_outlined,
                    content: email,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  PopUpCardInlineDetails(
                    specificIcon: Icons.language_outlined,
                    content: website,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
