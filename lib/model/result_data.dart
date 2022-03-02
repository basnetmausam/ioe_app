import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ioe_app/model/result_model.dart';
import 'package:ioe_app/pages/research_pages/seminars_page.dart';

String getexamId(String examId) {
  return examId;
}

String getstuentId(String studentId) {
  return studentId;
}


class FetchResultList {

   FetchResultList({ required this.examID });

  // String exam_id = ;
  // String student_id = getstuentId(studentId);

  var data = [];
  List<Result> results = [];
  String urlList = 'http://127.0.0.1:8000/exam/${exam_id}/${student_id}';

  Future<List<Result>> getexam() async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
      
        data = json.decode(response.body);
        results = data.map((e) => Result.fromJson(e)).toList();
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