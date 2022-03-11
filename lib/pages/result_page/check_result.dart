import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:http/http.dart' as http;
import 'package:ioe_app/model/result_model.dart';
import 'package:ioe_app/model/result_data.dart';
import 'package:ioe_app/model/exam_model.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/homeDrawer.dart';

class CheckResultPage extends StatefulWidget {
  final String examId;
  const CheckResultPage({Key? key, required this.examId}) : super(key: key);

  @override
  State<CheckResultPage> createState() => _CheckResultPageState();
}

class _CheckResultPageState extends State<CheckResultPage> {
  FetchResultList _resultList = FetchResultList();

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    //widget.examId;  passing data from main state to secondary state

    String patttern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(patttern);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter your ID:",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Container(
        padding: EdgeInsets.all(20),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
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
                  final studentID =
                      _formKey.currentState?.fields['studentID']?.value;

                  if (_formKey.currentState!.validate()) {
                    _resultList.setstudentId = studentID;
                    _resultList.setexamId = widget.examId;

                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SafeArea(
                            child: FutureBuilder<Result>(
                                future: _resultList.getResult(),
                                builder: (context, snapshot) {
                                  var data = snapshot.data;

                                  return ListView.builder(
                                      itemCount: 1,
                                      itemBuilder: (context, index) {
                                        return new AlertDialog(
                                          title: const Text('Result'),
                                          content: new Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  "You have ${data?.passFail}ed"),
                                            ],
                                          ),
                                          actions: <Widget>[
                                            new FlatButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                Navigator.of(context).pop();
                                              },
                                              textColor: Theme.of(context)
                                                  .primaryColor,
                                              child: Text('OK'),
                                            ),
                                          ],
                                        );
                                      });
                                }),
                          );
                        });
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
  }
}
