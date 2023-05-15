//   import 'package:flutter/material.dart';
// import 'package:flutter_application_7/Fournisseur/DEVISFACTURE/Devis/devis_list.dart';
// import 'package:flutter_application_7/Fournisseur/DEVISFACTURE/Facture/facture_list.dart';
// import 'package:flutter_application_7/Fournisseur/Home/functionality_card.dart';
// import 'package:flutter_application_7/Fournisseur/Product/product_list.dart';

// Row rowFunctionality(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         FunctionalityCard(
//           svgSrc: "assets/product.svg",
//           title: "Products",
//           press: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return ProductList();
//                           },
//                         ),
//                       );
//                     },
//         ),
//         FunctionalityCard(
//           svgSrc: "assets/estimate.svg",
//           title: "Estimate",
//              press: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return EstimateListPage();
//                           },
//                         ),
//                       );
//                     },
          
//         ),
//         FunctionalityCard(
//           svgSrc: "assets/invoice.svg",
//           title: "Invoice",
//              press: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return InvoiceListPage();
//                           },
//                         ),
//                       );
//                     },
//         ),
//       ],
//     );
//   }