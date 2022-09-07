import 'package:flutter/material.dart';
import '../models/productmodel.dart';
import '../pages/details_screen.dart';

class ItemsWidget extends StatefulWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10, right: 10),
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.56,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
            itemCount: product.length,
            itemBuilder: (context, index) {
              final products = product[index];

              return GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsScreen(products: products))),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        children: [
                          Container(child: Image.network(products.image)),
                          GestureDetector(
                            onTap: (() => setState(() {
                                  products.isFavorite = !products.isFavorite!;
                                })),
                            child: Icon(
                                products.isFavorite == false
                                    ? Icons.favorite_border_rounded
                                    : Icons.favorite_rounded,
                                color: Colors.redAccent),
                            // onTap: ((){
                            //   (() => setState(() {
                            //     products.isFavorite = !products.isFavorite;
                            //     favoriteproducts.add(products);
                            //   }));
                            // }),
                          ),
                        ],
                      ),
                      Text(
                        products.title,
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('\$ ' + products.price.toString(),
                              style: Theme.of(context).textTheme.bodyText1),
                          IconButton(
                              onPressed: () {
                                cartproducts.add(product[index]);
                              },
                              icon: Icon(Icons.add_shopping_cart_rounded))
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
