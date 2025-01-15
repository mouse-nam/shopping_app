// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/all_products.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool favoriteOnly = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home'),
        actions: [
          PopupMenuButton(
            onSelected: (key) {
              if (key == 0) {
                favoriteOnly = false;
              } else {
                favoriteOnly = true;
              }
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("All products"),
                value: 0,
              ),
              PopupMenuItem(
                child: Text("Favourite products"),
                value: 1,
              ),
            ],
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: AllProducts(favoriteOnly),
    );
  }
}
