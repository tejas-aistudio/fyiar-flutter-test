import 'package:flutter/material.dart';

class HomeNewsFeed extends StatelessWidget {
  final int index;

  HomeNewsFeed({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[200],
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(2.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8,2,8,0),
                child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.0),
                          topRight: Radius.circular(2.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage('https://picsum.photos/id/' +
                                (index * 100).toString() +
                                '/460/300')))),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    new Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://picsum.photos/id/48/100'))),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Brand Name",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Sub Industry",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,                
                  children: [
                    Text("March 2021", style: TextStyle(fontWeight: FontWeight.bold),),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: null),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
