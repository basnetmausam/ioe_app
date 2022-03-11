import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ioe_app/model/exam_model.dart';

class FetchExamList {
  var data = [];
  List<Exam> results = [];
  String urlList = 'https://ioe-result.herokuapp.com/exam/';

  Future<List<Exam>> getexam() async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
      
        data = json.decode(response.body);
        results = data.map((e) => Exam.fromJson(e)).toList();
        // if (query!= null){
        //   results = results.where((element) => element.name!.toLowerCase().contains((query.toLowerCase()))).toList();
        //}
      } else {
        print("fetch error");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}