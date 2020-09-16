import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/mock_data.dart';
import 'package:flutter_app/pages/home_page/story_view.dart';
import 'package:flutter_app/resources/custom_color.dart';
import 'package:flutter_app/resources/string.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.light_gray,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.light_gray,
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          AppString.app_name,
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Feather.tv,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                FontAwesome.send_o,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppString.stories,
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    AppString.watch_all,
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                margin: EdgeInsets.symmetric(vertical: 12),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: MockData.stories.length,
                    itemBuilder: (context, i) {
                      return StoryView.bindStory(MockData.stories[i]);
                    })),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: MockData.posts.length,
              itemBuilder: (context, i) {
                return Container(
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage(MockData.posts[i].post_image),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
