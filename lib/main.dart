import 'package:flutter/material.dart';
import 'package:fyiar_homepage/home/Home.dart';
import 'package:fyiar_homepage/residential/art_page.dart';
import 'package:fyiar_homepage/residential/residential_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FYIAR',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.black,
        accentColor: Color.fromRGBO(158, 0, 93, 1.0),
        fontFamily: 'Barlow',
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(title: TextStyle(color:Colors.black, )),
        textTheme: TextTheme(title: TextStyle(color: Colors.black)),
      ),
      // home: Home(),
      home: ResidentialPage(),
      // home: ArtPage()
    );
  }
}
