import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.info_outline_rounded),
                    title: Text("About IOE"),
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.ioeRoute);
                    }),

                ListTile(
                    leading: Icon(Icons.event),
                    title: Text("Programs"),
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.programRoute);
                    }),

                ListTile(
                    leading: Icon(Icons.school),
                    title: Text("Colleges"),
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.collegeRoute);
                    }),

                ListTile(
                    leading: Icon(Icons.collections_bookmark),
                    title: Text("Admission"),
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.admissionRoute);
                    }),

                ListTile(
                    leading: Icon(Icons.person_search_outlined),
                    title: Text("Research"),
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.researchRoute);
                    }),

                ListTile(
                    leading: Icon(Icons.insert_link),
                    title: Text("Patnership"),
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.partnershipRoute);
                    }),

                ListTile(
                    leading: Icon(Icons.menu_book),
                    title: Text("News And Buletin"),
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.newsbulletinRoute);
                    }),

                ListTile(
                    leading: Icon(Icons.add_comment_outlined),
                    title: Text("Extras"),
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.extrasRoute);
                    }),

                //add more drawer menu here
              ],
            ))),
  );
}
