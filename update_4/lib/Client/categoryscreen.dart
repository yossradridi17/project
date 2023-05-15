


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Data/product.dart';
import '../registration_provider.dart';
import 'appbar.dart';
import 'productrow.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({required this.category, Key? key}) : super(key: key);
  final Category category;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

enum Filters { popular, recent, sale }

class _CategoryScreenState extends State<CategoryScreen> {
  Category get category => widget.category;
  //Filters filterValue = Filters.popular;
  String? selection;
  
  late List<Product> _products;

  @override
  void initState() {
    selection = category.title;
    _products = products.where((p) => p.category == category).toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final RegistrationProvide = Provider.of<RegistrationProvider>(context);
    List<List<Product>> productGroups = [];
    for (int i = 0; i < _products.length; i += 2) {
      List<Product> group = [_products[i]];
      if (i + 1 < _products.length) {
        group.add(_products[i + 1]);
      }
      productGroups.add(group);
    }

    List<ProductRow> productRows = productGroups
        .map((group) => ProductRow(products: group))
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(category.title),
        actions: const [
          CartAppBarAction(),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 18),
        itemCount: productRows.length,
        itemBuilder: (_, index) => productRows[index],
        separatorBuilder: (_, index) => const SizedBox(
          height: 18,
        ),
      ),
    );
  }
}
