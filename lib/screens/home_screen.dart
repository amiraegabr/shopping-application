import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/cart_screen.dart';
import 'package:untitled/screens/favorites_screen.dart';
import 'package:untitled/widgets/Items_Widget.dart';
import '../widgets/categories_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

int index = 1;



  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('Home'),
            actions: [
              IconButton(onPressed: () { Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FavoritesScreen()));}, icon: Icon(Icons.favorite_rounded)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                  icon: const Icon(Icons.shopping_cart)),
              SizedBox(width: 10)
            ],
          ),
          body: Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Categorieswidget(),
                      Text(
                        'Best sellers',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      ItemsWidget(),
                    ]),
              ),
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            index: index,
            height: 50,
            color: Color(0xff0C264A),
            backgroundColor: Colors.transparent,
            items: [
            Icon(Icons.favorite_rounded, color: Colors.white),
            Icon(Icons.home_rounded, color: Colors.white),
            Icon(Icons.shopping_cart_rounded, color: Colors.white),
          ]),
          ),
    );
  }
}
