class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    this.authorName,
    this.authorImageUrl,
    this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Angel',
    authorImageUrl: 'assets/images/instagram/user2.png',
    text: 'Loving this photo!!',
  ),
  Comment(
    authorName: 'Charlie',
    authorImageUrl: 'assets/images/instagram/user3.png',
    text: 'One of the best photos of you...',
  ),
  Comment(
    authorName: 'Angelina Martin',
    authorImageUrl: 'assets/images/instagram/user4.png',
    text: 'Can\'t wait for you to post more!',
  ),
  Comment(
    authorName: 'Jax',
    authorImageUrl: 'assets/images/instagram/user1.png',
    text: 'Nice job',
  ),
  Comment(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/instagram/user0.png',
    text: 'Thanks everyone :)',
  ),
];


class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    this.authorName,
    this.authorImageUrl,
    this.timeAgo,
    this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/instagram/user0.png',
    timeAgo: '5 min',
    imageUrl: 'assets/images/instagram/post0.jpg',
  ),
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/instagram/user0.png',
    timeAgo: '10 min',
    imageUrl: 'assets/images/instagram/post1.jpg',
  ),
];

final List<String> stories = [
  'assets/images/instagram/user1.png',
  'assets/images/instagram/user2.png',
  'assets/images/instagram/user3.png',
  'assets/images/instagram/user4.png',
  'assets/images/instagram/user0.png',
  'assets/images/instagram/user1.png',
  'assets/images/instagram/user2.png',
  'assets/images/instagram/user3.png',
];