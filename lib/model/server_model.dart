class Flag {
  final int id;
  final String title, image, language;

  Flag(
      {required this.id,
      required this.title,
      required this.image,
      required this.language});
}

List<Flag> flagList = [
  Flag(
      id: 1,
      image: "assets/images/unsplash_eggs.jpg",
      title: "china",
      language: "zh"),
  Flag(
      id: 2,
      image: "assets/images/unsplash_rice.jpg",
      title: "france",
      language: "fr"),
  Flag(
      id: 3,
      image: "assets/images/unsplash_salad.jpg",
      title: "English",
      language: "en")
];
