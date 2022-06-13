import 'package:flutter/material.dart';
import 'package:shrine/model/products_repository.dart';
import 'package:shrine/supplemental/asymmetric_view.dart';

import 'model/product.dart';

class HomePage extends StatelessWidget {
  final Category category;

  const HomePage({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AsymmetricView(
      products: ProductsRepository.loadProducts(category),
    );
  }
}
