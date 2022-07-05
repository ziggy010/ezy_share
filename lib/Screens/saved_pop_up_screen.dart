import 'package:ezy_share/Screens/pop_up_screen1.dart';
import 'package:ezy_share/Screens/pop_up_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PopUpScreen extends StatelessWidget {
  static const String id = 'PopUpScreen';
  PageController _controller = PageController();

  final String fullname;
  final String companyName;
  final String profession;
  final String phoneNumber;
  final String email;
  final String website;
  final String companyMotive;

  PopUpScreen({
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('User'),
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade900,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 120.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500.h,
                    width: 380.w,
                    child: PageView(
                      controller: _controller,
                      children: [
                        PopUpScreen1(
                          fullname: fullname,
                          companyMotive: companyMotive,
                          companyName: companyName,
                          profession: profession,
                          phoneNumber: phoneNumber,
                          email: email,
                          website: website,
                        ),
                        PopUpScreen2(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 2,
                    effect: SwapEffect(
                      activeDotColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PopUpCardInlineDetails extends StatelessWidget {
  final IconData specificIcon;
  final String content;

  PopUpCardInlineDetails({required this.specificIcon, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          specificIcon,
          size: 18.sm,
          color: Colors.white,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          content,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
