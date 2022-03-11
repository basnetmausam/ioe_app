import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ioe_app/model/result_model.dart';
import 'package:ioe_app/pages/research_pages/seminars_page.dart';
import 'package:nb_utils/nb_utils.dart';

class FetchResultList {
  String examId = 0.toString();
  String studentId = 0.toString();
  var client = http.Client();

  void set setexamId(String examId) {
    this.examId = examId;
  }

  void set setstudentId(String studentId) {
    this.studentId = studentId;
  }

  String get getexamId {
    return examId;
  }

  // void prints() {
  //   print(this.examId);
  // }

  // void printstd() {
  //   print(this.studentId);
  // }

  // void printURL() {
  //   print(urlList);
  // }

  //late String exam_id = forExamId.getexamId;
  // String student_id = getstuentId(studentId);
  // var data = [];
  List<Result> results = [];
  late String urlList =
      'https://ioe-result.herokuapp.com/exam/${this.examId}/${this.studentId}';

  Future<Result> getResult() async {
    var url = Uri.parse(urlList);
    log('$url');
    try {
      final response = await client.get(url);
      if (response.statusCode == 200) {
        return Result.fromJson(jsonDecode(response.body));
        // var data = jsonDecode(response.body);

        // results = data.map((e) => Result.fromJson(e)).toList();
        //print(results);
        //var result = results[1];
        // if (query!= null){
        //   results = results.where((element) => element.name!.toLowerCase().contains((query.toLowerCase()))).toList();
        //}
      } else {
        print("fetch error");
      }
    } on Exception catch (_) {
      print(Exception);
      throw Exception('Error occured');
    }
    throw Exception('Error occured');

    // return results;
    // return results;
  }
}
