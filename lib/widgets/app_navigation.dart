import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nav_bar/pages/home_screen.dart';
import 'package:nav_bar/pages/cart_screen.dart';
import 'package:nav_bar/pages/favorites_screen.dart';

class appnavigation extends StatefulWidget {
  const appnavigation({Key? key}) : super(key: key);

  @override
  State<appnavigation> createState() => _appnavigationState();
}

class _appnavigationState extends State<appnavigation> {
  int pageindex = 1;

  final List<Widget> _pages = [
    FavoritesScreen(),
    HomeScreen(),
    CartScreen(),
  ];

  final _items = [
    Icon(Icons.favorite_rounded , color: Colors.white,),
    Icon(Icons.home_rounded, color: Colors.white,),
    Icon(Icons.shopping_cart_rounded, color: Colors.white,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[pageindex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        color: Color(0xff0C264A),
        backgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 300),
        index: pageindex,
        onTap: (selectedindex) {
          setState(() {
            pageindex = selectedindex;
          });
        },
        items: _items,
        // type: BottomNavigationBarType.fixed,   //law aktar mn 3 items
      ),
    );
  }
}
