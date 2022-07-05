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
        body: Container(
            color: Colors.grey.shade900,
            child: ListView(children: [
              Container(
                height: 200,
                color: Colors.grey.shade900,
                child: Lottie.network(
                    'https://assets1.lottiefiles.com/packages/lf20_YVgFFr.json'),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: const GFAccordion(
                    title: 'How to create your own card template?',
                    content:
                        "1. First register your information and select template.\n\n2.View your template.",
                    collapsedIcon: Icon(Icons.add),
                    expandedIcon: Icon(Icons.minimize)),
              ),
              const GFAccordion(
                  title: 'How to share your card?',
                  content:
                      "1. Share your qr through qr scanner located on home screen.",
                  collapsedIcon: Icon(Icons.add),
                  expandedIcon: Icon(Icons.minimize)),
              const GFAccordion(
                  title: 'Your Question here?',
                  content: "1. Answer 1.\n\n2. Answer 2",
                  collapsedIcon: Icon(Icons.add),
                  expandedIcon: Icon(Icons.minimize)),
            ])));
  }
}
