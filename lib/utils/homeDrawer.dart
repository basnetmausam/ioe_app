import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

final Paadding = const EdgeInsets.symmetric(horizontal: 20);
Widget myDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: context.cardColor,
    child: Material(
      child: ListView(padding: Paadding, children: <Widget>[
        Container(
          height: 175.213,
          child: const DrawerHeader(
              child: searchbox(),
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0)),
        ),

        ListTile(
          title: const Text('HOME'),
          onTap: () {
            Navigator.pushNamed(context, MyRoutes.navigationRoute);
          },
        ),
        const SizedBox(
          height: 13,
        ),
        ExpansionTile(
            title: const Text('ABOUT IOE'),
            leading: const Icon(Icons.info_outline_rounded),
            children: <Widget>[
              Gesturedetectors(text: 'IOE at a Glance'),
              Gesturedetectors(text: 'Message from Dean'),
              Gesturedetectors(text: 'Vision Mission Goals Objectives'),
              Gesturedetectors(text: 'History of IOE'),
              Gesturedetectors(text: 'Faculties & Staffs'),
              Gesturedetectors(text: 'Contact us'),
              Gesturedetectors(text: 'IOE Email Login'),
            ]),

        ExpansionTile(
            title: const Text('PROGRAMS'),
            leading: const Icon(Icons.event),
            children: <Widget>[
              Gesturedetectors(
                  text: 'Undergraduate (B.E.)',
                  onClicked: () => programItem(context, 0)),
              Gesturedetectors(
                  text: 'Graduate (M.SC.)',
                  onClicked: () => programItem(context, 1)),
              Gesturedetectors(
                  text: 'Post Graduate (Ph.D)',
                  onClicked: () => programItem(context, 2)),
            ]),

        ExpansionTile(
            title: const Text('COLLEGES'),
            leading: const Icon(Icons.school),
            children: <Widget>[
              Gesturedetectors(text: 'Affiliated Colleges'),
              Gesturedetectors(text: 'Constituent Colleges'),
            ]),

        ExpansionTile(
            title: const Text('ADMISSION'),
            leading: const Icon(Icons.collections_bookmark),
            children: <Widget>[
              Gesturedetectors(text: 'Why Choose IOE'),
              Gesturedetectors(text: 'How to Apply'),
              Gesturedetectors(text: 'Scholarship'),
              Gesturedetectors(text: 'Undergraduate (B.E.)'),
              Gesturedetectors(text: 'Graduate (M.Sc.)'),
              Gesturedetectors(text: 'Post Graduate (Ph. D)'),
              Gesturedetectors(text: 'Academic Calendar'),
              Gesturedetectors(text: 'Degree Equivalence'),
              Gesturedetectors(text: 'Exam Control Division'),
            ]),

        ExpansionTile(
            title: const Text('RESEARCH'),
            leading: const Icon(Icons.person_search_outlined),
            children: <Widget>[
              Gesturedetectors(text: 'Centers'),
              Gesturedetectors(text: 'Research Infrastructures'),
              Gesturedetectors(text: 'Faculty Researches'),
              Gesturedetectors(text: 'Workshops'),
              Gesturedetectors(text: 'Seminars & Conferences'),
              Gesturedetectors(text: 'Publications'),
            ]),

        ExpansionTile(
            title: const Text('PARTNERSHIPS'),
            leading: const Icon(Icons.insert_link),
            children: <Widget>[
              Gesturedetectors(text: 'National and International Linkage'),
              Gesturedetectors(text: 'Working with Industry'),
              Gesturedetectors(text: 'Available Capabilities and Technologies'),
            ]),

        ExpansionTile(
            title: const Text('NEWS AND BULLETIN'),
            leading: const Icon(Icons.menu_book),
            children: <Widget>[
              Gesturedetectors(text: 'News'),
              Gesturedetectors(text: 'Events'),
              Gesturedetectors(text: 'IOE Monthly Bulletin'),
            ]),

        // buildMenuItem(
        //     text: 'About IOE',
        //     icon: Icons.info_outline_rounded,
        //     onClicked: () => selectedItem(context, 0)),
        // const SizedBox(
        //   height: 15,
        // ),
        // buildMenuItem(
        //     text: 'Programs',
        //     icon: Icons.event,
        //     onClicked: () => selectedItem(context, 1)),
        // const SizedBox(
        //   height: 15,
        // ),
        // buildMenuItem(
        //     text: 'Colleges',
        //     icon: Icons.school,
        //     onClicked: () => selectedItem(context, 2)),
        // const SizedBox(
        //   height: 15,
        // ),
        // buildMenuItem(
        //     text: 'Admission',
        //     icon: Icons.collections_bookmark,
        //     onClicked: () => selectedItem(context, 3)),
        // const SizedBox(
        //   height: 15,
        // ),
        // buildMenuItem(
        //     text: 'Research',
        //     icon: Icons.person_search_outlined,
        //     onClicked: () => selectedItem(context, 4)),
        // const SizedBox(
        //   height: 15,
        // ),
        // buildMenuItem(
        //     text: 'Patnership',
        //     icon: Icons.insert_link,
        //     onClicked: () => selectedItem(context, 5)),
        // const SizedBox(
        //   height: 15,
        // ),
        // buildMenuItem(
        //     text: 'News And Buletin',
        //     icon: Icons.menu_book,
        //     onClicked: () => selectedItem(context, 6)),
        // const SizedBox(
        //   height: 15,
        // ),
        // buildMenuItem(
        //     text: 'Extras',
        //     icon: Icons.add_comment_outlined,
        //     onClicked: () => selectedItem(context, 7)),
      ]),
    ),
  );
}

Widget Gesturedetectors({
  required String text,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  final hoverColar = Colors.black26;
  return GestureDetector(
    child: SizedBox(
        width: 250,
        height: 35,
        child: Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Card(
              child: Center(
                  child: Text(
                text,
              )),
            ))),
    onTap: onClicked,
  );
}

void programItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(context, MyRoutes.undergraduateRoute);
      break;
    case 1:
      Navigator.pushNamed(context, MyRoutes.graduateRoute);
      break;
    case 2:
      Navigator.pushNamed(context, MyRoutes.postgraduateRoute);
      break;
  }
}

// ignore: camel_case_types
class searchbox extends StatelessWidget {
  const searchbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1, vertical: 35),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
      ],
    );
  }
}
