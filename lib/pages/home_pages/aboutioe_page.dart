import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ionicons/ionicons.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget buildSheet(BuildContext context, SheetState state) => Material(
    //       child: Padding(
    //         padding: const EdgeInsets.all(16.0),
    //         child: Column(
    //           children: const [
    //             Text(
    //                 "What is Lorem Ipsum?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Why do we use it?t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
    //             SizedBox(height: 50),
    //             Text("hellp")
    //           ],
    //         ),
    //       ),
    //     );

    // Widget buildHeader(BuildContext context, SheetState state) => Material(
    //         child: Container(
    //       color: context.canvasColor,
    //       width: double.infinity,
    //       child: Padding(
    //         padding: const EdgeInsets.all(16.0),
    //         child: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             Container(
    //               height: 8,
    //               width: 100,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20),
    //                   color: context.accentColor),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ));
    // Future showSheet() => showSlidingBottomSheet(context,
    //     builder: (context) => const SlidingSheetDialog(
    //           cornerRadius: 16,
    //           avoidStatusBar: true,
    //           snapSpec: SnapSpec(
    //             // initialSnap: 1,
    //             snappings: [0.4, 1],
    //           ),
    //           builder: buildSheet,
    //           headerBuilder: buildHeader,
    //         ));
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
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.facultiesRoute);
              },
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
          Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.ioeloginRoute);
              },
              leading: const Icon(Ionicons.mail_outline),
              title: const Text("IOE Email Login"),
            ),
          )),
        ],
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
