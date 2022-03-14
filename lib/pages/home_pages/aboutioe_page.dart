import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ionicons/ionicons.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About IOE",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: ListView(
        children: [
          const SizedBox(
            height: 80,
          ),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.glanceRoute);
              },
              leading: const Icon(Ionicons.eye_outline),
              title: const Text(
                "IOE at a Glance",
              ),
            ),
          )),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.deanmsgRoute);
                },
                leading: const Icon(Ionicons.chatbox_outline),

                title: const Text("Message from Dean"),
                // subtitle: Text("ohhh hoooo"),
              ),
            ),
          ),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.visionRoute);
              },
              leading: const Icon(Ionicons.checkmark_done),
              title: const Text("Vision Mission Golas and Objectives"),
            ),
          )),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.historyRoute);
              },
              leading: const Icon(Ionicons.compass_outline),
              title: const Text("History of IOE"),
            ),
          )),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {},
              leading: const Icon(Ionicons.people_outline),
              title: const Text("Faculties & Staffs"),
            ),
          )),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.contactRoute);
              },
              leading: const Icon(Ionicons.call_outline),
              title: const Text("Contact Us"),
            ),
          )),
        ],
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
