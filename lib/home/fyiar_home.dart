import 'package:flutter/material.dart';
import 'package:fyiar_homepage/home/fyiar_categories.dart';

import 'package:fyiar_homepage/home/fyiar_newsfeed.dart';
import 'package:fyiar_homepage/home/fyiar_story.dart';

class FyiarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => index == -1
            ? new SizedBox(
                child: new FyiarStory(),
                height: deviceSize.height * 0.15,
              )
            : index == 0 ? FyiarCategories() : HomeNewsFeed(index: index,));
  }
}


