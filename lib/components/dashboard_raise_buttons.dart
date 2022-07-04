import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardButtons extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  DashboardButtons({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      color: Colors.grey.shade900,
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.sp,
          fontFamily: 'poppins',
        ),
      ),
    );
  }
}
