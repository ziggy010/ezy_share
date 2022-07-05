import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/reusable_cards_normal.dart';
import '../components/reusable_cards_premium.dart';

class ChooseCardScreen extends StatefulWidget {
  static const String id = 'ChooseCardScreen';

  const ChooseCardScreen({Key? key}) : super(key: key);

  @override
  State<ChooseCardScreen> createState() => _ChooseCardScreenState();
}

enum inPage {
  normal,
  premium,
}

class _ChooseCardScreenState extends State<ChooseCardScreen> {
  inPage pageClicked = inPage.normal;
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Choose your cards'),
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
          SizedBox(
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
                SizedBox(
                  height: 240.h,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        ReusableCardsNormal(),
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
                SizedBox(
                  height: 240.h,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        ReusableCardsPremium(
                          fullname: 'Risab Tajale',
                          companyName: 'EZY SHARE',
                          companyMotive: 'Share and connect',
                          profession: 'App Developer',
                          phoneNumber: '+977 9813110577',
                          email: 'tajale01@gmail.com',
                          website: 'shresthaventures.com',
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        ReusableCardsPremium(
                          fullname: 'Risab Tajale',
                          companyName: 'EZY SHARE',
                          companyMotive: 'Share and connect',
                          profession: 'App Developer',
                          phoneNumber: '+977 9813110577',
                          email: 'tajale01@gmail.com',
                          website: 'shresthaventures.com',
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        ReusableCardsPremium(
                          fullname: 'Risab Tajale',
                          companyName: 'EZY SHARE',
                          companyMotive: 'Share and connect',
                          profession: 'App Developer',
                          phoneNumber: '+977 9813110577',
                          email: 'tajale01@gmail.com',
                          website: 'shresthaventures.com',
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

  const PageSeperator({
    Key? key,
    required this.specificText,
    required this.textColor,
    required this.borderColor,
  }) : super(key: key);

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
