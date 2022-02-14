import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:ionicons/ionicons.dart';
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
      body: ListView(
        children: [
          const SizedBox(
            height: 60,
          ),
          Card(
              child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.whyRoute);
            },
            leading: const Icon(Ionicons.alert_circle_outline),
            title: const Text(
              "Why Choose IOE",
            ),
          ).p8()),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.howRoute);
              },
              leading: const Icon(Ionicons.help_circle_outline),

              title: const Text("How to Apply"),
              // subtitle: Text("ohhh hoooo"),
            ).p8(),
          ),
          Card(
              child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.schlorshipRoute);
            },
            leading: const Icon(Ionicons.cash_outline),
            title: const Text("Schlorship"),
          ).p8()),
          Card(
              child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.beRoute);
            },
            leading: const Icon(Ionicons.arrow_down_circle_outline),
            title: const Text("Undergraduate(B.E)"),
          ).p8()),
          Card(
              child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.mscRoute);
            },
            leading: const Icon(Ionicons.arrow_forward_circle_outline),
            title: const Text("Graduate(M.Sc.)"),
          ).p8()),
          Card(
              child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.phdRoute);
            },
            leading: const Icon(Ionicons.arrow_up_circle_outline),
            title: const Text("Post Graduate(Ph. D)"),
          ).p8()),
          Card(
              child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.calenderRoute);
            },
            leading: const Icon(Ionicons.calendar_outline),
            title: const Text("Academic Calender"),
          ).p8()),
          Card(
              child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.evaluationRoute);
            },
            leading: const Icon(Ionicons.analytics_outline),
            title: const Text("Degree Equivalence"),
          ).p8()),
          Card(
              child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.examcontrolRoute);
            },
            leading: const Icon(Ionicons.help_buoy_outline),
            title: const Text("Exam Controller Division"),
          ).p8()),
        ],
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
