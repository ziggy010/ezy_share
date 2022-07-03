import 'package:ezy_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableCardsNormal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(17.r),
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
                'Ezy Share',
                style: GoogleFonts.bebasNeue(textStyle: kCardCompanyName),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Share and connect',
                style: GoogleFonts.poppins(
                  textStyle: kCardCompanyMotive,
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
                'Sunny Thakuri',
                style: kCardName,
              ),
              Text(
                'App Developer',
                style: kProfession,
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
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          info,
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 9.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
