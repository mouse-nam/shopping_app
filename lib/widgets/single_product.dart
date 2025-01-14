import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/screens/product_details_screen.dart';

class SingleProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return GridTile(
      header: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(
          product.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      footer: GridTileBar(
        leading: IconButton(
          onPressed: () {
            product.toggleFavoriteStatus();
          },
          icon: Icon(
            product.isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
          ),
        ),
        title: Text(
          "\$$product.price",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
        trailing: Icon(Icons.shopping_cart, color: Colors.red),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailsScreen.routeName, arguments: product.id);
        },
        child: Image.network(product.imageUrl, height: 100, width: 100),
      ),
    );
  }
}
