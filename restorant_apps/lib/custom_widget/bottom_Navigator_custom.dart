import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restorant_apps/color.dart';
import 'package:restorant_apps/ui_screen/cart_screen.dart';

import 'package:restorant_apps/ui_screen/home_screen.dart';
import 'package:restorant_apps/ui_screen/order_screen.dart';
import 'package:restorant_apps/ui_screen/profile_screen.dart';

class CustomBottomNavigator extends StatefulWidget {
  @override
  _CustomBottomNavigatorState createState() => _CustomBottomNavigatorState();
}

class _CustomBottomNavigatorState extends State<CustomBottomNavigator> {
  int _selectedIndex = 0;

  List<Widget> listScreen = <Widget>[
    HomeScreen(),
    CartScreen(),
    OrderHistoryScreen(),
    ProfileScreen(),
  ];

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300], offset: Offset(0, 1), blurRadius: 15)
          ],
        ),
        height: 80,
        child: BottomNavigationBar(
          elevation: 100,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onTapped,
          backgroundColor: Colors.white,
          unselectedFontSize: 10,
          showSelectedLabels: true,
          unselectedItemColor: Colors.black.withOpacity(0.40),
          unselectedIconTheme: IconThemeData(size: 18),
          selectedItemColor: orangePrimary,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
