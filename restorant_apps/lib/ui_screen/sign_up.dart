import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restorant_apps/color.dart';
import 'package:restorant_apps/custom_widget/bottom_Navigator_custom.dart';
import 'package:restorant_apps/custom_widget/button_custom.dart';
import 'package:restorant_apps/custom_widget/custom_inputtext.dart';
import 'package:restorant_apps/ui_screen/sign_in.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          color: orangePrimary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back,
                              color: Colors.white, size: 25),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: orangePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'User Name',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email ID',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    InputTextCustom(
                        showPassword: showPassword, textlabel: 'Password'),
                    InputTextCustom(
                        showPassword: showPassword, textlabel: 'Password'),
                    SizedBox(height: 50),
                    ButtonCustom(
                      height: 50,
                      width: width,
                      label: 'Sign Up',
                      fontSize: 20,
                      colorBackground: orangePrimary,
                      colorText: Colors.white,
                      radius: 16,
                      fontWeight: FontWeight.bold,
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CustomBottomNavigator();
                        }));
                      },
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Text('Already Have An Account ? '),
                        TextButton(
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.orange),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignInScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
