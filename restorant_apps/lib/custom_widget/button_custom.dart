import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonCustom extends StatelessWidget {
  final double height;
  final double width;
  final double fontSize;
  final double radius;
  final String label;
  final Color colorBackground;
  final Color colorText;

  final Function function;
  final FontWeight fontWeight;

  ButtonCustom({
    @required this.height,
    @required this.width,
    @required this.label,
    @required this.colorBackground,
    @required this.colorText,
    this.function,
    this.fontSize,
    this.fontWeight,
    this.radius,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: colorBackground,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[600],
              blurRadius: 15.0,
              offset: Offset(4, 4),
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.white,
              blurRadius: 15.0,
              offset: Offset(-4, -4),
              spreadRadius: 1.0,
            )
          ],
        ),
        child: Text(
          label,
          style: TextStyle(
              fontSize: fontSize, color: colorText, fontWeight: fontWeight),
        ),
      ),
    );
  }
}
