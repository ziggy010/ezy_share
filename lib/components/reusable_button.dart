import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String specificText;
  final Color specificColor;
  final TextStyle textStyle;
  final VoidCallback onTap;
  final double width;

  ReusableButton({
    required this.specificText,
    required this.specificColor,
    required this.textStyle,
    required this.onTap,
    this.width = 150,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          specificText,
          style: textStyle,
        ),
        height: 70,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: specificColor,
        ),
      ),
    );
  }
}
