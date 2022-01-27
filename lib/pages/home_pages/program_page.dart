import 'package:flutter/material.dart';
import 'package:ioe_app/pages/homeDrawer.dart';

class ProgramPage extends StatelessWidget {
  const ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programs'),
        centerTitle: true,

        //backgroundColor: Colors.indigo.shade900,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.indigo.shade900,
            Colors.indigo,
            Colors.red.shade100
          ])),
        ),
      ),
      drawer: myDrawer(context),
    );
  }
}
