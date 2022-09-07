import 'package:flutter/material.dart';

import '../models/productmodel.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Cart'),
        actions: [
          Icon(Icons.more_vert_rounded),
          SizedBox(width: 20),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: cartproducts.length,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            child: Image.network(cartproducts[index].image)),
                        title: Text(cartproducts[index].title),
                        subtitle: Text(cartproducts[index].category),
                        trailing: IconButton(
                            onPressed: () {
                              cartproducts.remove(index);
                            },
                            icon: Icon(
                              Icons.delete_rounded,
                              color: Color(0xff0C264A),
                            ))),
                  ),
                )),
      ),
    );
  }
}
