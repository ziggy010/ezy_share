import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/reusable_cards_normal.dart';
import '../components/reusable_cards_premium.dart';

class ChooseCardScreen extends StatefulWidget {
  static const String id = 'ChooseCardScreen';

  @override
  State<ChooseCardScreen> createState() => _ChooseCardScreenState();
}

enum inPage {
  normal,
  premium,
}

class _ChooseCardScreenState extends State<ChooseCardScreen> {
  inPage pageClicked = inPage.normal;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Choose your cards'),
      ),
      backgroundColor: Colors.grey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          //next list
          Container(
            height: 1.h,
            color: Colors.grey.shade600,
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            height: 600.h,
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
                            primary: Colors.grey.shade900, // Background color
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
                        ReusableCardsPremium(
                          fullname: 'Risab tajale',
                          companyName: 'EZY SHARE',
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        ReusableCardsPremium(
                          fullname: 'Risab tajale',
                          companyName: 'EZY SHARE',
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        ReusableCardsPremium(
                          fullname: 'Risab tajale',
                          companyName: 'EZY SHARE',
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
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
          height: 500.0.h,
          width: 300.0.w,
        ),
      ],
    ),
  );
}
