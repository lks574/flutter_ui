import 'package:flutter/material.dart';

import 'video_common/video_app_background.dart';
import 'video_common/video_horizontal_tab_layout.dart';
import 'video_style/video_styles.dart';

class VideoLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          VideoAppBackground(
            firstColor: VideoColors.firstCircleColor,
            secondColor: VideoColors.secondCircleColor,
            thirdColor: VideoColors.thirdCircleColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    elevation: 10.0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.apps,
                        color: VideoColors.primaryColor,
                      ),
                    ),
                    color: Colors.white,
                    shape: CircleBorder(),
                  ),
                ),
              ),
              VideoHeadingSubHeadingWidget(),
              SizedBox(
                height: 20.0,
              ),
              VideoHorizontalTabLayout(),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 30.0),
                  child: Text(
                    "New Topic",
                    style: VideoTextStyles.buttonStyle,
                  ),
                  decoration: BoxDecoration(
                    color: VideoColors.primaryColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


class VideoHeadingSubHeadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Forum",
            style: VideoTextStyles.headingStyle,
          ),
          Text(
            "Kick of the conversation",
            style: VideoTextStyles.subHeadingStyle,
          )
        ],
      ),
    );
  }
}










