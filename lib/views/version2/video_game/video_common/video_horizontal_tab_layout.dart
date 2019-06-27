import 'package:flutter/material.dart';
import 'package:flutter_ui/views/version2/video_game/video_common/video_tab_text.dart';
import 'package:flutter_ui/views/version2/video_game/video_model/video_forum.dart';

import 'video_forum_card.dart';


class VideoHorizontalTabLayout extends StatefulWidget {
  @override
  _VideoHorizontalTabLayoutState createState() => _VideoHorizontalTabLayoutState();
}

class _VideoHorizontalTabLayoutState extends State<VideoHorizontalTabLayout> with SingleTickerProviderStateMixin {

  int selectedTabIndex = 2;
  AnimationController _controller;
  Animation<Offset> _animation;
  Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000)
    );
    _animation = Tween<Offset>(begin: Offset(0,0), end: Offset(-0.05, 0)).animate(_controller);
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  playAnimation(){
    _controller.reset();
    _controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: -30,
            bottom: 0,
            top: 0,
            width: 110.0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 80.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  VideoTabText(
                    text: "Media",
                    isSelected: selectedTabIndex == 0,
                    onTabTap: (){
                      onTabTap(0);
                    },
                  ),
                  VideoTabText(
                    text: "Streamers",
                    isSelected: selectedTabIndex == 1,
                    onTabTap: (){
                      onTabTap(1);
                    },
                  ),
                  VideoTabText(
                    text: "Forum",
                    isSelected: selectedTabIndex == 2,
                    onTabTap: (){
                      onTabTap(2);
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.0),
            child: FutureBuilder(
              future: playAnimation(),
              builder: (context, snapshot){
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _animation,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: getList(selectedTabIndex),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  List<Widget> getList(index){
    return [
      [
        VideoForumCard(forum: VideoDummyData.fortniteForum,),
        VideoForumCard(forum: VideoDummyData.pubgForum,),
      ],
      [
        VideoForumCard(forum: VideoDummyData.pubgForum,),
        VideoForumCard(forum: VideoDummyData.fortniteForum,),
      ],
      [
        VideoForumCard(forum: VideoDummyData.fortniteForum,),
        VideoForumCard(forum: VideoDummyData.pubgForum,),
      ],
    ][index];
  }


  onTabTap(int index){
    setState(() {
      selectedTabIndex = index;
    });
  }
}






















