// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/all_products.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home'),
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("All products"),
                value: 0,
              ),
              PopupMenuItem(
                child: Text("Favourite products"),
                value: 0,
              ),
            ],
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: AllProducts(),
    );
  }
}
