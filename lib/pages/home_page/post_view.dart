import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/model/post.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PostView {
  static StatelessWidget bindPost(Post post) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.only(bottom: 32),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 16,
                        child: Container(
                          margin: EdgeInsets.all(2),
                          child: ClipOval(
                            child: Image(
                              image: NetworkImage(post.user_image),
                              width: 32,
                              height: 32,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),

                    Container(
                      width: 64,
                      margin: EdgeInsets.only(left: 6),
                      child: AutoSizeText(
                        post.user_name,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ),
                        overflow: TextOverflow.ellipsis,
                        minFontSize: 12,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),

                IconButton(
                    icon: Icon(
                      Feather.more_vertical,
                      color: Colors.black,
                    )
                )
              ],
            ),
          ),

          Image(
            image: NetworkImage(post.post_image),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        AntDesign.hearto,
                        color: Colors.black,
                      )
                  ),
                  IconButton(
                      icon: Icon(
                        FontAwesome.comment_o,
                        color: Colors.black,
                      )
                  ),
                  IconButton(
                      icon: Icon(
                        Feather.send,
                        color: Colors.black,
                      )
                  ),
                ],
              ),
              IconButton(
                  icon: Icon(
                    FontAwesome.bookmark_o,
                    color: Colors.black,
                  )
              )
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            child: Text(
              post.like_number.toString() + " views",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
