import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutIcons extends StatelessWidget {
  final String specificIcon;

  AboutIcons({required this.specificIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20.h),
        child: Image.asset(
          'lib/image/$specificIcon.png',
          height: 20.h,
          width: 20.w,
          color: Colors.grey.shade200,
        ),
      ),
      height: 70.h,
      width: 70.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(28),
        ),
      ),
    );
  }
}
