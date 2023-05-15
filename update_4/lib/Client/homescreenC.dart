import 'package:flutter/material.dart';
import 'package:flutter_application_7/Data/product.dart';

import 'appbar.dart';
import 'categorylist.dart';
import 'data/images.dart';
import 'producttile.dart';
import 'searchbar.dart';

class HomeScreenClient extends StatefulWidget {
  const HomeScreenClient({Key? key}) : super(key: key);

  @override
  State<HomeScreenClient> createState() => _HomeScreenClientState();
}

class _HomeScreenClientState extends State<HomeScreenClient> {
  late String searchString;
  @override
  void initState() {
    searchString = '';
    super.initState();
  }

  void setSearchString(String value) => setState(() {
        searchString = value;
      });

  @override
  Widget build(BuildContext context) {
    var listViewPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 24);
    List<Widget> searchResultTiles = [];
    if (searchString.isNotEmpty) {
      searchResultTiles = products
          .where(
              (p) => p.name.toLowerCase().contains(searchString.toLowerCase()))
          .map(
            (p) => ProductTile(product: p),
          )
          .toList();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: SearchBar(
          onChanged: setSearchString,
        ),
        actions: const [
          CartAppBarAction(),
        ],
      ),
      body: searchString.isNotEmpty
          ? GridView.count(
              padding: listViewPadding,
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              childAspectRatio: .78,
              children: searchResultTiles,
            )
          : ListView(
              padding: listViewPadding,
              children: [
                Text(
                  'Shop by Category',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                CategoryTile(
                  imageUrl: FashionImageUrl,
                  category: fashion,
                  imageAlignment: Alignment.topCenter,
                ),
                const SizedBox(height: 16),
                CategoryTile(
                  imageUrl: ElectronicImageUrl,
                  category: electronics,
                  imageAlignment: Alignment.topCenter,
                ),
                const SizedBox(height: 16),
                CategoryTile(
                  imageUrl: ToysImageUrl,
                  category: toys,
                ),
              ],
            ),
    );
  }
}