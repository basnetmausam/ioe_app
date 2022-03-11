import 'package:flutter/material.dart';

import 'package:ioe_app/model/exam_model.dart';
import 'package:ioe_app/model/exam_data.dart';
import 'package:ioe_app/model/result_data.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/utils/homeDrawer.dart';

import 'package:ioe_app/pages/result_page/check_result.dart';

// class SeminarsPage extends StatelessWidget {
//   const SeminarsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ExamsState();
}

class _ExamsState extends State<ResultPage> {
  FetchExamList _examList = FetchExamList();

  FetchResultList _resultList = FetchResultList();

  //List<Exam> exam = <Exam>[];
  String exam_id = 0.toString();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Exams",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        backgroundColor: context.canvasColor,
        drawer: myDrawer(context),
        body: Container(
          padding: EdgeInsets.all(20),
          child: FutureBuilder<List<Exam>>(
              future: _examList.getexam(),
              builder: (context, snapshot) {
                var data = snapshot.data;
                return ListView.builder(
                    itemCount: data?.length,
                    itemBuilder: (context, index) {
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      }
                      return Card(
                        child: GestureDetector(
                          onTap: () => {
                            exam_id = '${data?[index].examId}',
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CheckResultPage(examId: exam_id)))
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Row(
                                children: [
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





















// import 'package:flutter/material.dart';
// import 'package:ioe_app/utils/homeDrawer.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:ioe_app/utils/routes.dart';

// class ResultPage extends StatelessWidget {
//   const ResultPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "News & Bulletin",
//           style: Theme.of(context).textTheme.bodyText1,
//         ),
//       ),
//       backgroundColor: context.canvasColor,
//       drawer: myDrawer(context),
//       body: ListView(
//         children: [
//           80.heightBox,
//           Card(
//               child: ListTile(
//             onTap: () {
//               Navigator.pushNamed(context, MyRoutes.newssRoute);
//             },
//             leading: const Icon(Ionicons.newspaper_outline),
//             title: const Text(
//               "News",
//             ),
//           ).p8()),
//           Card(
//             child: ListTile(
//               onTap: () {
//                 Navigator.pushNamed(context, MyRoutes.eventsRoute);
//               },
//               leading: const Icon(Ionicons.calendar_clear_outline),

//               title: const Text("Events"),
//               // subtitle: Text("ohhh hoooo"),
//             ).p8(),
//           ),
//           Card(
//               child: ListTile(
//             onTap: () {
//               Navigator.pushNamed(context, MyRoutes.ioemonthlyRoute);
//             },
//             leading: const Icon(Ionicons.radio_outline),
//             title: const Text("IOE Monthly Bulletin"),
//           ).p8()),
//         ],
//         padding: const EdgeInsets.all(10),
//       ),
//     );
//   }
// }
