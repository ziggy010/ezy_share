import 'package:ezy_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableCardsPremium extends StatelessWidget {
  final String fullname;
  final String companyName;

  ReusableCardsPremium({required this.fullname, required this.companyName});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(17.r),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Company logo and name,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/image/cardLogo.png',
                height: 90.h,
                width: 90.h,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                companyName,
                style: GoogleFonts.bebasNeue(
                    textStyle: kCardCompanyName.copyWith(
                  color: Colors.grey.shade100,
                )),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Share and connect',
                style: GoogleFonts.poppins(
                  textStyle: kCardCompanyMotive.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              //name text
              Text(
                fullname,
                style: kCardName.copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                'App Developer',
                style: kProfession.copyWith(color: Colors.white),
              ),
              SizedBox(
                height: 10.h,
              ),
              CardDetailLines(
                specificIcon: Icons.call,
                info: '+977 9813110577',
              ),
              SizedBox(
                height: 10.h,
              ),
              CardDetailLines(
                specificIcon: Icons.email_outlined,
                info: 'tajale01@gmail.com',
              ),
              SizedBox(
                height: 10.h,
              ),
              CardDetailLines(
                specificIcon: Icons.language_outlined,
                info: 'shresthaventures.com',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardDetailLines extends StatelessWidget {
  final IconData specificIcon;
  final String info;

  CardDetailLines({required this.specificIcon, required this.info});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          specificIcon,
          size: 12.sm,
          color: Colors.white,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          info,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontSize: 9.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
