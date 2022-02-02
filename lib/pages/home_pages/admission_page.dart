import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class AdmissionPage extends StatelessWidget {
  const AdmissionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Admission",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "About IOE",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Flexible(
              child: ListView(
            children: [
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.whyRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Why Choose IOE",
                  ),
                ),
              )),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.howRoute);
                  },
                  title: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("How to Apply"),
                  ),
                  // subtitle: Text("ohhh hoooo"),
                ),
              ),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.schlorshipRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Schlorship"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.beRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Undergraduate(B.E)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.mscRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Graduate(M.Sc.)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.phdRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Post Graduate(Ph. D)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.calenderRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Academic Calender"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.evaluationRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Degree Equivalence"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.examcontrolRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Exam Controller Division"),
                ),
              )),
            ],
            padding: const EdgeInsets.all(10),
          ))
        ],
      ),
    );
  }
}
