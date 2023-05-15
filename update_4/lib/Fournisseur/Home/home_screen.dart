// import 'package:flutter/material.dart';
// import 'package:flutter_application_7/Fournisseur/Home/cardDetails/Orders/orders_details.dart';
// import 'package:flutter_application_7/Fournisseur/Home/cardDetails/Quantity/quantity_details.dart';
// import 'package:flutter_application_7/Fournisseur/Home/cardDetails/Balance/weekly_income.dart';
// import 'package:flutter_application_7/Fournisseur/Home/func_row.dart';
// import 'package:flutter_application_7/Fournisseur/Home/stat_card.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../utils/notifcation_bell.dart';
// import 'card.dart';
// import 'cardDetails/Orders/chart2orders.dart';
// import 'cardDetails/Sales/sales_details.dart';
// import 'cardDetails/Balance/chart2balance.dart';
// import 'colors.dart';
// import 'details.dart';

// class HomeDash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       backgroundColor: kPrimaryColor.withOpacity(.03),
//       elevation: 0,
//       title: Text(
//           "Siwar's Page",
//           style: GoogleFonts.mrDafoe(
//             fontSize: 28,
//             color: Colors.deepPurple
//           )
//         ),
//            actions: [
//             NotificationBell(),
//           ],
//     ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Container(
//               padding:
//                   EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: kPrimaryColor.withOpacity(0.03),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(50),
//                   bottomRight: Radius.circular(50),
//                 ),
//               ),
//               child: Wrap(
//                 runSpacing: 20,
//                 spacing: 20,
//                 children: <Widget>[
//                   StatsCard(
//                     title: "Income",
//                     iconColor: Color(0xFFFF2D55),
//                     statsNum: "955\$",
//                     svgStats: "assets/chart-histogram.svg",
//                     chart: LineReportChartBalance(),
//                     press: () {
//                         Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return WeeklyIncomePage();
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                   StatsCard(
//                     title: "Orders",
//                     iconColor: Color(0xFFFF8C00),
//                     svgStats: "assets/chart-histogram.svg",
//                     statsNum: "1988 ",
//                     chart: LineReportChartOrders(),
//                     press: () {
//                         Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return OrdersDetails();
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                   StatsCard(
//                     title: "Sales",
//                     iconColor: Color(0xFF50E3C2),
//                     statsNum: "565",
//                     chart: LineReportChartBalance(),
//                     svgStats: "assets/chart-histogram.svg",
//                     press: () {
//                           Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return SalesDetails();
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                   StatsCard(
//                     title: "Avg. Quantity",
//                     iconColor: Color(0xFF5856D6),
//                     svgStats: "assets/chart-histogram.svg",
//                     statsNum: "75",
//                     chart: LineReportChartBalance(),
//                     press: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return QuantityDetails();
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 30),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       "Functionalities",
//                       style: Theme.of(context)
//                           .textTheme
//                           .titleLarge!
//                           .copyWith(fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 40),
//                     rowFunctionality(context),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

// }
