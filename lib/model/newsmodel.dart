class NewsModel {
  String title;
  String description;
  String link;
  String image_url;
  String full_description;

  NewsModel(
      {required this.description,
      required this.title,
      required this.link,
      required this.image_url,
      required this.full_description});
}
