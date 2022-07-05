// ignore_for_file: unnecessary_new

import 'package:ezy_share/Screens/choose_cards_screen.dart';
import 'package:ezy_share/Screens/document_scan.dart';
import 'package:ezy_share/Screens/homepage.dart';
import 'package:ezy_share/Screens/profile_screen.dart';
import 'package:ezy_share/Screens/saved_card_screen.dart';
import 'package:ezy_share/Screens/qr_code.dart';
import 'package:ezy_share/components/citizenship_card.dart';
import 'package:ezy_share/components/reusable_cards_premium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/dashboard_raise_buttons.dart';
import '../components/homepage_cards.dart';

class Home extends StatefulWidget {
  @override
  static const String id = 'Home.id';
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _controller = PageController();
  bool isOnHomePage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 30.h,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.grey.shade900,
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
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hi, Bibek!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27.sp,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Profile.id);
                          },
                          child: Container(
                            height: 60.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(
                              'lib/image/profile.png',
                              height: 60.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DashboardButtons(
                      buttonText: 'Change your card',
                      onPressed: () {
                        Navigator.pushNamed(context, ChooseCardScreen.id);
                      },
                    ),
                    DashboardButtons(
                      buttonText: 'Your saved cards',
                      onPressed: () {
                        Navigator.pushNamed(context, SavedCard.id);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'My documents',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 280.h,
                child: PageView(
                  controller: _controller,
                  children: [
                    BussinessCardHomeScreen(
                      cardType: 'Business Card',
                    ),
                    CitizenshipCard(
                      cardType: 'Citizenship Card',
                      specificImage: Image.asset(
                        'lib/image/nagrita.jpeg',
                      ),
                    ),
                    BussinessCardHomeScreen(
                      cardType: 'License',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SpeedDial(
          direction: SpeedDialDirection.up,
          icon: Icons.add,
          activeIcon: Icons.close,
          backgroundColor: Colors.grey.shade800,
          foregroundColor: Colors.white,
          activeBackgroundColor: Colors.red,
          activeForegroundColor: Colors.white,
          visible: true,
          closeManually: false,
          curve: Curves.bounceIn,
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          elevation: 8.0,
          shape: const CircleBorder(),
          children: [
            SpeedDialChild(
              child: const Icon(Icons.qr_code_2_rounded),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              label: 'QR scan',
              labelBackgroundColor: Colors.grey.shade800,
              labelStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            SpeedDialChild(
              child: const Icon(Icons.document_scanner),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              label: 'Nagarikta ',
              labelBackgroundColor: Colors.grey.shade800,
              labelStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
              onTap: () {
                Navigator.pushNamed(context, DocumentScan.id);
              },
            ),
            SpeedDialChild(
              child: const Icon(Icons.document_scanner_rounded),
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              label: 'license',
              labelBackgroundColor: Colors.grey.shade800,
              labelStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
              onTap: () {
                Navigator.pushNamed(context, DocumentScan.id);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationView(),
    );
  }
}

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0.0, -10),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: ShapeDecoration(
          color: Colors.grey.shade800,
          shape: MyBorderShape(),
          shadows: [
            BoxShadow(
                color: Colors.black38, blurRadius: 8.0.r, offset: Offset(1, 1)),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.home, size: 40, color: Colors.grey.shade400),
            _buildMiddleTabItem(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SavedCard.id);
              },
              child: Icon(
                Icons.save_rounded,
                size: 40,
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildMiddleTabItem() {
  return Expanded(
    child: SizedBox(
      height: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          SizedBox(height: 24),
        ],
      ),
    ),
  );
}

class MyBorderShape extends ShapeBorder {
  MyBorderShape();

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  // Path? getInnerPath(Rect rect, {required TextDirection textDirection}) => null;

  double holeSize = 70;

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    (rect.height);
    return Path.combine(
      PathOperation.difference,
      Path()
        ..addRRect(
            RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 2)))
        ..close(),
      Path()
        ..addOval(Rect.fromCenter(
            center: rect.center.translate(0, -rect.height / 2),
            height: holeSize,
            width: holeSize))
        ..close(),
    );
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    throw UnimplementedError();
  }
}
