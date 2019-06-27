import 'package:flutter/material.dart';

class VideoColors {
  static final Color primaryColor = Color(0xFFFF9F59);
  static final Color backgroundColor = Color(0xFFE4E6F1);
  static final Color firstCircleColor = Colors.white.withOpacity(0.3);
  static final Color secondCircleColor = Colors.white.withOpacity(0.4);
  static final Color thirdCircleColor = Colors.white.withOpacity(0.6);
  static final Color firstOrangeCircleColor = primaryColor.withOpacity(0.9);
  static final Color secondOrangeCircleColor = Colors.white.withOpacity(0.1);
  static final Color thirdOrangeCircleColor = Colors.white.withOpacity(0.2);
}


class VideoTextStyles {
  static final TextStyle valueTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
  );
  static final TextStyle labelTextStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
    color: Colors.grey,
  );
  static final TextStyle whiteValueTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22.0,
      color: Colors.white
  );
  static final TextStyle whiteLabelTextStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 20.0,
    color: Colors.white,
  );
  static final TextStyle rankStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    color: VideoColors.primaryColor,
  );
  static final TextStyle rankBigStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    color: VideoColors.primaryColor,
  );
  static final TextStyle selectedTabStyle = TextStyle(
    fontSize: 22.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle defaultTabStyle = TextStyle(
    fontSize: 20.0,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle headingStyle = TextStyle(
    fontSize: 30.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle subHeadingStyle = TextStyle(
    fontSize: 22.0,
    color: Colors.blueGrey,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle buttonStyle = TextStyle(
    fontSize: 30.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle forumNameTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w800,
  );
  static final TextStyle topicQuestionTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
  );
  static final TextStyle topicAnswerTextStyle = TextStyle(
    color: Colors.blueGrey,
    fontSize: 18.0,
    fontWeight: FontWeight.w200,
  );
  static final TextStyle topicAnswerCountTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );
}
