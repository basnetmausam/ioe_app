import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ioe_app/model/result_model.dart';
import 'package:ioe_app/pages/research_pages/seminars_page.dart';

// String getexamId(String examId) {
//   return examId;
// }

// String getstuentId(String studentId) {
//   return studentId;
// }


class FetchResultList {

  String examId = 0.toString();
  String studentId = 0.toString();


   //FetchResultList({ required this.examID });


   void set setexamId(String examId) {
      this.examId =  examId;
    }

    void set setstudentId(String studentId) {
      this.studentId =  studentId;
    }

    String get getexamId { 
      return examId; 
   } 
   void prints() {
     print(this.examId);
   }

   void printstd() {
     print(this.studentId);
   }
  
  void printURL(){
    print(urlList);
  }
  //FetchResultList forExamId = FetchResultList();

  //late String exam_id = forExamId.getexamId;
  // String student_id = getstuentId(studentId);
  var data = [];
  List<Result> results = [];
  late String urlList = 'http://127.0.0.1:8000/exam/${this.examId}/${this.studentId}';

  Future<List<Result>> getResult() async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
      
        data = json.decode(response.body);
        //results = data.map((e) => Result.fromJson(e)).toList();
        results = data.map((e) => Result.fromJson(e)).toList();
        //print(results);
        //var result = results[1];
        // if (query!= null){
        //   results = results.where((element) => element.name!.toLowerCase().contains((query.toLowerCase()))).toList();
        //}
      } else {
        print("fetch error");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    //return results;
    return results;
  }
}