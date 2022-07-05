import 'package:ezy_share/Screens/pop_up_screen1.dart';
import 'package:ezy_share/Screens/saved_pop_up_screen.dart';
import 'package:ezy_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableCardsPremium extends StatelessWidget {
  final String fullname;
  final String companyName;
  final String profession;
  final String phoneNumber;
  final String email;
  final String website;
  final String companyMotive;

  ReusableCardsPremium({
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
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return PopUpScreen(
            fullname: fullname,
            companyMotive: companyMotive,
            companyName: companyName,
            profession: profession,
            phoneNumber: phoneNumber,
            email: email,
            website: website,
          );
        })));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Container(
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
              Expanded(
                child: Column(
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
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      companyMotive,
                      style: GoogleFonts.poppins(
                        textStyle:
                            kCardCompanyMotive.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
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
                    profession,
                    style: kProfession.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CardDetailLines(
                    specificIcon: Icons.call,
                    info: phoneNumber,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CardDetailLines(
                    specificIcon: Icons.email_outlined,
                    info: email,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CardDetailLines(
                    specificIcon: Icons.language_outlined,
                    info: website,
                  ),
                ],
              ),
              SizedBox(
                width: 5.w,
              ),
            ],
          ),
        ),
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
