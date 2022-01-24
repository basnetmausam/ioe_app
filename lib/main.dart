import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ioe_app/pages/bottom_navigation.dart';
import 'package:ioe_app/pages/home_pages/aboutioe_page.dart';
import 'package:ioe_app/pages/home_pages/admission_page.dart';
import 'package:ioe_app/pages/home_pages/college_page.dart';
import 'package:ioe_app/pages/home_page.dart';
import 'package:ioe_app/pages/home_pages/extras_page.dart';
import 'package:ioe_app/pages/home_pages/newsandbulletin_page.dart';
import 'package:ioe_app/pages/home_pages/partnership_page.dart';
import 'package:ioe_app/pages/home_pages/program_page.dart';
import 'package:ioe_app/pages/home_pages/research_page.dart';
import 'package:ioe_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'IOE App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.navigationRoute,
      routes: {
        MyRoutes.navigationRoute: (context) => const NavigationPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.collegeRoute: (context) => const CollegePage(),
        MyRoutes.newsbulletinRoute: (context) => const NewsPage(),
        MyRoutes.ioeRoute: (context) => const AboutPage(),
        MyRoutes.programRoute: (context) => const ProgramPage(),
        MyRoutes.admissionRoute: (context) => const AdmissionPage(),
        MyRoutes.researchRoute: (context) => const ResearchPage(),
        MyRoutes.partnershipRoute: (context) => const PartnershipPage(),
        MyRoutes.extrasRoute: (context) => const ExtraPage(),
      },
    );
  }
}
