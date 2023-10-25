import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:with_firebase_flutter_uidesign1/utlits/appColors.dart';
import 'package:with_firebase_flutter_uidesign1/views/home_screen.dart';

class Bottom_BarScreen extends StatefulWidget {
  const Bottom_BarScreen({super.key});

  @override
  State<Bottom_BarScreen> createState() => _Bottom_BarScreenState();
}

class _Bottom_BarScreenState extends State<Bottom_BarScreen> {
  int selectedIndex = 0;
  List<Widget> screen = [
    const Home_screen(),
    Center(child: Text('Favorit_Screen')),
    Center(child: Text("cart_screen")),
    Center(child: Text("Profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: appColors.prymarey,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          unselectedItemColor: Colors.black.withOpacity(.5),
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: 'Favorit'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
