import 'package:flutter/material.dart';
import 'package:fyiar_homepage/home/fyiar_home.dart';
import 'package:fyiar_homepage/home/subcategory_screen.dart';

class FyiarBody extends StatefulWidget {

  final int mainPage;

  const FyiarBody({Key key, this.mainPage}) : super(key: key);

  @override
  _FyiarBodyState createState() => _FyiarBodyState();
}

class _FyiarBodyState extends State<FyiarBody> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [        
        Flexible(          
          child: widget.mainPage == 0 ? FyiarHome() : SubcategoryScreen(page: 2,),          
        ),
      ],
    );
  }
}
