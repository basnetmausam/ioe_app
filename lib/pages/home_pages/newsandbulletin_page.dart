import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ionicons/ionicons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/utils/routes.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News & Bulletin",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: ListView(
        children: [
          80.heightBox,
          Card(
              child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.newssRoute);
            },
            leading: const Icon(Ionicons.newspaper_outline),
            title: const Text(
              "News",
            ),
          ).p8()),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.eventsRoute);
              },
              leading: const Icon(Ionicons.calendar_clear_outline),

              title: const Text("Events"),
              // subtitle: Text("ohhh hoooo"),
            ).p8(),
          ),
          Card(
              child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.ioemonthlyRoute);
            },
            leading: const Icon(Ionicons.radio_outline),
            title: const Text("IOE Monthly Bulletin"),
          ).p8()),
        ],
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
