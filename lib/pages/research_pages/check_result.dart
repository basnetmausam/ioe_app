import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:ioe_app/model/result_model.dart';
import 'package:ioe_app/model/result_data.dart';
import 'package:ioe_app/model/exam_model.dart';


class CheckResultPage extends StatefulWidget {
  final String exam;
  const CheckResultPage({ Key? key , required this.exam}) : super(key: key);

  @override
  State<CheckResultPage> createState() => _CheckResultPageState();
}

class _CheckResultPageState extends State<CheckResultPage> {  
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
          child: Text(
            'Check Result',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          //color: Colors.black,
          onPressed: () {
            //FetchResultList(exam)
            showDialog(
              context: context,
              builder: (BuildContext context) => _buildPopupDialog(context),
            );
          },
        ),
      );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Result'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("You have passed/failed"),
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
}