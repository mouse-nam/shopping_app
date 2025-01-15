// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/state/product_state.dart';
import 'package:shopping_app/widgets/single_product.dart';

class AllProducts extends StatelessWidget {
  final bool favoriteOnly;
  AllProducts(this.favoriteOnly);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductState>(context, listen: false).product;
    return GridView.builder(
      padding: EdgeInsets.all(7),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // number of items in each row
        mainAxisSpacing: 10, // spacing between rows
        crossAxisSpacing: 10, // spacing between items in each row
        childAspectRatio: 3 / 2,
      ),
      itemCount: product.length,
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
        value: product[i],
        child: SingleProduct(),
      ),
    );
  }
}
