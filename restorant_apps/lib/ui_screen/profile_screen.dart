import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restorant_apps/color.dart';
import 'package:restorant_apps/ui_screen/favorite_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: 160,
                width: width,
                decoration: BoxDecoration(
                  color: orangePrimary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(left: 16, right: 16, top: 80),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('asset/image/person.jpeg'),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hazel Clarissa',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                          ),
                          Text(
                            'Hazelca02@gmail.com ',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.account_balance_wallet_outlined,
                                  size: 25),
                              SizedBox(width: 5),
                              Text(
                                '300.000',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 30, bottom: 6),
            child: Text(
              'Pilihan Untuk Kamu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
          ),
          MenuOption(
            icon: Icons.receipt_long,
            title: 'Pesanan Kamu',
            description: 'Cek Barang Pesanan Kamu',
            function: null,
          ),
          MenuOption(
            icon: Icons.shopping_basket_outlined,
            title: 'Riwayat Pesanan',
            description: 'Beli Lagi Pesanan Kamu',
            function: null,
          ),
          MenuOption(
            icon: Icons.lock_outline_rounded,
            title: 'Informasi Pribadi',
            description: 'Edit Nama, Password, Profiles',
            function: null,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FavoriteScreen();
                }),
              );
            },
            child: MenuOption(
              icon: Icons.favorite_border,
              title: 'Favorite',
              description: 'Beli Makanan Favorite Kamu',
              function: null,
            ),
          ),
          MenuOption(
            icon: Icons.support_agent_outlined,
            title: 'Minta Bantuan',
            description: 'Kesulitan? , Minta Bantuan yuk! ',
            function: null,
          ),
        ],
      ),
    ));
  }
}

class MenuOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Function function;

  MenuOption({
    @required this.icon,
    @required this.title,
    @required this.description,
    this.function,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.grey[300], width: 2),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
              color: orangePrimary,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  '$description',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
