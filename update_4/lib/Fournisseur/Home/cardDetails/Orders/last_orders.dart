// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../Data/estimate_data.dart';
// import '../../../DEVISFACTURE/Devis/devis_list.dart';

// Container lastOrdersCard(BuildContext context) {
//  return Container(
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
//       child: 
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               const Text(
//                 'Last estimates',
//                 style: TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//               IconButton(
//               icon: Icon(
//                 Icons.arrow_forward_ios_rounded,
//                 color: Colors.deepPurple,
                
                
//               ),
//               onPressed: () {
//              Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return EstimateListPage();
//                           },
//                         ),
//                       );
//           },),
              
//             ],
//           ),
//           const SizedBox(height: 10),
//           Column(
//             children: estimates.take(3).map((estimate) {
//               return Container(
//                 margin: const EdgeInsets.only(bottom: 10),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey.withOpacity(0.3),
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: ListTile(
//                   title: Text('ES'+estimate.info.number.substring(0, 4)),
//                   subtitle: Text(estimate.supplier.name),
//                   trailing: Text('\$${estimate.items.map((item) => item.unitPrice * item.quantity).reduce((a, b) => a + b).toStringAsFixed(2)}'),
//                   leading: SvgPicture.asset('assets/document.svg'),
//                 ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
// }
