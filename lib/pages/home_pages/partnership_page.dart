import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:ionicons/ionicons.dart';
import 'package:velocity_x/velocity_x.dart';

class PartnershipPage extends StatelessWidget {
  const PartnershipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Partnership",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(24.0),
          //   child: Align(
          //     alignment: Alignment.topLeft,
          //     child: Text(
          //       "Partnerships",
          //       style: Theme.of(context).textTheme.headline1,
          //     ),
          //   ),
          // ),
          // const SizedBox(
          //   height: 40,
          // ),
          Flexible(
              child: ListView(
            children: [
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.linkRoute);
                },
                leading: const Icon(Ionicons.link_outline),
                title: Text(
                  "National and International Linkage",
                ),
              ).p8()),
              Card(
                child: ListTile(
                  onTap: () {
                    // Navigator.pushNamed(context, MyRoutes.industryworkRoute);
                  },
                  leading: const Icon(Ionicons.business_outline),

                  title: Text("Working with Industry"),
                  // subtitle: Text("ohhh hoooo"),
                ).p8(),
              ),
              Card(
                  child: ListTile(
                onTap: () {
                  // Navigator.pushNamed(context, MyRoutes.capabilitiesRoute);
                },
                leading: const Icon(Ionicons.speedometer_outline),
                title: Text("Available Capabilities and Technologies"),
              ).p8()),
            ],
            padding: const EdgeInsets.all(10),
          ))
        ],
      ),
    );
  }
}
