import 'dart:math';

import 'package:flutter/material.dart';

class FyiarStory extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Stories",
        style: new TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: [
          new Icon(Icons.play_arrow),
          new Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => 
          new Stack(
            alignment: Alignment.bottomRight,
            children: [
              new Container(
                alignment: Alignment.center,                
                width: 70,
                height: 70,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,                  
                  image: DecorationImage(image: NetworkImage('https://picsum.photos/id/'+(index * 102).toString()+'/100'))
                ),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
              ),

              index == 0 ? Positioned(
                right: 10.0,
                child: CircleAvatar(backgroundColor: Colors.blueAccent,
                radius: 10.0,
                child: new Icon(
                    Icons.add,
                    size: 14.0,
                    color: Colors.white,
                  ),
                ),
              ) : new Container()
            ],
          )
        ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
