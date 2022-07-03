// ignore_for_file: unnecessary_new

import 'package:ezy_share/Screens/profile_screen.dart';
import 'package:ezy_share/Screens/saved_card_screen.dart';
import 'package:ezy_share/components/reusable_cards_premium.dart';
import 'package:ezy_share/constant.dart';
import 'package:ezy_share/Screens/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:ezy_share/Screens/navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/reusable_cards_normal.dart';

class Home extends StatefulWidget {
  @override
  static const String id = 'SavedCardScreen';
  _HomeState createState() => _HomeState();
}

enum inPage {
  normal,
  premium,
}

class _HomeState extends State<Home> {
  inPage pageClicked = inPage.normal;
  PageController _controller = PageController();
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
          child: Column(
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
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        'lib/image/profile.png',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageClicked = inPage.normal;
                        _controller.jumpToPage(0);
                      });
                    },
                    child: PageSeperator(
                      specificText: 'Normal',
                      textColor: pageClicked == inPage.normal
                          ? Colors.green
                          : Colors.grey.shade500,
                      borderColor: pageClicked == inPage.normal
                          ? Colors.green
                          : Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageClicked = inPage.premium;
                        _controller.jumpToPage(1);
                      });
                    },
                    child: PageSeperator(
                      specificText: 'Premium',
                      textColor: pageClicked == inPage.premium
                          ? Colors.green
                          : Colors.grey.shade500,
                      borderColor: pageClicked == inPage.premium
                          ? Colors.green
                          : Colors.transparent,
                    ),
                  ),
                ],
              ),
              Container(
                height: 1.h,
                color: Colors.grey.shade600,
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                height: 465.h,
                child: PageView(
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      value == 0
                          ? pageClicked = inPage.normal
                          : pageClicked = inPage.premium;
                    });
                  },
                  children: [
                    Container(
                      height: 240.h,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary:
                                    Colors.grey.shade900, // Background color
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      _buildAboutDialog(context),
                                );
                              },
                              child: ReusableCardsNormal(),
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            ReusableCardsNormal(),
                            SizedBox(
                              height: 40.h,
                            ),
                            ReusableCardsNormal(),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 240.h,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            ReusableCardsPremium(),
                            SizedBox(
                              height: 40.h,
                            ),
                            ReusableCardsPremium(),
                            SizedBox(
                              height: 40.h,
                            ),
                            ReusableCardsPremium(),
                            SizedBox(
                              height: 40.h,
                            ),
                            ReusableCardsPremium(),
                            SizedBox(
                              height: 15.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.translate(
        offset: const Offset(0, -10),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScanQrPage())),
          elevation: 2.0,
          child: Icon(
            Icons.qr_code_rounded,
            size: 48.sm,
            color: Colors.grey.shade500,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationView(),
    );
  }

  Widget _buildAboutDialog(BuildContext context) {
    return Container(
      child: new AlertDialog(
        backgroundColor: Colors.grey.shade900,
        title: const Text(''),
        content: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            _buildLogoAttribution(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoAttribution() {
    return Container(
      child: new Row(
        children: <Widget>[
          new Image.asset(
            "lib/image/card.jpg",
            height: 500.0,
            width: 300.0,
          ),

          // const Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 12.0),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class PageSeperator extends StatelessWidget {
  final String specificText;
  final Color textColor;
  final Color borderColor;

  PageSeperator({
    required this.specificText,
    required this.textColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: borderColor,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Text(
          specificText,
          style: TextStyle(
            color: textColor,
            fontSize: 17,
            fontFamily: 'poppins',
          ),
        ),
      ),
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
            Icon(
              Icons.home,
              size: 40,
              color: Colors.grey.shade500,
            ),
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
