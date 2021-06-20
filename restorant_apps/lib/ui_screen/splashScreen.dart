import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restorant_apps/color.dart';
import 'package:restorant_apps/custom_widget/button_custom.dart';
import 'package:restorant_apps/ui_screen/home_screen.dart';
import 'package:restorant_apps/ui_screen/sign_in.dart';
import 'package:restorant_apps/ui_screen/sign_up.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 500) {
            return SplashScreenMobile();
          } else if (constraints.maxWidth <= 700) {
            return HomeScreen2Web();
          } else {
            return HomeScreenWeb();
          }
        },
      ),
    );
  }
}

class HomeScreen2Web extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                )),
            Expanded(
                child: Container(
              color: orangePrimary,
            ))
          ],
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: width,
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Row(
                  children: [
                    Text(
                      'HeyFood',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: orangePrimary),
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 130),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(Icons.shopping_bag,
                          size: 35, color: Colors.white),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Masuk',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 50, right: 40),
                      width: 600,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 90),
                          Text(
                            'Welcome To Our',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: orangePrimary,
                            ),
                          ),
                          Text(
                            'Cari Restoran\nTerbaik Kamu',
                            style: TextStyle(
                                fontSize: 60, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 520,
                            child: Text(
                              'terdapat banyak restorant yang menyajikan berbagai menu yang tersedia, dengan menyajikan makanan berkualitas tinggi.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomeScreen();
                              }));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 220,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              decoration: BoxDecoration(
                                  color: orangePrimary,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(2, 5),
                                        blurRadius: 10)
                                  ]),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                verticalDirection: VerticalDirection.down,
                                children: [
                                  Text(
                                    'Mulai Mencari Resto',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    textDirection: TextDirection.ltr,
                                  ),
                                  Icon(Icons.navigate_next,
                                      color: Colors.white, size: 25),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class HomeScreenWeb extends StatelessWidget {
  final bool tampilkanGambar;

  HomeScreenWeb({this.tampilkanGambar});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                )),
            Expanded(
                child: Container(
              color: orangePrimary,
            ))
          ],
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: width,
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Row(
                  children: [
                    Text(
                      'HeyFood',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: orangePrimary),
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 130),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(Icons.shopping_bag,
                          size: 35, color: Colors.white),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Masuk',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 50, right: 40),
                      width: 600,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 90),
                          Text(
                            'Welcome To Our',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: orangePrimary,
                            ),
                          ),
                          Text(
                            'Cari Restoran\nTerbaik Kamu',
                            style: TextStyle(
                                fontSize: 80, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 520,
                            child: Text(
                              'terdapat banyak restorant yang menyajikan berbagai menu yang tersedia, dengan menyajikan makanan berkualitas tinggi.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomeScreen();
                              }));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 220,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              decoration: BoxDecoration(
                                  color: orangePrimary,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(2, 5),
                                        blurRadius: 10)
                                  ]),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                verticalDirection: VerticalDirection.down,
                                children: [
                                  Text(
                                    'Mulai Mencari Resto',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    textDirection: TextDirection.ltr,
                                  ),
                                  Icon(Icons.navigate_next,
                                      color: Colors.white, size: 25),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Image.asset(
                    'asset/image/spagheti.png',
                    height: 570,
                    width: 570,
                    alignment: Alignment.center,
                  )),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class SplashScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Image.asset(
                  'asset/image/background.png',
                  fit: BoxFit.fill,
                  width: width,
                  height: 480,
                ),
                Center(
                  child: Image.asset(
                    'asset/image/logo.png',
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonCustom(
                    height: 50,
                    width: width,
                    label: 'Login',
                    fontSize: 20,
                    colorBackground: orangePrimary,
                    colorText: Colors.white,
                    radius: 16,
                    fontWeight: FontWeight.bold,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SignInScreen();
                        }),
                      );
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ButtonCustom(
                    height: 50,
                    width: width,
                    label: 'Sign Up',
                    fontSize: 20,
                    colorBackground: Colors.white,
                    colorText: Colors.orange,
                    radius: 16,
                    fontWeight: FontWeight.bold,
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SignUpScreen();
                        }),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
