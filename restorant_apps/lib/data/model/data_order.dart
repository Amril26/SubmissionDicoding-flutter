import 'package:flutter/widgets.dart';

class OrderData {
  final String stringImg;
  final String nameMenu;
  final int countOrder;
  final String status;

  OrderData({
    @required this.stringImg,
    @required this.nameMenu,
    @required this.countOrder,
    @required this.status,
  });
}

var orderDataView = [
  OrderData(
    stringImg: 'asset/image/resto/mc.jpeg',
    nameMenu: 'McDonald\'s',
    countOrder: 2,
    status: 'Proses',
  ),
  OrderData(
    stringImg: 'asset/image/resto/Zest chicken.jpeg',
    nameMenu: 'Zest Chicken',
    countOrder: 1,
    status: 'Selesai',
  ),
  OrderData(
    stringImg: 'asset/image/resto/janji jiwa.jpg',
    nameMenu: 'Janji Jiwa & Jiwa Toast',
    countOrder: 2,
    status: 'Batal',
  )
];
