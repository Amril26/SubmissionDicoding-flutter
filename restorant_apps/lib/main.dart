import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:restorant_apps/ui_screen/splashScreen.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
