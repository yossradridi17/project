import 'package:flutter_application_7/screensClient/models/produit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../registration_provider.dart';
import '../screensClient/item_sceen.dart';

// final List<Productc> produits = [
//   Productc(
//     'Apple Watch -M2',
//     '\$150',
//     '\$200',
//     'Montre Connecté Apple Watch Series 6 Version GPS - Dimention 324 x 394 pixels - Processeur S6 bicoeur 64 bits - Capteur de taux d’oxygène dans le sang - Capteur électrique de fréquence cardiaque - Haut-Parleur et Microphone - RAM interne: 512 M - Memoire 32 Go - Wifi - Bluetooth 5.0 - Largeur 34 mm, Hauteur 40 mm, Épaisseur 10.7 mm',
//     'images/p1.png',
//     'images/p2.png',
//   ),
//   Productc(
//     'White Tshirt',
//     '\$80',
//     '\$100',
//     'T-shirt droit à motif texturé coton',
//     'images/White Tshirt.png',
//     'images/Black T-Shirt.png',
//   ),
//   Productc(
//     'Nike Shoe',
//     '\$200',
//     '\$250',
//     'NIKE MENS JUNIPER TRAIL 2 TRAIL RUNNING SHOE - SAND',
//     'images/nike1.png',
//     'images/nike2.png',
//   ),
//   Productc(
//     'Ear Headphone',
//     '\$80',
//     '\$120',
//     'Micro Casque- Connectivité Sans Fil: Bluetooth 5.0- Gamme de fréquences: 20 Hz-20 KHz- Sensibilité: 105 dB ± 3 dB - Capacité de la batterie: 200 mAh - Temps de charge de la batterie: 1,5 heures - Utilisez le câble Jack 3,5 mm inclus pour continuer à écouter votre musique préférée à tout moment - Finition acier inoxydable et cuir synthétique ',
//     'images/Ear Headphone.png',
//     'images/ear headphone 2.png',
//   ),
// ];

class GridItems extends StatelessWidget {
  List ll, r, o;
  String email;
  GridItems(this.ll, this.r, this.o, this.email);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: ll[0].length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final produit = ll[0][index];
        return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFFD4ECF7),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "30% off",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemSceen(
                                email,
                                o[index],
                                r[index],
                                produit[1],
                                produit[2],
                                BigInt.parse("1"),
                                produit[4],
                                produit[5])),
                      );
                    },
                    child: Container(
                      child: Image.memory(r[index]),
                      height: 100,
                      width: 1000,
                      padding: const EdgeInsets.all(2),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        produit[2],
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            produit[4].toString(),
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 111, 82, 255),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            produit[5].toString(),
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
