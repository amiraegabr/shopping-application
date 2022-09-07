import 'package:flutter/material.dart';

import '../models/productmodel.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

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
                    ),
                  ),
                )),
      ),
    );
  }
}
