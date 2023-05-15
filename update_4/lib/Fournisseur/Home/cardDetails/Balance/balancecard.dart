import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container balanceCard(BuildContext context) {
  return Container(
    height: 150,
    width: double.infinity,
    child: Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .4,
            top: 20,
            right: 20,
          ),
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple.shade200,
                Colors.deepPurple,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Your Balance\n",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: "\$9,895\n",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: "Keep fighting!",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: -2,
            bottom: 0,
            left: 10,
            child: Transform.scale(
              scale: 1.2,
              child: SvgPicture.asset("assets/yeah.svg"),
            )),
        Positioned(
          bottom: -25,
          right: -30,
          child: Transform.scale(
            scale: 0.6,
            child: SvgPicture.asset("assets/payment.svg"),
          ),
        ),
      ],
    ),
  );
}
