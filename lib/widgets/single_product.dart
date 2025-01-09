import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final String imageUrl;
  SingleProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      header: GridTileBar(
        title: Text(title),
      ),
      footer: GridTileBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
        ),
      ),
      child: Text(title),
    );
  }
}
