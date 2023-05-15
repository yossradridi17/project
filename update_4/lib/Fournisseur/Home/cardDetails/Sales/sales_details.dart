// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../Data/invoice_data.dart';
// import '../Orders/chart.dart';
// import '../../colors.dart';
// import 'most_products.dart';

// class SalesDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        backgroundColor:  kBackgroundColor,
//       appBar: AppBar(
//         backgroundColor:  kBackgroundColor,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.deepPurple,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
//                 decoration: BoxDecoration(
//                   color: Colors.deepPurple.shade100,
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [
//                     BoxShadow(
//                       offset: Offset(0, 21),
//                       blurRadius: 53,
//                       color: Colors.black.withOpacity(0.05),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           "Orders",
//                           style: TextStyle(
//                             color: kTextMediumColor,
//                             fontWeight: FontWeight.w600,
//                             fontSize: 15,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 15),
//                     Row(
//                       children: <Widget>[
//                         Text(
//                           "547 ",
//                           style: Theme.of(context)
//                               .textTheme
//                               .displayMedium!
//                               .copyWith(color: Colors.deepPurple, height: 1.2),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 15),
//                     WeeklyChart(),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               SoldProducts(),
//               SizedBox(height: 80),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }