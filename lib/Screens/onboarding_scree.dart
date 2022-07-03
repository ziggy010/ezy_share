import 'package:ezy_share/Screens/homepage.dart';
import 'package:ezy_share/Screens/onboarding_screens/onboarding_screen1.dart';
import 'package:ezy_share/Screens/onboarding_screens/onboarding_screen2.dart';
import 'package:ezy_share/Screens/onboarding_screens/onboarding_screen3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ezy_share/constant.dart';

class OnboardingScreen extends StatefulWidget {
  static const String id = 'OnboardingScreen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  bool isOnLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                if (index == 2) {
                  isOnLastPage = true;
                } else {
                  isOnLastPage = false;
                }
              });
            },
            children: [
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          ),
          //Dot indicator

          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Skip text
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    'SKIP',
                    style: kSkip_nextTextStyle,
                  ),
                ),
                SmoothPageIndicator(
                  onDotClicked: (index) {
                    _controller.jumpToPage(index);
                  },
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.white,
                  ),
                ),
                isOnLastPage
                    ? GestureDetector(
                        onTap: () async {
                          await Navigator.pushNamed(context, HomePage.id);
                          Navigator.pop(context);
                        },
                        child: Text(
                          'DONE',
                          style: kSkip_nextTextStyle,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          'NEXT',
                          style: kSkip_nextTextStyle,
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
