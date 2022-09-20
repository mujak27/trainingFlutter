class Anime {
  int id;
  String title;
  String image;
  String image2;
  String desc;

  Anime({
    required this.id,
    required this.title,
    required this.image,
    required this.image2,
    required this.desc
  });

  static var Animes = [
    Anime(
      id : 1,
      title: 'violet evergarden', 
      image: "./assets/violetEvergarden1.jpg",
      image2: "./assets/violetEvergarden1.webp",
      desc: "The story follows Violet Evergarden's journey of reintegrating back into society after the war is over as she is no longer a soldier, and her search for her life's purpose in order to understand the last words her mentor and guardian, Major Gilbert, had said to her: 'I love you.'"
    ),
    Anime(
      id: 2,
      title: 'Koe No Katachi', 
      image: "./assets/koeNoKatachi1.jpg",
      image2: "./assets/koeNoKatachi2.jpg",
      desc: "Koe no Katachi tells the heartwarming tale of Shouya's reunion with Shouko and his honest attempts to redeem himself, all while being continually haunted by the shadows of his past."
    ),
    Anime(
      id:3,
      title: 'Clannad', 
      image: "./assets/clannad1.jpg",
      image2: "./assets/clannad2.jpg",
      desc: "As Tomoya spends more time with the girls, he learns more about them and their problems. As he attempts to help each girl overcome her respective obstacle, he begins to realize life isn't as dull as he once thought."
    ),
  ];
}