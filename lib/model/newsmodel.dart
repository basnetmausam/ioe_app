class NewsModel {
  String? newsId;
  String? newsTitle;
  String? created;
  String? photo;
  String? file;

  NewsModel({this.newsId, this.newsTitle, this.created, this.photo, this.file});

  NewsModel.fromJson(Map<String, dynamic> json) {
    newsId = json['news_id'];
    newsTitle = json['news_title'];
    created = json['created'];
    photo = json['photo'];
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['news_id'] = this.newsId;
    data['news_title'] = this.newsTitle;
    data['created'] = this.created;
    data['photo'] = this.photo;
    data['file'] = this.file;
    return data;
  }
}

class BulletinModel {
  String? bulletinId;
  String? bulletinTitle;
  String? created;
  String? photo;
  String? file;

  BulletinModel(
      {this.bulletinId,
      this.bulletinTitle,
      this.created,
      this.photo,
      this.file});

  BulletinModel.fromJson(Map<String, dynamic> json) {
    bulletinId = json['bulletin_id'];
    bulletinTitle = json['bulletin_title'];
    created = json['created'];
    photo = json['photo'];
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bulletin_id'] = this.bulletinId;
    data['bulletin_title'] = this.bulletinTitle;
    data['created'] = this.created;
    data['photo'] = this.photo;
    data['file'] = this.file;
    return data;
  }
}
