import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/homeDrawer.dart';

class PartnershipPage extends StatelessWidget {
  const PartnershipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: Text('Partnership'),
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
