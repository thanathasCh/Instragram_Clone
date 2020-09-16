import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/model/story.dart';
import 'package:flutter_app/resources/custom_color.dart';

class StoryView {
  static StatelessWidget bindStory(Story story) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 32,
              child: Container(
                margin: EdgeInsets.all(2),
                child: ClipOval(
                  child: Image(
                    image: NetworkImage(story.image_url),
                    width: 64,
                    height: 64,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Divider(height: 5),
          Container(
            width: 64,
            alignment: Alignment.center,
            child: AutoSizeText(
              story.user_name,
              style: TextStyle(fontSize: 12),
              overflow: TextOverflow.ellipsis,
              minFontSize: 12,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
