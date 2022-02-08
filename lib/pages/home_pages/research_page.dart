import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';

class ResearchPage extends StatelessWidget {
  const ResearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Research",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      // backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/duotone.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            Card(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.centresRoute);
                },
                leading: const Icon(Ionicons.locate_outline),
                title: Text(
                  "Centres",
                ),
              ),
            )),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.researchinfraRoute);
                  },
                  leading: const Icon(Ionicons.laptop_outline),

                  title: Text("Research Infrastructures"),
                  // subtitle: Text("ohhh hoooo"),
                ),
              ),
            ),
            Card(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.faculresRoute);
                },
                leading: const Icon(Ionicons.people_outline),
                title: Text("Faculty Researches"),
              ),
            )),
            Card(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.workshopRoute);
                },
                leading: const Icon(Ionicons.checkmark_done_circle_outline),
                title: Text("Workshops"),
              ),
            )),
            Card(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.seminarsRoute);
                },
                leading: const Icon(Ionicons.people_circle_outline),
                title: Text("Seminars & Conferences"),
              ),
            )),
            Card(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.publicationRoute);
                },
                leading: const Icon(Ionicons.book_outline),
                title: Text("Publications"),
              ),
            )),
          ],
          padding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
