import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputTextCustom extends StatefulWidget {
  bool showPassword;
  final String textlabel;
  InputTextCustom({@required this.showPassword, @required this.textlabel});
  @override
  _InputTextCustomState createState() => _InputTextCustomState();
}

class _InputTextCustomState extends State<InputTextCustom> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: widget.textlabel,
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: IconButton(
            icon: Icon(
                widget.showPassword ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                widget.showPassword = !widget.showPassword;
              });
            },
          )),
      obscureText: widget.showPassword,
    );
  }
}
