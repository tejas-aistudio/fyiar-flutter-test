import 'package:flutter/material.dart';
import 'package:fyiar_homepage/constant/data.dart';
import 'package:fyiar_homepage/home/subcategory_screen.dart';

class FyiarCategories extends StatefulWidget {
  @override
  _FyiarCategoriesState createState() => _FyiarCategoriesState();
}

class _FyiarCategoriesState extends State<FyiarCategories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          margin: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  var gestureDetector = GestureDetector(
                    onTap: () { 
                      
                    },
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 40,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    categories_list[index]['url'])),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(categories_list[index]['title']),
                      ],
                    ),
                  );
                  return gestureDetector;
                }),
          ),
        ),
        SizedBox(
          height: 1,
          child: Container(
            color: Colors.grey[300],
          ),
        )
      ],
    );
  }
}
