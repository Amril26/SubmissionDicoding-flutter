import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class ButtonIconsCustom extends StatelessWidget {
  double height;
  double width;
  Icon icon;
  Function function;
  EdgeInsetsGeometry margin;

  ButtonIconsCustom({
    this.height,
    this.width,
    @required this.icon,
    @required this.margin,
    @required this.function,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        alignment: Alignment.center,
        margin: margin,
        height: 18,
        width: 18,
        child: icon,
      ),
    );
  }
}
