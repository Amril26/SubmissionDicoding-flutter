import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:restorant_apps/color.dart';
import 'package:restorant_apps/ui_screen/detail_resto_screen.dart';
import 'package:restorant_apps/data/model/data_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 620) {
            return MobileHomeScreen();
          } else if (constraints.maxWidth <= 750) {
            return WebHomeScreen(count: 2);
          } else if (constraints.maxWidth <= 950) {
            return WebHomeScreen(count: 3);
          } else {
            return WebHomeScreen(count: 4);
          }
        },
      ),
    );
  }
}

class WebHomeScreen extends StatelessWidget {
  final int count;
  WebHomeScreen({@required this.count});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(left: 50, right: 50, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// top Navigation
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

            /// Search Menu
            Container(
              padding: const EdgeInsets.only(left: 12),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search_sharp, size: 30),
                  hintText: 'Cari Makan Atau Resto',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 16),

            /// path website
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20,
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
                  'Restorant',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            Text(
              'Rekomendasi Restaurant',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            Container(
              width: width,
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: viewDataRecommen.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final DataResto place = viewDataRecommen[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return DetailsRestoScreen(place: place);
                          }),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              width: 250,
                              height: 270,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    child: Image.asset(
                                      '${place.imgResto}',
                                      height: 200,
                                      width: 250,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 10),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 180,
                                          child: Text(
                                            '${place.nameRestorant}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                            maxLines: 1,
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(Icons.star,
                                            color: Colors.yellow[600],
                                            size: 18),
                                        Text(
                                          '${place.valueRange}',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        top: 5,
                                        bottom: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.place,
                                            size: 16, color: Colors.grey),
                                        SizedBox(
                                          width: 160,
                                          child: Text(
                                            '${place.location}',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                            maxLines: 1,
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Spacer(),
                                        Icon(Icons.navigation,
                                            size: 16, color: Colors.grey),
                                        Text(
                                          '${place.distance}',
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    );
                  }),
            ),

            /// restoran lainnya
            Text(
              'Restoran Lainnya',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 16),

            GridView.count(
                crossAxisCount: count,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                children: viewDataOther.map((viewData) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailsRestoScreen(place: viewData);
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(0, 0))
                        ],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                '${viewData.imgResto}',
                                height: 200,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  '${viewData.nameRestorant}',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                  minFontSize: 5,
                                  textDirection: TextDirection.ltr,
                                ),
                                AutoSizeText(
                                  '${viewData.categoryResto}',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                  minFontSize: 5,
                                  textDirection: TextDirection.ltr,
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.place,
                                        size: 20, color: Colors.grey),
                                    SizedBox(
                                      width: 150,
                                      child: AutoSizeText(
                                        '${viewData.location}',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                        minFontSize: 5,
                                        maxLines: 1,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList()),
          ],
        ),
      ),
    );
  }
}

/// Mobile Screen
class MobileHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Tampilan atas
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Row(
                  children: [
                    Text(
                      'Cari Restoran \nTerbaik Kamu',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('asset/image/person.jpeg'),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(height: 16),

              /// Search Menu
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.only(left: 12),
                  height: 50,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
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
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search_sharp, size: 30),
                      hintText: 'Cari Makan Atau Resto',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Rekomendasi Restoran',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              ),

              Container(
                width: width,
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: viewDataRecommen.length,
                    itemBuilder: (context, index) {
                      final DataResto place = viewDataRecommen[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return DetailsRestoScreen(place: place);
                            }),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16, top: 16),
                              width: 250,
                              height: 270,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16)),
                                        child: Image.asset(
                                          '${place.imgResto}',
                                          height: 200,
                                          width: 250,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 70,
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  196, 196, 196, 110),
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(16),
                                                  bottomLeft:
                                                      Radius.circular(16)),
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(Icons.star,
                                                    color: Colors.yellow[600],
                                                    size: 24),
                                                Text(
                                                  ' ${place.valueRange}',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 10),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: Text(
                                            '${place.nameRestorant}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                            maxLines: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        top: 5,
                                        bottom: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.place,
                                            size: 16, color: Colors.grey),
                                        SizedBox(
                                          width: 160,
                                          child: Text(
                                            '${place.location}',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                            maxLines: 1,
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Spacer(),
                                        Icon(Icons.navigation,
                                            size: 16, color: Colors.grey),
                                        Text(
                                          '${place.distance}',
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Restorant Lainnya',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),

              SizedBox(height: 16),

              Container(
                width: width,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: viewDataRecommen.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    final DataResto place = viewDataOther[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailsRestoScreen(place: place);
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: 120,
                        width: width,
                        margin:
                            EdgeInsets.only(bottom: 16, left: 16, right: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    '${place.imgResto}',
                                    width: 120,
                                    height: 90,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10, right: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${place.nameRestorant}',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        '${place.categoryResto}',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '${place.location}',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Colors.yellow[600],
                                              size: 20),
                                          Text(
                                            '  ${place.valueRange} ',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(Icons.navigation,
                                              color: Colors.grey, size: 18),
                                          Text(
                                            '  ${place.distance}  KM',
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
