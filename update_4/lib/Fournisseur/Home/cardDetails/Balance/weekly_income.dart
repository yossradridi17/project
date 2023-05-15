import 'package:flutter/material.dart';
import 'package:flutter_application_7/Fournisseur/Home/cardDetails/Balance/balancecard.dart';
import 'package:flutter_application_7/Fournisseur/Home/cardDetails/Balance/balancechart.dart';
import 'package:flutter_svg/svg.dart';
import '../Orders/chart.dart';

class WeeklyIncomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: Color(0xFFFCFCFC),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.deepPurple,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              balanceCard(context),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 21),
                      blurRadius: 53,
                      color: Colors.black.withOpacity(0.05),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Last Week Balance",
                          style: TextStyle(
                            color: Colors.deepPurple.shade500,
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    
                    WeeklyBalanceChart(),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
