import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/mock_data.dart';
import 'package:flutter_app/pages/home_page/post_view.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          AppString.app_name,
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Feather.camera,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Feather.send,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(
              color: Colors.grey,
              height: 0,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 85,
                margin: EdgeInsets.symmetric(vertical: 12),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: MockData.stories.length,
                    itemBuilder: (context, i) {
                      return StoryView.bindStory(MockData.stories[i]);
                    })),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: MockData.posts.length,
                itemBuilder: (context, i) {
                  return PostView.bindPost(MockData.posts[i]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
