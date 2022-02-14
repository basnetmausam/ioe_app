import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:ionicons/ionicons.dart';
import 'package:velocity_x/velocity_x.dart';

class ProgramPage extends StatelessWidget {
  const ProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Programs",
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
                Navigator.pushNamed(context, MyRoutes.undergraduateRoute);
              },
              leading: const Icon(Ionicons.arrow_down_circle_outline),
              title: const Text(
                "Undergraduate (B.E)",
              ),
            ).p8()),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.graduateRoute);
                },
                leading: const Icon(Ionicons.arrow_forward_circle_outline),

                title: const Text("Graduate (M.Sc.)"),
                // subtitle: Text("ohhh hoooo"),
              ).p8(),
            ),
            Card(
                child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.postgraduateRoute);
              },
              leading: const Icon(Ionicons.arrow_up_circle_outline),
              title: const Text("Post Graduate (Ph. D)"),
            ).p8()),
          ],
        ));
  }
}
