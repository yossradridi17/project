import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'card.dart';
import 'colors.dart';
import 'details.dart';
class FunctionalityCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final void Function() press;
  
  const FunctionalityCard({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: <Widget>[
          SvgPicture.asset(svgSrc,
          height: 100,
          width: 100,
          ),
          
          Text(
            title,
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.deepPurple),
          )
        ],
      ),
    );
  }
}
