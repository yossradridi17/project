// import 'package:flutter/material.dart';
// import 'package:flutter_application_7/Fournisseur/DEVISFACTURE/Facture/facture_list.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../Data/estimate_data.dart';
// import '../../../../Data/invoice.dart';
// import '../../../../Data/invoice_data.dart';
// import '../../../DEVISFACTURE/Devis/devis_list.dart';

// class SoldProducts extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     final Map<String, int> mostSoldProducts = {};

//     for (var invoice in invoices) {
//       for (var item in invoice.items) {
//         if (!mostSoldProducts.containsKey(item.invoiceproduct.name)) {
//           mostSoldProducts[item.invoiceproduct.name] = 0;
//         }

//         mostSoldProducts[item.invoiceproduct.name] =
//             mostSoldProducts[item.invoiceproduct.name]! + item.quantity;
//       }
//     }

//     final sortedProducts = mostSoldProducts.entries.toList()
//       ..sort((a, b) => b.value.compareTo(a.value));

//     return Container(
//       padding: const EdgeInsets.all(20),
      
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             offset: const Offset(0, 21),
//             blurRadius: 54,
//             color: Colors.black.withOpacity(0.05),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               const Text(
//                 'Most Sold Products',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.deepPurple,
//                 ),
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.arrow_forward_ios_rounded,
//                   color: Colors.deepPurple,
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) {
//                         return InvoiceListPage();
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           if (sortedProducts.isNotEmpty)
//             for (var i = 0; i < 3 && i < sortedProducts.length; i++)
//               Container(
//                 padding: const EdgeInsets.symmetric(vertical: 8),
//                 decoration: BoxDecoration(
//                   border: Border(
//                     bottom: BorderSide(
//                       color: Colors.grey.withOpacity(0.3),
//                     ),
//                   ),
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Row(
//                         children: [
//                           Container(
//                             width: 40,
//                             height: 40,
//                             decoration: BoxDecoration(
//                               color: Colors.grey.withOpacity(0.3),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 (i + 1).toString(),
//                                 style: const TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(width: 20),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   sortedProducts[i].key,
//                                   style: const TextStyle(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 5),
//                                 Text(
//                                   '${sortedProducts[i].value} sold',
//                                   style: const TextStyle(
//                                     fontSize: 13,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
                  
//                   ],
//                 ),
//               )
//           else
//             const Center(
//               child: Text(
//                 'No Sold Products',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.deepPurple,
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
