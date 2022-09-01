import 'package:flutter/material.dart';
import 'package:untitled/models/productmodel.dart';
import 'package:untitled/screens/checkout_animation.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        actions: [
          Icon(Icons.more_vert_rounded),
          SizedBox(width: 20),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: favoriteproducts.length,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                        leading: Image.network(favoriteproducts[index].image),
                        title: Text(favoriteproducts[index].title),
                        subtitle: Text(favoriteproducts[index].category),
                        trailing: IconButton(
                            onPressed: () {
                              favoriteproducts.remove(index);
                            },
                            icon: Icon(
                              Icons.delete_rounded,
                              color: Color(0xff0C264A),
                            ))),
                  ),
                )),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'Your total : \$ ',
                style: Theme.of(context).textTheme.headline2,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff0C264A),
                  minimumSize: Size(350, 40),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Checkout()));
                },
                child: Text('Check out', style: TextStyle(fontSize: 18)),
              )
            ],
          ),
        ),
      ),

    );
  }
}
