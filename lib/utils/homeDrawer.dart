import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:ionicons/ionicons.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: non_constant_identifier_names, constant_identifier_names
const Paadding = EdgeInsets.symmetric(horizontal: 20);
Widget myDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: context.cardColor,
    child: Material(
      child: ListView(padding: Paadding, children: <Widget>[
        const SizedBox(
          height: 50,
        ),
        ListTile(
          leading: const Icon(Icons.home),
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
            leading: const Icon(
              Ionicons.information_circle,
              size: 30,
            ),
            children: <Widget>[
              Gesturedetectors(
                  text: 'IOE at a Glance',
                  onClicked: () => aboutioeItem(context, 0)),
              Gesturedetectors(
                  text: 'Message from Dean',
                  onClicked: () => aboutioeItem(context, 1)),
              Gesturedetectors(
                  text: 'Vision Mission Goals Objectives',
                  onClicked: () => aboutioeItem(context, 2)),
              Gesturedetectors(
                  text: 'History of IOE',
                  onClicked: () => aboutioeItem(context, 3)),
              Gesturedetectors(
                  text: 'Faculties & Staffs',
                  onClicked: () => aboutioeItem(context, 4)),
              Gesturedetectors(
                  text: 'Contact us',
                  onClicked: () => aboutioeItem(context, 5)),
              Gesturedetectors(
                  text: 'IOE Email Login',
                  onClicked: () => aboutioeItem(context, 6)),
            ]),
        ExpansionTile(
            title: const Text('PROGRAMS'),
            leading: const Icon(
              Ionicons.book,
              size: 30,
            ),
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
            leading: const Icon(
              FontAwesomeIcons.university,
            ),
            children: <Widget>[
              Gesturedetectors(
                  text: 'Affiliated Colleges',
                  onClicked: () => collegesItem(context, 0)),
              Gesturedetectors(
                  text: 'Constituent Colleges',
                  onClicked: () => collegesItem(context, 1)),
            ]),
        ExpansionTile(
            title: const Text('ADMISSION'),
            leading: const Icon(
              Ionicons.today,
              size: 30,
            ),
            children: <Widget>[
              Gesturedetectors(
                  text: 'Why Choose IOE',
                  onClicked: () => admissionItem(context, 0)),
              Gesturedetectors(
                  text: 'How to Apply',
                  onClicked: () => admissionItem(context, 1)),
              Gesturedetectors(
                  text: 'Scholarship',
                  onClicked: () => admissionItem(context, 2)),
              Gesturedetectors(
                  text: 'Undergraduate (B.E.)',
                  onClicked: () => admissionItem(context, 3)),
              Gesturedetectors(
                  text: 'Graduate (M.Sc.)',
                  onClicked: () => admissionItem(context, 4)),
              Gesturedetectors(
                  text: 'Post Graduate (Ph. D)',
                  onClicked: () => admissionItem(context, 5)),
              Gesturedetectors(
                  text: 'Academic Calendar',
                  onClicked: () => admissionItem(context, 6)),
              Gesturedetectors(
                  text: 'Degree Equivalence',
                  onClicked: () => admissionItem(context, 7)),
              Gesturedetectors(
                  text: 'Exam Control Division',
                  onClicked: () => admissionItem(context, 8)),
            ]),
        ExpansionTile(
            title: const Text('RESEARCH'),
            leading: const Icon(
              FontAwesomeIcons.searchengin,
            ),
            children: <Widget>[
              Gesturedetectors(
                  text: 'Centers', onClicked: () => researchItem(context, 0)),
              Gesturedetectors(
                  text: 'Research Infrastructures',
                  onClicked: () => researchItem(context, 1)),
              Gesturedetectors(
                  text: 'Faculty Researches',
                  onClicked: () => researchItem(context, 2)),
              Gesturedetectors(
                  text: 'Workshops', onClicked: () => researchItem(context, 3)),
              Gesturedetectors(
                  text: 'Seminars & Conferences',
                  onClicked: () => researchItem(context, 4)),
              Gesturedetectors(
                  text: 'Publications',
                  onClicked: () => researchItem(context, 5)),
            ]),
        ExpansionTile(
            title: const Text('PARTNERSHIPS'),
            leading: const Icon(FontAwesomeIcons.solidHandshake),
            children: <Widget>[
              Gesturedetectors(
                  text: 'National and International Linkage',
                  onClicked: () => partnershipItem(context, 0)),
              Gesturedetectors(
                  text: 'Working with Industry',
                  onClicked: () => partnershipItem(context, 1)),
              GestureDetector(
                child: const SizedBox(
                    width: 260,
                    height: 50,
                    child: Card(
                      child: Center(
                          child: Text(
                        'Available Capabilities\n  and Technologies',
                      )),
                    )),
                onTap: () => partnershipItem(context, 2),
              ),
            ]),
        ExpansionTile(
            title: const Text('NEWS AND BULLETIN'),
            leading: const Icon(FontAwesomeIcons.solidNewspaper),
            children: <Widget>[
              Gesturedetectors(
                  text: 'News',
                  onClicked: () => newsandbuletinItem(context, 0)),
              Gesturedetectors(
                  text: 'Events',
                  onClicked: () => newsandbuletinItem(context, 1)),
              Gesturedetectors(
                  text: 'IOE Monthly Bulletin',
                  onClicked: () => newsandbuletinItem(context, 2)),
            ]),
      ]),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget Gesturedetectors({
  required String text,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  final hoverColar = Colors.white;
  return GestureDetector(
    child: SizedBox(
        width: 260,
        height: 50,
        child: Card(
          child: Center(
              child: Text(
            text,
          )),
        )),
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

void aboutioeItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(context, MyRoutes.glanceRoute);
      break;
    case 1:
      Navigator.pushNamed(context, MyRoutes.deanmsgRoute);
      break;
    case 2:
      Navigator.pushNamed(context, MyRoutes.visionRoute);
      break;
    case 3:
      Navigator.pushNamed(context, MyRoutes.historyRoute);
      break;
    case 4:
      Navigator.pushNamed(context, MyRoutes.facultiesRoute);
      break;
    case 5:
      Navigator.pushNamed(context, MyRoutes.contactRoute);
      break;
    case 6:
      Navigator.pushNamed(context, MyRoutes.ioeloginRoute);
      break;
  }
}

void collegesItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(context, MyRoutes.affiliatedRoute);
      break;
    case 1:
      Navigator.pushNamed(context, MyRoutes.constituentRoute);
      break;
  }
}

void admissionItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(context, MyRoutes.whyRoute);
      break;
    case 1:
      Navigator.pushNamed(context, MyRoutes.howRoute);
      break;
    case 2:
      Navigator.pushNamed(context, MyRoutes.schlorshipRoute);
      break;
    case 3:
      Navigator.pushNamed(context, MyRoutes.beRoute);
      break;
    case 4:
      Navigator.pushNamed(context, MyRoutes.mscRoute);
      break;
    case 5:
      Navigator.pushNamed(context, MyRoutes.phdRoute);
      break;
    case 6:
      Navigator.pushNamed(context, MyRoutes.calenderRoute);
      break;
    case 7:
      Navigator.pushNamed(context, MyRoutes.degreEqRoute);
      break;
    case 8:
      Navigator.pushNamed(context, MyRoutes.examcontrolRoute);
      break;
  }
}

void researchItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(context, MyRoutes.centresRoute);
      break;
    case 1:
      Navigator.pushNamed(context, MyRoutes.researchinfraRoute);
      break;
    case 2:
      Navigator.pushNamed(context, MyRoutes.faculresRoute);
      break;
    case 3:
      Navigator.pushNamed(context, MyRoutes.workshopRoute);
      break;
    case 4:
      Navigator.pushNamed(context, MyRoutes.seminarsRoute);
      break;
    case 5:
      Navigator.pushNamed(context, MyRoutes.publicationRoute);
      break;
  }
}

void partnershipItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(context, MyRoutes.nationalCollegeRoute);
      break;
    case 1:
      Navigator.pushNamed(context, MyRoutes.industryworkRoute);
      break;
    case 2:
      Navigator.pushNamed(context, MyRoutes.capabilitiesRoute);
      break;
  }
}

void newsandbuletinItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushNamed(context, MyRoutes.newssRoute);
      break;
    case 1:
      Navigator.pushNamed(context, MyRoutes.eventsRoute);
      break;
    case 2:
      Navigator.pushNamed(context, MyRoutes.ioemonthlyRoute);
      break;
  }
}

void extrasItem(BuildContext context, int index) {
  switch (index) {
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
