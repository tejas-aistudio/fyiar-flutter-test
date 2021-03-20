import 'package:flutter/material.dart';
import 'package:fyiar_homepage/home/fyiar_body.dart';
import 'package:fyiar_homepage/home/subcategory_screen.dart';

class Home extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: false,
    elevation: 1.0,
    title: Text(
      "FYIAR",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.normal),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(
          Icons.search,
          size: 30,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(
          Icons.notifications_none,
          size: 30,
        ),
      ),
    ],
  );  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: new FyiarBody(
        mainPage:1,
      ),
      // body: new SubcategoryScreen(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              new IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  onPressed: null),
              new IconButton(
                  icon: Icon(
                    Icons.room,
                    size: 30,
                  ),
                  onPressed: null),
              new IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                  onPressed: null),
              new IconButton(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}
