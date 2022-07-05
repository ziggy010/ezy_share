import 'dart:ffi';

import 'package:ezy_share/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';

class FAQ extends StatefulWidget {
  static const String id = 'faq';

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  bool isFaqClicked1 = false;
  bool isFaqClicked2 = false;
  bool isFaqClicked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frequently Asked Question"),
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                'https://assets1.lottiefiles.com/packages/lf20_YVgFFr.json',
                height: 200.h,
              ),
              SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isFaqClicked1 = !isFaqClicked1;
                  });
                },
                child: Container(
                  width: 350.h,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'FAQ1',
                                style: kFaqHeading,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFaqClicked1 = !isFaqClicked1;
                                  });
                                },
                                child: Icon(
                                  isFaqClicked1
                                      ? Icons.keyboard_arrow_down_outlined
                                      : Icons.keyboard_arrow_right_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Visibility(
                            visible: isFaqClicked1 ? true : false,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  '1. faq content.',
                                  style: kFaqContent,
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  '2. faq content.',
                                  style: kFaqContent,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(12),
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
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isFaqClicked2 = !isFaqClicked2;
                  });
                },
                child: Container(
                  width: 350.h,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'FAQ1',
                                style: kFaqHeading,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFaqClicked2 = !isFaqClicked2;
                                  });
                                },
                                child: Icon(
                                  isFaqClicked2
                                      ? Icons.keyboard_arrow_down_outlined
                                      : Icons.keyboard_arrow_right_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Visibility(
                            visible: isFaqClicked2 ? true : false,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  '1. faq content.',
                                  style: kFaqContent,
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  '2. faq content.',
                                  style: kFaqContent,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(12),
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
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isFaqClicked3 = !isFaqClicked3;
                  });
                },
                child: Container(
                  width: 350.h,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'FAQ1',
                                style: kFaqHeading,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFaqClicked3 = !isFaqClicked3;
                                  });
                                },
                                child: Icon(
                                  isFaqClicked3
                                      ? Icons.keyboard_arrow_down_outlined
                                      : Icons.keyboard_arrow_right_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Visibility(
                            visible: isFaqClicked3 ? true : false,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  '1. faq content.',
                                  style: kFaqContent,
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  '2. faq content.',
                                  style: kFaqContent,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(12),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
