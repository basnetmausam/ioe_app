import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:ioe_app/pages/homeDrawer.dart';
=======
import 'package:velocity_x/velocity_x.dart';
>>>>>>> 2736e1bc44f2d9fffcd93536a1c6dc99b75b07dc

class ProgramPage extends StatelessWidget {
  const ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
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
=======
        backgroundColor: context.canvasColor,
        body: Material(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Programs",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ],
          ),
        ));
>>>>>>> 2736e1bc44f2d9fffcd93536a1c6dc99b75b07dc
  }
}
