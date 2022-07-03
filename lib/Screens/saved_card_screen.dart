import 'package:ezy_share/Screens/home.dart';
import 'package:ezy_share/Screens/homepage.dart';
import 'package:ezy_share/Screens/qr_code.dart';
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
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Home.id);
              },
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.grey.shade500,
              ),
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
