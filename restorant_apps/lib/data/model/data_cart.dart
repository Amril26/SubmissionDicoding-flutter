import 'package:flutter/widgets.dart';

class CartData {
  String stringImg;
  String nameMenu;
  double price;
  int countOrder;

  CartData({
    @required this.stringImg,
    @required this.nameMenu,
    @required this.price,
    @required this.countOrder,
  });
}

var cartDataview = {
  CartData(
    stringImg:
        'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYWVLCKXEEVANT-CYWVLCLBKEDYEE/photo/menueditor_item_2fda1ec5e93c48f2be70dcc1f1490a4e_1581041611019113466.jpg',
    nameMenu: 'Hot Spicy Teriyaki',
    price: 20.000,
    countOrder: 2,
  ),
  CartData(
    stringImg:
        'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CZAZR2LKA3LBFA-CZNKNB5YL6VTBA/photo/4f98e487c68f45ce9caf32819d2154b8_1599825071205857892.jpg',
    nameMenu: 'Beef Truffle Mayo',
    price: 32.000,
    countOrder: 1,
  )
};
