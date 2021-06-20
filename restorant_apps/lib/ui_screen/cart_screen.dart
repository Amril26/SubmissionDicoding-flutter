import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restorant_apps/color.dart';
import 'package:restorant_apps/custom_widget/button_icons_custom.dart';

import 'package:restorant_apps/data/model/data_cart.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _addOrder = 0;

  void _increment() {
    setState(() {
      _addOrder++;
    });
  }

  void _decrement() {
    setState(() {
      _addOrder--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Cart'),
        backgroundColor: orangePrimary,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: ListView(
                children: cartDataview.map((viewData) {
              return Container(
                margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
                width: width,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 16),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            '${viewData.stringImg}',
                            height: 90,
                            width: 90,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 16, bottom: 16, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${viewData.nameMenu}',
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Rp ${viewData.price}00',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 35,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonIconsCustom(
                              height: 18,
                              width: 18,
                              icon: Icon(Icons.remove,
                                  color: orangePrimary, size: 18),
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              function: () {
                                setState(() {
                                  if (_addOrder == 0) {
                                    return 1;
                                  } else {
                                    _decrement();
                                  }
                                });
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Dialog();
                                    });
                              },
                            ),
                            Text(
                              '${viewData.countOrder + _addOrder}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            ButtonIconsCustom(
                              height: 18,
                              width: 18,
                              icon: Icon(Icons.add,
                                  color: orangePrimary, size: 18),
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              function: () {
                                setState(() {
                                  _increment();
                                });
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog();
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList()),
          ),
          Flexible(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rp 72.000',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      minWidth: width,
                      color: orangePrimary,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog();
                            });
                      },
                      child: Text(
                        'Pesan Makanan Kamu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 50,
        width: 100,
        child: Column(
          children: [
            Icon(
              Icons.error_sharp,
              size: 30,
            ),
            Text('Dalam Tahap Pengembangan')
          ],
        ),
      ),
    );
  }
}
