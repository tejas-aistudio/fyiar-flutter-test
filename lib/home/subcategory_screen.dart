import 'package:flutter/material.dart';
import 'package:fyiar_homepage/constant/data.dart';
import 'package:fyiar_homepage/home/fyiar_categories.dart';

class SubcategoryScreen extends StatelessWidget {
  int page;

  SubcategoryScreen({Key key, this.page}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        FyiarCategories(),
        Expanded(
          child: GridView(
              padding: EdgeInsets.only(top: 30),
              physics: BouncingScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              children: page == 1
                  ? subcategory_list_realestate.map((item) {
                      return buildSubCategoryIcon(
                          item, subcategory_list_realestate);
                    }).toList()
                  : page == 2
                      ? subcategory_list_education.map((item) {
                          return buildSubCategoryIcon(
                              item, subcategory_list_education);
                        }).toList()
                      : page == 3
                          ? subcategory_list_food.map((item) {
                              return buildSubCategoryIcon(
                                  item, subcategory_list_food);
                            }).toList()
                          : page == 4
                              ? subcategory_list_fashion.map((item) {
                                  return buildSubCategoryIcon(
                                      item, subcategory_list_fashion);
                                }).toList()
                              : page == 4
                                  ? subcategory_list_printmedia.map((item) {
                                      return buildSubCategoryIcon(
                                          item, subcategory_list_printmedia);
                                    }).toList()
                                  : null),
        ),
      ],
    ));
  }

  GestureDetector buildSubCategoryIcon(item, list) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          getCardByTitle(item, list),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item['subcategory'],
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

Column getCardByTitle(item, list) {
  int i;
  i = list.indexOf(item);

  String imageUrl = i % 4 == 0
      ? "assets/images/icon-bg-green@3x.png"
      : i % 4 == 1
          ? "assets/images/icon-bg-red@3x.png"
          : i % 4 == 2
              ? "assets/images/icon-bg-violet@3x.png"
              : i % 4 == 3
                  ? "assets/images/icon-bg-yellow@3x.png"
                  : "";

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Container(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(
                imageUrl,
                width: 60,
                height: 60,
              ),
              Image(
                image: NetworkImage(item['icon'] != null ? item['icon'] : ""),
                height: 36,
                width: 36,
              ),
            ],
          ),
        ),
      )
    ],
  );
}
