import 'package:flutter/material.dart';
import 'package:flutter_ui/views/version2/video_game/video_model/video_forum.dart';
import 'package:flutter_ui/views/version2/video_game/video_style/video_styles.dart';

import 'video_label_value_widget.dart';

class VideoForumDetailsWidget extends StatelessWidget {

  final VideoForum forum;

  VideoForumDetailsWidget({this.forum});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: VideoMyCustomClipper(),
      child: Container(
        height: 180.0,
        padding: EdgeInsets.only(left: 20.0, right: 16.0, top: 24.0, bottom: 12.0,),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.4),
                        width: 2.0,
                      ),
                    ),
                    height: 40.0,
                    width: 40.0,
                    child: Center(
                      child: Text(
                        forum.rank,
                        style: VideoTextStyles.rankStyle,
                      ),
                    ),
                  ),
                  Text("new", style: VideoTextStyles.labelTextStyle,),
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                VideoLabelValueWidget(
                  value: forum.topics.length.toString(),
                  label: "topics",
                  labelStyle: VideoTextStyles.labelTextStyle,
                  valueStyle: VideoTextStyles.valueTextStyle,
                ),
                VideoLabelValueWidget(
                  value: forum.threads,
                  label: "threads",
                  labelStyle: VideoTextStyles.labelTextStyle,
                  valueStyle: VideoTextStyles.valueTextStyle,
                ),
                VideoLabelValueWidget(
                  value: forum.subs,
                  label: "subs",
                  labelStyle: VideoTextStyles.labelTextStyle,
                  valueStyle: VideoTextStyles.valueTextStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class VideoMyCustomClipper extends CustomClipper<Path>{
  final double distanceFormWall = 12;
  final double controlPointDistanceFromWall = 2;


  @override
  Path getClip(Size size) {
    final double height = size.height;
    final double halfHeight = size.height * 0.5;
    final double width = size.width;

    Path clippedPath = Path();
    clippedPath.moveTo(0, halfHeight);
    clippedPath.lineTo(0, height - distanceFormWall);
    clippedPath.quadraticBezierTo(0 + controlPointDistanceFromWall, height - controlPointDistanceFromWall, 0 + distanceFormWall, height);
    clippedPath.lineTo(width, height);
    clippedPath.lineTo(width, 0 + 30.0);
    clippedPath.quadraticBezierTo(width - 5, 0 + 5.0, width - 35, 0 + 15.0);
    clippedPath.close();
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}