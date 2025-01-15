// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/cupertino.dart';
import 'package:shopping_app/models/product.dart';

class ProductState with ChangeNotifier {
  List<Product> _product = [
    Product(
      id: "product_1",
      title: "product_title_1",
      description: "product_description_1",
      price: 11,
      imageUrl:
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    ),
    Product(
      id: "product_2",
      title: "product_title_2",
      description: "product_description_2",
      price: 12,
      imageUrl:
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    ),
    Product(
      id: "product_3",
      title: "product_title_3",
      description: "product_description_3",
      price: 13,
      imageUrl:
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    ),
    Product(
      id: "product_4",
      title: "product_title_4",
      description: "product_description_4",
      price: 14,
      imageUrl:
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    ),
    Product(
      id: "product_5",
      title: "product_title_5",
      description: "product_description_5",
      price: 15,
      imageUrl:
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    ),
    Product(
      id: "product_6",
      title: "product_title_6",
      description: "product_description_6",
      price: 11,
      imageUrl:
          'https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=',
    ),
  ];

  List<Product> get product {
    return [..._product];
  }

  Product singleProduct(String id) {
    return _product.firstWhere((element) => element.id == id);
  }

  List<Product> get onlyFavorites {
    return _product.where((element) => element.isFavorite).toList();
  }
}
