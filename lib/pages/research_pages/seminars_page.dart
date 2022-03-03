import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:ioe_app/model/exam_model.dart';
import 'package:ioe_app/model/exam_data.dart';
import 'package:ioe_app/model/result_data.dart';
import 'package:ioe_app/model/result_model.dart';

import 'package:ioe_app/pages/research_pages/check_result.dart';

// class SeminarsPage extends StatelessWidget {
//   const SeminarsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class Exams extends StatefulWidget {
  const Exams({ Key? key }) : super(key: key);

  @override
  State<Exams> createState() => _ExamsState();
}

class _ExamsState extends State<Exams> {

  FetchExamList _examList = FetchExamList();

  FetchResultList _resultList = FetchResultList();

  //List<Exam> exam = <Exam>[];
  String exam_id = 0.toString();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Exams'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: FutureBuilder<List<Exam>>(
              future: _examList.getexam(),
              builder: (context, snapshot) {
                var data = snapshot.data;
                print(data);
                return ListView.builder(
                    itemCount: data?.length,
                    itemBuilder: (context, index) {
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      }
                      return Card(
                        child: GestureDetector(
                    
                          onTap: () =>{ //_resultList.setexamId = '${data?[index].examId}',
                                        //print('${data?[index].examId}'),
                                        //_resultList.prints(),
                                        exam_id = '${data?[index].examId}',
                                        _resultList.printURL(),
                                        Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                        builder: (context) => CheckResultPage(examId :exam_id)))},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Row(
                                children: [
                                  // Container(
                                  //   width: 60,
                                  //   height: 60,
                                  //   decoration: BoxDecoration(
                                  //     color: Colors.deepPurpleAccent,
                                  //     borderRadius: BorderRadius.circular(10),
                                  //   ),
                                  //   child: Center(
                                  //     child: Text(
                                  //       '${data?[index].examId}',
                                  //       style: TextStyle(
                                  //           fontSize: 20,
                                  //           fontWeight: FontWeight.bold,
                                  //           color: Colors.white),  
                                  //     ),
                                  //   ),
                                  // ),
                                  SizedBox(width: 20),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${data?[index].examName}',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '${data?[index].created}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ])
                                ],
                              ),
                              // trailing: Text('More Info'),
                            ),
                          ),
                        ),
                      );
                    });
              }),
        ),
      ),
    );
  }
}