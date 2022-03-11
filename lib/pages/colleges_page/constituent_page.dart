import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class ConstituentPage extends StatelessWidget {
  const ConstituentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Constituent Colleges",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Flexible(
              child: ListView(
            children: [
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.pulchowkCollegeRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Pulchowk Campus",
                  ),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.thapathaliCollegeRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Thapathali Campus",
                  ),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.purwanchalCollegeRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Purwanchal Campus",
                  ),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () {
                  Navigator.pushNamed(
                      context, MyRoutes.paschimanchalCollegeRoute);
                },
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Paschimanchal Campus",
                  ),
                ),
              )),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.chitwanCampusRoute);
                  },
                  title: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Chitwan Engineering Campus"),
                  ),
                  // subtitle: Text("ohhh hoooo"),
                ),
              ),
            ],
            padding: const EdgeInsets.all(10),
          ))
        ],
      ),
    );
  }
}
