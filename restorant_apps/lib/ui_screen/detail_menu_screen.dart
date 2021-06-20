import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:restorant_apps/color.dart';
import 'package:restorant_apps/custom_widget/button_icons_custom.dart';
import 'package:restorant_apps/custom_widget/favorit_widget.dart';
import 'package:restorant_apps/data/model/data_view.dart';

class DetailMenuScreen extends StatelessWidget {
  final DataResto place;

  DetailMenuScreen({@required this.place});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    '${place.imgMenu}',
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
                          color: Color.fromRGBO(255, 134, 23, 120),
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
                      end: Alignment(0, -0.6),
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
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 22),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${place.nameMenu}',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${place.descriptionMenu}',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[500]),
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Cacatan',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Icon(Icons.notes_rounded),
                                ],
                              ),
                              SizedBox(height: 10),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: 'Catatan untuk pesanan anda'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomDraggbleScroll(
              harga: place.price, hargaOngkir: place.priceDelivery),
        ],
      ),
    );
  }
}

class CustomDraggbleScroll extends StatefulWidget {
  final double harga;
  final double hargaOngkir;
  CustomDraggbleScroll({
    @required this.harga,
    @required this.hargaOngkir,
  });
  @override
  _CustomDraggbleScrollState createState() => _CustomDraggbleScrollState();
}

class _CustomDraggbleScrollState extends State<CustomDraggbleScroll> {
  int _valueAdd = 1;

  void _incrementMethod() {
    _valueAdd++;
  }

  void _decrementMethod() {
    _valueAdd--;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        minChildSize: 0.065,
        initialChildSize: 0.065,
        maxChildSize: 0.2,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: orangePrimary,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, -2),
                    blurRadius: 15,
                  )
                ]),
            child: ListView(
              controller: scrollController,
              children: [
                Divider(
                  thickness: 5,
                  indent: 120,
                  endIndent: 120,
                  color: Colors.white,
                ),
                SizedBox(height: 16),
                Row(children: [
                  Expanded(
                    child: Text(
                      '${widget.harga * _valueAdd}00',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      maxLines: 1,
                    ),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ButtonIconsCustom(
                          icon: Icon(Icons.remove,
                              size: 25, color: Colors.orange),
                          margin: const EdgeInsets.all(5),
                          function: () {
                            setState(() {
                              if (_valueAdd == 1) {
                                return 1;
                              } else {
                                _decrementMethod();
                              }
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          '$_valueAdd',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ButtonIconsCustom(
                          icon: Icon(Icons.add, size: 25, color: Colors.orange),
                          margin: const EdgeInsets.all(5),
                          function: () {
                            setState(() {
                              _incrementMethod();
                            });
                          },
                        ),
                      ),
                    ],
                  )),
                ]),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        minWidth: 100,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.white,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '+ Keranjang',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (cotext) {
                              return AlertDialog(
                                backgroundColor: Colors.orange,
                                elevation: 50,
                                content: Container(
                                  decoration: BoxDecoration(),
                                  width: 60,
                                  height: 90,
                                  child: Column(
                                    children: [
                                      Icon(Icons.shopping_cart_outlined,
                                          color: Colors.white, size: 50),
                                      SizedBox(height: 10),
                                      Text(
                                        'Dimasukan ke Keranjang',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 50),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (cotext) {
                              return AlertDialog(
                                backgroundColor: orangePrimary,
                                elevation: 50,
                                content: Container(
                                  width: 40,
                                  height: 120,
                                  child: Column(
                                    children: [
                                      Icon(Icons.receipt_long,
                                          color: Colors.white, size: 40),
                                      SizedBox(height: 10),
                                      Text(
                                        'Makanan Telah Dipesan \n Rp ${(widget.harga * _valueAdd) + widget.hargaOngkir}00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 158,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Text(
                            'Buat Pesanan',
                            style: TextStyle(
                                fontSize: 18,
                                color: orangePrimary,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
