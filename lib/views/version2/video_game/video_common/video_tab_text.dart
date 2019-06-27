import 'package:flutter/material.dart';
import 'package:flutter_ui/views/version2/video_game/video_style/video_styles.dart';

class VideoTabText extends StatelessWidget {

  final bool isSelected;
  final String text;
  final Function onTabTap;

  VideoTabText({this.text, this.isSelected, this.onTabTap});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 11.0,
      child: InkWell(
        onTap: onTabTap,
        child: AnimatedDefaultTextStyle(
          style: isSelected ? VideoTextStyles.selectedTabStyle : VideoTextStyles.defaultTabStyle,
          duration: Duration(milliseconds: 500),
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}