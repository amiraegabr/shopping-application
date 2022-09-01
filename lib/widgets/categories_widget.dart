import 'package:flutter/material.dart';
import 'package:untitled/models/categorymodel.dart';

class Categorieswidget extends StatelessWidget {
  const Categorieswidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 50,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              categories[index].icon,
                              color: Color(0xff0C264A),
                              width: 40,
                              height: 40,
                            ),
                            Container(width: 10),
                            Text(
                              categories[index].title,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        )),
                  ),
                ]),
              );
            }),
      ),
    );
  }
}
