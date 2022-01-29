import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About IOE",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      backgroundColor: context.canvasColor,
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
                  Navigator.pushNamed(context, MyRoutes.glanceRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "IOE at a Glance",
                  ),
                ),
              )),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.deanmsgRoute);
                  },
                  title: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Message from Dean"),
                  ),
                  // subtitle: Text("ohhh hoooo"),
                ),
              ),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.visionRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Vision Mission Golas and Objectives"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.historyRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("History of IOE"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.facultiesRoute);
                },
                title: const Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Faculties & Staffs"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.contactRoute);
                },
                title: const Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text("Contact Us"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.ioeloginRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("IOE Email Login"),
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
