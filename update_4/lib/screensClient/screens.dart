import 'dart:typed_data';

import 'package:flutter_application_7/screensClient/cart_screen.dart';
import 'package:flutter_application_7/screensClient/models/categorie.dart';
import 'package:flutter_application_7/screensClient/notification_screen.dart';
import 'package:flutter_application_7/screensClient/pofile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'package:flutter_application_7/screensClient/home_screen.dart';
import 'package:provider/provider.dart';

import '../registration_provider.dart';

class Screens extends StatefulWidget {
  List allP, emailsP, cart;
  List<Uint8List> imagesP, imagesCar;
  String email;
  Screens(this.allP, this.imagesP, this.emailsP, this.email, this.cart,
      this.imagesCar);
  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [];
  List<Uint8List> image = [];
  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      HomeScreen(widget.allP, widget.imagesP, widget.emailsP, widget.email),
      CartScreen(widget.cart, widget.imagesCar),
      NotificationScreen(),
      ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final RegistrationProvide = Provider.of<RegistrationProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.redAccent,
              color: Colors.black,
              tabs: [
                GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                    onPressed: () {
                      // Add your function here
                      print('Home tab clicked!');
                    }),
                GButton(
                    icon: LineIcons.shoppingBag,
                    text: 'Cart',
                    onPressed: () async {
                      List products =
                          await RegistrationProvide.getCartP(widget.email);
                      if (products != null) {
                        for (int j = 0; j < products[1].length; j++) {
                          image.add(
                              await RegistrationProvide.fetchImageFromIpfs(
                                  products[1][j][1]));
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CartScreen(products, image)));
                      } else
                        print("products empty");
                    }),
                GButton(icon: LineIcons.bell, text: 'Notifications'),
                GButton(icon: LineIcons.user, text: 'Account'),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
