import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restorant_apps/color.dart';

class FavoriteCustom extends StatefulWidget {
  @override
  _FavoriteCustomState createState() => _FavoriteCustomState();
}

class _FavoriteCustomState extends State<FavoriteCustom> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 134, 23, 150),
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
          size: 25,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
          showDialog(
            context: context,
            builder: (contex) {
              return AlertDialog(
                backgroundColor: orangePrimary,
                content: Text(
                  'Ditambahkan ke Favorite',
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
