import 'package:flutter/material.dart';
import 'package:flutter_ui/views/version2/video_game/video_model/video_forum.dart';

import '../VideoDetailsPage.dart';
import 'video_forum_details_widget.dart';
import 'video_forum_name_widget.dart';

class VideoForumCard extends StatelessWidget {
  final VideoForum forum;

  VideoForumCard({this.forum});


  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: forum.title,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => VideoDetailsPage(forum: forum,)));
        },
        child: SizedBox(
          width: 280.0,
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 60.0,),
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    forum.imagePath,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: VideoForumDetailsWidget(forum: forum),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 80.0,
                    child: VideoForumNameWidget(forum: forum),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}