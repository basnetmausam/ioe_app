import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:ionicons/ionicons.dart';
import 'package:velocity_x/velocity_x.dart';

class CollegePage extends StatelessWidget {
  const CollegePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Colleges",
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
                child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.affiliatedRoute);
              },
              leading: const Icon(Ionicons.paper_plane_outline),
              title: const Text(
                "Affiliated Colleges",
              ),
            ).p8()),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.constituentRoute);
                },
                leading: const Icon(Ionicons.disc_outline),

                title: const Text("Constituent Colleges"),
                // subtitle: Text("ohhh hoooo"),
              ).p8(),
            ),
          ],
          padding: const EdgeInsets.all(10),
        ));
  }
}
