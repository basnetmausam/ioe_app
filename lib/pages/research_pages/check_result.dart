import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:http/http.dart' as http;
import 'package:ioe_app/model/result_model.dart';
import 'package:ioe_app/model/result_data.dart';
import 'package:ioe_app/model/exam_model.dart';


class CheckResultPage extends StatefulWidget {
  final String examId;
  const CheckResultPage({ Key? key , required this.examId }) : super(key: key);

  @override
  State<CheckResultPage> createState() => _CheckResultPageState();
}

class _CheckResultPageState extends State<CheckResultPage> {  

  
  FetchResultList _resultList = FetchResultList();
  
  // @override
  // void initState() {
  //   super.initState();
  //   _resultList.getResult();
  // }
  // String examId = 0.toString();

  // void set setexamId(String examId) {
  //     this.examId =  examId;
  // }

  
    final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    //widget.examId;

    String patttern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(patttern);
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                Text('Enter your ID:'),
                const SizedBox(
                  height: 20.0,
                ),
                FormBuilderTextField(
                  name: 'studentID',
                  decoration: InputDecoration(
                      hintText: 'enter your id',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                  validator: (value) {
                    if (value == null || value.length == 0) {
                      return "Student ID is Required";
                    } else if (value.length != 6) {
                      return "Student ID must 6 digits";
                    } else if (!regExp.hasMatch(value)) {
                      return "Student ID  must be digits";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  child: const Text('submits'),
                  onPressed: () {
                    //_resultList.prints();
                    final studentID =
                        _formKey.currentState?.fields['studentID']?.value;
    
                    if (_formKey.currentState!.validate()) {
                      _resultList.setstudentId = studentID;
                      _resultList.setexamId = widget.examId;
                      //var data = _resultList.getResult();
                      //print(_resultList.getResult());
                      //_resultList.printstd();
                      //print(data);
                      //_resultList.printURL();
                       FutureBuilder<List<Result>>(
                            future: _resultList.getResult(),
                            builder: (context , snapshot){
                              var data = snapshot.data;
                              print(data);
                                        return ListView.builder(
                                           itemCount: data?.length,
                                            itemBuilder: (context, index) {
                                              // if (!snapshot.hasData) {
                                              //   return Center(child: CircularProgressIndicator());
                                              // }
                                          return new AlertDialog(
                                            title: const Text('Result'),
                                            content: new Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("You have {data?[index].passFail}ed"),
                                              ],
                                            ),
                                            actions: <Widget>[
                                              new FlatButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                textColor: Theme.of(context).primaryColor,
                                                child: Text('OK'),
                                              ),
                                            ],
                                            );
                    });
                            });


                      // showDialog(
                      //       // context: context,
                      //       //  builder: (BuildContext context) => _buildPopupDialog(context, ),
                      //       context: context,
                      //       builder: (BuildContext context){
                              //_resultList.printURL();
                    //           return SafeArea(
                    //       child: FutureBuilder<List<Result>>(
                    //         future: _resultList.getResult(),
                    //         builder: (context , snapshot){
                    //           var data = snapshot.data;
                              
                    //                     return ListView.builder(
                    //                        itemCount: data?.length,
                    //                         itemBuilder: (context, index) {
                    //                           // if (!snapshot.hasData) {
                    //                           //   return Center(child: CircularProgressIndicator());
                    //                           // }
                    //                       return new AlertDialog(
                    //                         title: const Text('Result'),
                    //                         content: new Column(
                    //                           mainAxisSize: MainAxisSize.min,
                    //                           crossAxisAlignment: CrossAxisAlignment.start,
                    //                           children: <Widget>[
                    //                             Text("You have ${data?[index].passFail}ed"),
                    //                           ],
                    //                         ),
                    //                         actions: <Widget>[
                    //                           new FlatButton(
                    //                             onPressed: () {
                    //                               Navigator.of(context).pop();
                    //                             },
                    //                             textColor: Theme.of(context).primaryColor,
                    //                             child: Text('OK'),
                    //                           ),
                    //                         ],
                    //                         );
                    // });
                    //         }),
                    //     );
                            // }
                                  
                            // );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: const Text('ID sent succesfully'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    
                    } else {
                      return;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
    );

    // return Center(
    //     child: ElevatedButton(
    //       child: Text(
    //         'Check Result',
    //         style: TextStyle(
    //           color: Colors.white,
    //         ),
    //       ),
    //       //color: Colors.black,
    //       onPressed: () {
    //         _resultList.setstudentId ='123456';
    //         showDialog(
    //           context: context,
    //           builder: (BuildContext context) => _buildPopupDialog(context),
    //         );
    //       },
    //     ),
    //   );
  }
}

// Widget _buildPopupDialog(BuildContext context) {
//   FetchResultList _resultList = FetchResultList();

//   return SafeArea(
//     child: FutureBuilder<List<Result>>(
//       future: _resultList.getResult(),
//       builder: (context , snapshot){
//         var data = snapshot.data;
//         //print('${data?.passFail}');
//         // if (!snapshot.hasData) {
//         //     return Center(child: CircularProgressIndicator());
//         // }
//       return new AlertDialog(
//         title: const Text('Result'),
//         content: new Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text("You have ${data}ed"),
//           ],
//         ),
//         actions: <Widget>[
//           new FlatButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             textColor: Theme.of(context).primaryColor,
//             child: Text('OK'),
//           ),
//         ],
//         );
//       }),
//   );

  // return new AlertDialog(
  //   title: const Text('Result'),
  //   content: new Column(
  //     mainAxisSize: MainAxisSize.min,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       Text("You have ed"), //${data?.passFail}
  //     ],
  //   ),
  //   actions: <Widget>[
  //     new FlatButton(
  //       onPressed: () {
  //         Navigator.of(context).pop();
  //       },
  //       textColor: Theme.of(context).primaryColor,
  //       child: Text('OK'),
  //     ),
  //   ],
  // );

// }

// return new AlertDialog(
//     title: const Text('Result'),
//     content: new Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text("You have passed/failed"),
//       ],
//     ),
//     actions: <Widget>[
//       new FlatButton(
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//         textColor: Theme.of(context).primaryColor,
//         child: Text('OK'),
//       ),
//     ],
//   );