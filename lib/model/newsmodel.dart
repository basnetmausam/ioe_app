// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

// import 'dart:convert';

// NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

// String newsModelToJson(NewsModel data) => json.encode(data.toJson());

// class NewsModel {
//   NewsModel({
//     required this.totalPassengers,
//     required this.totalPages,
//     required this.data,
//   });

//   int totalPassengers;
//   int totalPages;
//   List<Datum> data;

//   factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
//         totalPassengers: json["totalPassengers"],
//         totalPages: json["totalPages"],
//         data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "totalPassengers": totalPassengers,
//         "totalPages": totalPages,
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//       };
// }

// class Datum {
//   Datum({
//     required this.id,
//     required this.name,
//     required this.trips,
//     required this.airline,
//     required this.v,
//   });

//   String id;
//   String name;
//   int trips;
//   List<Airline> airline;
//   int v;

//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         id: json["_id"],
//         name: json["name"],
//         trips: json["trips"] == null ? 404 : json["trips"],
//         airline:
//             List<Airline>.from(json["airline"].map((x) => Airline.fromJson(x))),
//         v: json["__v"],
//       );

//   Map<String, dynamic> toJson() => {
//         "_id": id,
//         "name": name,
//         "trips": trips == null ? 404 : trips,
//         "airline": List<dynamic>.from(airline.map((x) => x.toJson())),
//         "__v": v,
//       };
// }

// class Airline {
//   Airline({
//     required this.id,
//     required this.name,
//     required this.country,
//     required this.logo,
//     required this.slogan,
//     required this.headQuaters,
//     required this.website,
//     required this.established,
//   });

//   int id;
//   String name;
//   String country;
//   String logo;
//   String slogan;
//   String headQuaters;
//   String website;
//   String established;

//   factory Airline.fromJson(Map<String, dynamic> json) => Airline(
//         id: json["id"],
//         name: json["name"],
//         country: json["country"],
//         logo: json["logo"],
//         slogan: json["slogan"],
//         headQuaters: json["head_quaters"],
//         website: json["website"],
//         established: json["established"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "country": country,
//         "logo": logo,
//         "slogan": slogan,
//         "head_quaters": headQuaters,
//         "website": website,
//         "established": established,
//       };
// }

class NewsModel {
  String? newsId;
  String? newsTitle;
  String? created;
  String? photo;
  String? file;

  NewsModel(
      {this.newsId, this.newsTitle, this.created, this.photo, this.file});

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
  String?bulletinId;
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