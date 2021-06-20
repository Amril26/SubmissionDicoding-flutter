import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restorant_apps/color.dart';
import 'package:restorant_apps/data/model/data_order.dart';

class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Order History'),
          backgroundColor: orangePrimary,
          elevation: 10,
        ),
        body: Stack(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: orderDataView.length,
              itemBuilder: (BuildContext context, int index) {
                final OrderData viewOrderData = orderDataView[index];
                return InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
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
                      },
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
                    width: width,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                '${viewOrderData.stringImg}',
                                height: 90,
                                width: 90,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 16, right: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${viewOrderData.nameMenu}',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '${viewOrderData.countOrder} items',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                                StatusOrder(status: '${viewOrderData.status}'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }
}

// ignore: must_be_immutable
class StatusOrder extends StatefulWidget {
  String status;
  StatusOrder({@required this.status});

  @override
  _StatusOrderState createState() => _StatusOrderState();
}

class _StatusOrderState extends State<StatusOrder> {
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: widget.status == 'Selesai'
            ? Colors.greenAccent[400]
            : widget.status == 'Batal'
                ? Colors.red
                : Color(0xFFBDBDBD),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        widget.status,
        style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
