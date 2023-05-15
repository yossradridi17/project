// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //import 'package:flutter_web3/ethers.dart';
// import 'package:provider/provider.dart';
// import '../registration_provider.dart';

// class Commande {
//   String nom;
//   int quantity;
//   String prix;

//   Commande({
//     required this.nom,
//     required this.quantity,
//     required this.prix,
//   });
// }

// class CartScreen extends StatefulWidget {
//   @override
//   List pp;
//   List images;
//   CartScreen(this.pp, this.images);
//   _CartScreenState createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   // int quantity = 1;
//   List commandes = [
//     // Commande(nom: 'Apple Watch -M2', quantity: 1,  prix: '\$300'),
//     // Commande(nom: 'White Tshirt', quantity: 1, prix: '\$80'),
//     // Commande(nom: 'Nike Shoe', quantity: 1,  prix: '\$100'),
//     // Commande(nom: 'Ear Headphone', quantity: 1, prix: '\$90'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final RegistrationProvide = Provider.of<RegistrationProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.redAccent,
//         title: Text(
//           "My cart",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(top: 30, left: 20, right: 20),
//           child: Column(
//             children: [
//               Column(
//                 children: [
//                   for (int i = 0; i < widget.pp[1].length; i++)
//                     Container(
//                       margin: EdgeInsets.symmetric(vertical: 5),
//                       height: 120,
//                       width: MediaQuery.of(context).size.width,
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 248, 248, 248),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Row(
//                         children: [
//                           Container(
//                             height: 100,
//                             width: MediaQuery.of(context).size.width / 4,
//                             margin: EdgeInsets.only(left: 8),
//                             padding: EdgeInsets.all(10),
//                             decoration: BoxDecoration(
//                               color: Color.fromARGB(255, 223, 241, 249),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Image.memory(
//                               widget.images[i],
//                               height: 70,
//                               width: 70,
//                             ),
//                           ),
//                           Container(
//                             child: Padding(
//                               padding: EdgeInsets.only(
//                                   left: 15, top: 20, bottom: 25),
//                               child: Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     widget.pp[1][i][2],
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Row(
//                                     children: [
//                                       Text(
//                                         "Size:",
//                                         style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 17,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                       SizedBox(width: 5),
//                                     ],
//                                   ),
//                                   Row(
//                                     children: [
//                                       Text(
//                                         widget.pp[1][i][4].toString(),
//                                         style: TextStyle(
//                                           color: Colors.redAccent,
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                       SizedBox(width: 20),
//                                       Container(
//                                         height: 30,
//                                         width: 120,
//                                         decoration: BoxDecoration(
//                                           color: Colors.white,
//                                           borderRadius:
//                                               BorderRadius.circular(8),
//                                         ),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.center,
//                                           children: [
//                                             IconButton(
//                                               onPressed: () =>
//                                                   _decrementQuantity(i),
//                                               icon: Icon(Icons.remove),
//                                             ),
//                                             Text("1"),
//                                             IconButton(
//                                               onPressed: () =>
//                                                   _incrementQuantity(i),
//                                               icon: Icon(Icons.add),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Total:",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                     ),
//                   ),
//                   Text(
//                     "\$200",
//                     style: TextStyle(
//                       color: Colors.redAccent,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 22,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               InkWell(
//                 onTap: () {
//                   for (int i = 0; i < widget.pp[1].length; i++) {
//                     print("an email was sent to " + widget.pp[1][i][0]);
//                   }
//                   for (int i = 0; i < widget.pp[1].length; i++) {
//                     commandes.add(widget.pp[1][i]);
//                     print(commandes);
//                   }
//                   final date = DateTime.now();
//                   final dueDate = date.add(Duration(days: 7));

//                   List g = [];
//                   for (int i = 0; i < widget.pp[1].length; i++) {
//                     {  List y = [];
//                       y.add(widget.pp[1][i]);
//                       for (int j = i + 1; j < widget.pp[1].length; j++) {
//                         if (widget.pp[1][i][0] == widget.pp[1][j][0]) {
//                           y.add(widget.pp[1][j]);
//                         }
//                       }
//                       g.add(y);
//                     }
//                   }

//                   for (int i = 0; i < g.length; i++) {

//                     RegistrationProvide.addE(
//                         widget.pp[1][i][0],
//                         widget.pp[0],
//                         "INV",
//                         date.toString(),
//                         dueDate.toString(),
//                         g[i],
//                         "nonApproved");
//                     print("the registration is done");
//                   }
//                 },
//                 child: Container(
//                   height: 50,
//                   width: MediaQuery.of(context).size.width / 2 * 2,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.redAccent,
//                   ),
//                   child: Center(
//                     child: Text(
//                       "Order Now",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _incrementQuantity(int index) {
//     setState(() {
//       commandes[index].quantity++;
//     });
//   }

//   void _decrementQuantity(int index) {
//     setState(() {
//       if (commandes[index].quantity > 1) {
//         commandes[index].quantity--;
//       }
//     });
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_web3/ethers.dart';
import 'package:provider/provider.dart';
import '../registration_provider.dart';

class CartScreen extends StatefulWidget {
  @override
  List pp;
  List images;

  CartScreen(this.pp, this.images);
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // int quantity = 1;
  List commandes = [];
  int x = 1;
  List qu = [];

  @override
  Widget build(BuildContext context) {
    final RegistrationProvide = Provider.of<RegistrationProvider>(context);
    for (int j = 0; j < widget.pp[1].length; j++) {
      qu.add(1);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "My cart",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              Column(
                children: [
                  for (int i = 0; i < widget.pp[1].length; i++)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 248, 248),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 4,
                            margin: EdgeInsets.only(left: 8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 223, 241, 249),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.memory(
                              widget.images[i],
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15, top: 20, bottom: 25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.pp[1][i][2],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Size:",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        widget.pp[1][i][4].toString(),
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Container(
                                        height: 30,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            IconButton(
                                              onPressed: () =>
                                                  _decrementQuantity(i),
                                              icon: Icon(Icons.remove),
                                            ),
                                            Text(qu[i].toString()),
                                            IconButton(
                                              onPressed: () =>
                                                  _incrementQuantity(i),
                                              icon: Icon(Icons.add),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "\$200",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  for (int i = 0; i < widget.pp[1].length; i++) {
                    print("an email was sent to " + widget.pp[1][i][0]);
                  }
                  for (int i = 0; i < widget.pp[1].length; i++) {
                    commandes.add(widget.pp[1][i]);
                    print(commandes);
                  }
                  final date = DateTime.now();
                  final dueDate = date.add(Duration(days: 7));
                  // List y = [];
                  // List g = [];
                  // for (int i = 0; i < widget.pp[1].length; i++) {
                  //   {
                  //     y.add(widget.pp[1][i][0]);
                  //     for (int j = i + 1; j < widget.pp[1].length; j++) {
                  //       if (widget.pp[1][i][0] == widget.pp[1][j][0]) {
                  //         y.add(widget.pp[1][j]);
                  //       }
                  //     }
                  //     g.add(y);
                  //   }
                  // }

                  for (int i = 0; i < widget.pp[1].length; i++) {
                    RegistrationProvide.addE(
                        widget.pp[1][i][0],
                        widget.pp[0],
                        "INV",
                        date.toString(),
                        dueDate.toString(),
                        widget.pp[1][i],
                        qu[i].toString(),
                        "nonApproved");
                    print("the estimate is sent to " + widget.pp[1][i][0]);
                  }
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2 * 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent,
                  ),
                  child: Center(
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _incrementQuantity(int index) {
    setState(() {
      qu[index] += 1;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (qu[index] > 1) {
        qu[index] = qu[index] - 1;
      }
    });
  }
}
