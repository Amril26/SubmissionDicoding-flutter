import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:restorant_apps/color.dart';
import 'package:restorant_apps/custom_widget/favorit_widget.dart';
import 'package:restorant_apps/ui_screen/detail_menu_screen.dart';
import 'package:restorant_apps/data/model/data_view.dart';
import 'package:restorant_apps/ui_screen/splashScreen.dart';

class DetailsRestoScreen extends StatelessWidget {
  final DataResto place;

  DetailsRestoScreen({
    @required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return MobileDetailResto(place: place);
        } else if (constraints.maxWidth <= 900) {
          return WebDetailResto(place: place, countGrid: 3, fontSize: 25);
        } else {
          return WebDetailResto(place: place, countGrid: 4, fontSize: 25);
        }
      }),
    );
  }
}

class WebDetailResto extends StatelessWidget {
  final int countGrid;
  final DataResto place;
  final double fontSize;
  WebDetailResto(
      {@required this.place,
      @required this.countGrid,
      @required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.only(left: 50, right: 50, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Top Menu
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'HeyFood',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: orangePrimary),
                  ),
                ),
                Spacer(),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(196, 196, 196, 180),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(Icons.shopping_bag_outlined,
                      size: 35, color: orangePrimary),
                ),
                SizedBox(width: 16),
                Text(
                  'Masuk',
                  style: TextStyle(
                      fontSize: 18,
                      color: orangePrimary,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 10),

            // Description Resto
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SplashScreen();
                    }));
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: orangePrimary,
                    ),
                  ),
                ),
                Icon(
                  Icons.navigate_next,
                  size: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Restorant',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: orangePrimary,
                    ),
                  ),
                ),
                Icon(
                  Icons.navigate_next,
                  size: 30,
                ),
                Text(
                  '${place.nameRestorant}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Text(
              '${place.nameRestorant}',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${place.categoryResto}',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),

            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow[600], size: 22),
                Text(
                  '  ${place.valueRange}  |  ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Icon(Icons.delivery_dining, color: Colors.black, size: 22),
                Text(
                  '  ${place.priceDelivery}.000',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            SizedBox(height: 10),

            Row(
              children: [
                Text(
                  'Jam Buka  : ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 16),
                Text(
                  '  ${place.openClock}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            SizedBox(height: 10),

            Row(
              children: [
                Text(
                  'Buka Hari  : ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 16),
                Text(
                  '  ${place.openDays}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.place),
                SizedBox(width: 10),
                Text(
                  '${place.location}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            SizedBox(height: 40),

            /// Grid View
            Text(
              'Menu Restoran Hari Ini',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: place.menu.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: countGrid),
              itemBuilder: (BuildContext context, int index) {
                final DataResto viewMenu = place.menu[index];
                return InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              backgroundColor: orangePrimary,
                              content: Text('Dalam Tahap Pengembangan',
                                  style: TextStyle(color: Colors.white)));
                        });
                  },
                  child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              '${viewMenu.imgMenu}',
                              height: 600,
                              width: 300,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(196, 196, 196, 130)),
                              child: IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                              backgroundColor: orangePrimary,
                                              content: Text(
                                                  'Dalam Tahap Pengembangan',
                                                  style: TextStyle(
                                                      color: Colors.white)));
                                        });
                                  },
                                  icon: Icon(Icons.add,
                                      color: orangePrimary, size: 25)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              alignment: Alignment.bottomRight,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 150),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              margin: const EdgeInsets.only(
                                  left: 16, right: 10, bottom: 10),
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    '${viewMenu.nameMenu}',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: fontSize),
                                    maxLines: 1,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '${viewMenu.price}.000',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                );
              },
            ),

            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

// Screen Mobile
class MobileDetailResto extends StatelessWidget {
  final DataResto place;

  MobileDetailResto({@required this.place});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: 300,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  '${place.imgResto}',
                ),
                fit: BoxFit.fill),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: const EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 134, 23, 100),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back,
                            color: Colors.white, size: 20),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    FavoriteCustom()
                  ],
                ),
              ),
              SizedBox(height: 180),
              Container(
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment(0, -0.9),
                    colors: [
                      Color.fromRGBO(196, 196, 196, 220),
                      Colors.white,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: width,
                      margin: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              blurRadius: 15)
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    '${place.nameRestorant}',
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900),
                                    maxLines: 1,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: orangePrimary,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      'Buka',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '${place.categoryResto}',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.yellow[600], size: 22),
                                Text(
                                  '  ${place.valueRange}  |  ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(Icons.delivery_dining,
                                    color: Colors.black, size: 22),
                                Text(
                                  '  ${place.priceDelivery}00',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              '${place.informationResto}',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),

                    /// Jam Buka
                    Container(
                      width: width,
                      margin:
                          const EdgeInsets.only(left: 16, right: 16, top: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1),
                                blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jam Buka',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(height: 5),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('${place.openDays}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                Text('${place.openClock}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    /// Alamat
                    Container(
                      width: width,
                      margin:
                          const EdgeInsets.only(left: 16, right: 16, top: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1),
                                blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alamat',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '${place.location}',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),

                    /// Menu
                    Container(
                      width: width,
                      margin:
                          const EdgeInsets.only(top: 16, left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Menu',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          ListView.builder(
                              itemCount: place.menu.length,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                final DataResto viewMenu = place.menu[index];
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return DetailMenuScreen(place: viewMenu);
                                    }));
                                  },
                                  child: Container(
                                    width: width,
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image.network(
                                                    '${viewMenu.imgMenu}',
                                                    height: 100,
                                                    width: 110,
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Expanded(
                                              flex: 2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 250,
                                                    height: 30,
                                                    child: Text(
                                                      '${viewMenu.nameMenu}',
                                                      style: TextStyle(
                                                          fontSize: 25),
                                                      maxLines: 1,
                                                    ),
                                                  ),
                                                  Text(
                                                    '${viewMenu.price}00',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Divider(color: Colors.black),
                                        SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                );
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
