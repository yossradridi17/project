import 'package:flutter_application_7/screensClient/models/produit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class ProductImagesSlider extends StatefulWidget {
  final Productc produit;
  const ProductImagesSlider({
    Key? key,
    required this.produit,
  }) : super(key: key);

  @override
  State<ProductImagesSlider> createState() => _ImagesSliderPageState();
}

class _ImagesSliderPageState extends State<ProductImagesSlider> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.redAccent,
      indicatorBackgroundColor: Colors.white,
      height: 300,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset(widget.produit.imgproduit1),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset(widget.produit.imgproduit2),
        ),
      ],
    );
  }
}
