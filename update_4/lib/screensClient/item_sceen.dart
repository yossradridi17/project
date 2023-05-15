import 'dart:typed_data';
// import 'package:flutter_application_7/screensClient/models/categorie.dart';
// import 'package:flutter_application_7/screensClient/models/produit.dart';
//import 'package:flutter_application_7/widgets/product_images_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../registration_provider.dart';
import 'cart_screen.dart';

class ItemSceen extends StatefulWidget {
  String iphash, name, description;
  BigInt price, quantity;
  Uint8List image;
  String emailc, emailf;
  ItemSceen(
    this.emailc,
    this.emailf,
    this.image,
    this.iphash,
    this.name,
    this.quantity,
    this.price,
    this.description,
  );

  @override
  State<ItemSceen> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemSceen> {
  @override
  Widget build(BuildContext context) {
    final RegistrationProvide = Provider.of<RegistrationProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFD4ECF7),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      child: Image.memory(widget.image),
                      height: 200,
                      width: 1000,
                      padding: const EdgeInsets.all(2),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        widget.price.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(width: 5),
                      // Text(
                      //   widget.price.toString(),
                      //   style: TextStyle(
                      //     color: Colors.black45,
                      //     decoration: TextDecoration.lineThrough,
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 2 * 1.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent,
                ),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      await RegistrationProvide.addCartC(
                          widget.emailc,
                          widget.emailf,
                          widget.iphash,
                          widget.name,
                          BigInt.parse("1"),
                          widget.price,
                          widget.description);
                      List l =
                          await RegistrationProvide.getCartP(widget.emailc);
                      List<Uint8List> fet = [];
                      for (int j = 0; j < l[1].length; j++) {
                        {
                          Uint8List o =
                              await RegistrationProvide.fetchImageFromIpfs(
                                  l[1][j][1]);
                          fet.add(o);
                        }
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CartScreen(l,fet)));
                    },
                    child: Text("Add To Cart",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
