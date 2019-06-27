class VideoForum{
  final String title;
  final String imagePath;
  final String rank;
  final List<VideoTopic> topics;
  final String threads;
  final String subs;

  VideoForum({this.title, this.imagePath, this.rank, this.threads, this.subs, this.topics});
}


class VideoTopic{
  final String question;
  final String recentAnswer;
  final String answerCount;

  VideoTopic({this.question, this.recentAnswer, this.answerCount});
}


class VideoDummyData{



  static final fortniteTopics = [
    VideoTopic(
      question: "Should we drop early?",
      recentAnswer: "I hear this question often, so I figured I'd start a thread. When I drop early it usually",
      answerCount: "1234",
    ),
    VideoTopic(
      question: "Quitting FN because of this",
      recentAnswer: "Literally done with game until they balance the map better so that the blue corner",
      answerCount: "238",
    ),
  ];

  static final pubgTopics = fortniteTopics;

  static final fortniteForum = VideoForum(
      title: "Fortnite",
      imagePath: "assets/images/fortnite.jpg",
      rank: "31",
      threads: "88",
      subs: "500+",
      topics: fortniteTopics);

  static final pubgForum = VideoForum(
      title: "PUBG",
      imagePath: "assets/images/pubg.png",
      rank: "25",
      threads: "120",
      subs: "1000+",
      topics: pubgTopics);

  static final forums = [
    fortniteForum,
    pubgForum
  ];
}


