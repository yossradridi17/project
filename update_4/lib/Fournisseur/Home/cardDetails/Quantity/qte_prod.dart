// import 'package:flutter/material.dart';
// import 'package:flutter_application_7/Fournisseur/Product/product_list.dart';
// import 'package:flutter_svg/svg.dart';
// import '../../../DEVISFACTURE/Devis/devis_list.dart';
// import '../../../../Data/product.dart';

// Container quantitieProduct(BuildContext context) {
//   return Container(
//     padding: const EdgeInsets.all(20),
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(20),
//       boxShadow: [
//         BoxShadow(
//           offset: const Offset(0, 21),
//           blurRadius: 54,
//           color: Colors.black.withOpacity(0.05),
//         ),
//       ],
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             const Text(
//               'Quantities',
//               style: TextStyle(
//                 fontSize: 15,
//               ),
//             ),
//             IconButton(
//               icon: Icon(
//                 Icons.open_in_new_rounded,
//                 color: Colors.deepPurple,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return ProductList();
//                     },
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//         const SizedBox(height: 10),
//         SingleChildScrollView(
//           child: Column(
//             children: List.generate(
//               (products.length>3 )? 3:products.length,
//               (index) {
//                 final product = products[index];
//                 return Card(
//                   color: Colors.white,
//                   elevation: 2.0,
//                   child: ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(product.imageUrls[1]),
//                     ),
//                     title: Text(
//                       product.name,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     subtitle: Text(
//                       product.quantity.toString(),
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
