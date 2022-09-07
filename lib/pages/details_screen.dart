import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../models/productmodel.dart';

class DetailsScreen extends StatelessWidget {
  final Product products;

  DetailsScreen({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Icon(Icons.favorite_rounded),
        SizedBox(width: 20)
      ],),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                color: Colors.white,
                height: 300,
                child: Image.network(products.image)),
            SizedBox(height: 30),
            Text(
              products.title,
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '\$' + products.price.toString(),
              style: TextStyle(fontSize: 20),
            ),
            Text(
              products.description,
              style: TextStyle(fontSize: 20),
            ),
            RatingBar.builder(
                initialRating: products.rating,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                itemSize: 20,
                itemBuilder: (context, _) => Icon(
                      Icons.favorite_rounded,
                      color: Color(0xff0C264A),
                    ),
                onRatingUpdate: (index) {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: IconButton(
                            color: Color(0xff0C264A),
                            onPressed: () {},
                            icon: Icon(Icons.remove)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '0',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: IconButton(
                            color: Color(0xff0C264A),
                            onPressed: () {
                              cartproducts.add(products);
                            },
                            icon: Icon(Icons.add)),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0C264A),
                      minimumSize: Size(100, 50),
                    ),
                    onPressed: () {},
                    child: Icon(Icons.add_shopping_cart))
              ],
            ),
          ],
        ),
      ),
    );
  }
}