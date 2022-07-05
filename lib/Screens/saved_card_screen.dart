import 'package:ezy_share/Screens/home.dart';
import 'package:ezy_share/Screens/homepage.dart';
import 'package:ezy_share/Screens/qr_code.dart';
import 'package:ezy_share/components/reusable_cards_premium.dart';
import 'package:ezy_share/components/text_fields.dart';
import 'package:ezy_share/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCard extends StatefulWidget {
  static const String id = 'SavedCardScreen';

  @override
  State<SavedCard> createState() => _SavedCardState();
}

class _SavedCardState extends State<SavedCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Saved cards',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontSize: 26.sp,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
            bottom: 50,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 23,
                  ),
                  child: Container(
                    height: 90.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ReusableTextField(
                            hintText: 'Search',
                            labelText: 'Search',
                            onChanged: (value) {},
                            icon: Icon(
                              Icons.search_outlined,
                              color: Colors.grey.shade600,
                              size: 40.sm,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 500.h,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      ReusableCardsPremium(
                        fullname: 'Bibek Shrestha',
                        companyName: 'abc company',
                        companyMotive: 'Share and connect',
                        profession: 'App Developer',
                        phoneNumber: '+977 9813110577',
                        email: 'tajale01@gmailw.com',
                        website: 'shresthaventures.com',
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      ReusableCardsPremium(
                        fullname: 'Sunny Thakuri',
                        companyName: 'Shrestha Ventures',
                        companyMotive: 'Share and connect',
                        profession: 'Manager',
                        phoneNumber: '+977 98********',
                        email: 'shresthaventures@gmail.com',
                        website: 'shresthaventures.com',
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      ReusableCardsPremium(
                        fullname: 'Risab Tajale',
                        companyName: 'def company',
                        companyMotive: 'Share and connect',
                        profession: 'App Developer',
                        phoneNumber: '+977 9813110577',
                        email: 'tajale01@gmail.com',
                        website: 'shresthaventures.com',
                      ),
                    ],
                  ),
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
