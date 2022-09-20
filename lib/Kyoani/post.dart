class Post {
  String title;
  String image;

  Post({
    required this.title,
    required this.image,
  });

  static var violets = [
    Post(title: 'violet', image: "./assets/1.png"),
    Post(title: 'uwu', image: "./assets/2.png"),
    Post(title: 'waifu', image: "./assets/3.jpg"),
  ];
}