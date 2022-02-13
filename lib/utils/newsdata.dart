import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ioe_app/model/newsmodel.dart';

class NewsHaru {
  List<NewsModel> dataToBeSavedIn = [];

  Future<void> getNews() async {
    var url = Uri.parse(
        "https://newsdata.io/api/1/news?apikey=pub_4416512438668b8368dd5017e3e252035910&q=nft  ");

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'success') {
      jsonData['results'].forEach((element) {
        if (element['image_url'] != null && element["description"] != null) {
          NewsModel newsmodel = NewsModel(
              title: element['title'],
              description: element['description'],
              link: element['link'],
              image_url: element['image_url']);

          dataToBeSavedIn.add(newsmodel);
        }
      });
    }
  }
}
