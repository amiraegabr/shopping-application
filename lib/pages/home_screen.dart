import 'package:flutter/material.dart';
import '../widgets/Items_Widget.dart';
import '../widgets/categories_widget.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search , size: 30,)),
          SizedBox(width: 20)
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
    );
  }
}
