

import 'package:flutter/material.dart';

import '../Data/product.dart';
import 'producttile.dart';

class ProductRow extends StatelessWidget {
  const ProductRow({required this.products, Key? key}) : super(key: key);
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    List<ProductTile> productTiles =
        products.map((p) => ProductTile(product: p)).toList();

    return productTiles.isEmpty
        ? const SizedBox.shrink()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 250,
                child: GridView.count(
                  primary: false,
                  physics: new NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  children: productTiles,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 18,
                ),
              ),
            ],
          );
  }
}
