import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';

class ProgramPage extends StatelessWidget {
  const ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: const Text('Programs'),
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
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Flexible(
              child: ListView(
            children: [
              InkWell(
                child: const Card(
                    child: ListTile(
                  title: Text("Undergraduate (B.E.)"),
                )),
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.undergraduateRoute);
                },
              ),
              InkWell(
                child: const Card(
                    child: ListTile(
                  title: Text("Graduate (M.Sc.)"),
                )),
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.graduateRoute);
                },
              ),
              InkWell(
                child: const Card(
                    child: ListTile(
                  title: Text("Post Graduate (Ph.D)"),
                )),
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.postgraduateRoute);
                },
              )
            ],
            padding: const EdgeInsets.all(10),
          ))
        ],
      ),
    );
  }
}
