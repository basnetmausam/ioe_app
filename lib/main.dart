import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:ioe_app/pages/about_pages/contact_page.dart';
import 'package:ioe_app/pages/about_pages/faculties_page.dart';
import 'package:ioe_app/pages/about_pages/glance_page.dart';
import 'package:ioe_app/pages/about_pages/history.dart';
import 'package:ioe_app/pages/about_pages/ioeemaillogin_page.dart';
import 'package:ioe_app/pages/about_pages/messagedean_page.dart';
import 'package:ioe_app/pages/about_pages/vision_page.dart';

import 'package:ioe_app/pages/admission_pages/be_page.dart';

import 'package:ioe_app/pages/admission_pages/evaluation_page.dart';

import 'package:ioe_app/pages/admission_pages/examcontrol_page.dart';
import 'package:ioe_app/pages/admission_pages/how_page.dart';
import 'package:ioe_app/pages/admission_pages/msc_page.dart';
import 'package:ioe_app/pages/admission_pages/phd_page.dart';
import 'package:ioe_app/pages/admission_pages/schlorship_page.dart';
import 'package:ioe_app/pages/admission_pages/why_page.dart';
import 'package:ioe_app/pages/admission_pages/degreeEq.dart';
import 'package:ioe_app/pages/bottom_navigation.dart';
import 'package:ioe_app/pages/calender_pages/calender_page.dart';
import 'package:ioe_app/pages/colleges_page/aff_clz_pages/advanced.dart';
import 'package:ioe_app/pages/colleges_page/aff_clz_pages/himalaya.dart';
import 'package:ioe_app/pages/colleges_page/aff_clz_pages/janakpur.dart';
import 'package:ioe_app/pages/colleges_page/aff_clz_pages/kantipur.dart';
import 'package:ioe_app/pages/colleges_page/aff_clz_pages/kathford.dart';
import 'package:ioe_app/pages/colleges_page/aff_clz_pages/kathmandu.dart';
import 'package:ioe_app/pages/colleges_page/aff_clz_pages/khwopa.dart';
import 'package:ioe_app/pages/colleges_page/aff_clz_pages/lalitpur.dart';
import 'package:ioe_app/pages/colleges_page/aff_clz_pages/national.dart';
import 'package:ioe_app/pages/colleges_page/aff_clz_pages/sagarmatha.dart';
// college
import 'package:ioe_app/pages/colleges_page/affiliated_page.dart';
import 'package:ioe_app/pages/colleges_page/const_clz_pages/ChitwanCampus_page.dart';
import 'package:ioe_app/pages/colleges_page/const_clz_pages/Paschimanchal_page.dart';
import 'package:ioe_app/pages/colleges_page/const_clz_pages/Purwanchal_page.dart';
import 'package:ioe_app/pages/colleges_page/const_clz_pages/Thapathali_campus.dart';
import 'package:ioe_app/pages/colleges_page/const_clz_pages/pulchowk_page.dart';
import 'package:ioe_app/pages/colleges_page/constituent_page.dart';
import 'package:ioe_app/widgets/map.dart';

import 'package:ioe_app/pages/home_pages/aboutioe_page.dart';
import 'package:ioe_app/pages/home_pages/admission_page.dart';
import 'package:ioe_app/pages/home_pages/college_page.dart';
import 'package:ioe_app/pages/home_page.dart';
import 'package:ioe_app/pages/home_pages/extras_page.dart';
import 'package:ioe_app/pages/home_pages/result_page.dart';
import 'package:ioe_app/pages/home_pages/partnership_page.dart';
import 'package:ioe_app/pages/home_pages/program_page.dart';
import 'package:ioe_app/pages/home_pages/research_page.dart';

import 'package:ioe_app/pages/newsbulletin_pages/events_page.dart';
import 'package:ioe_app/pages/newsbulletin_pages/bulletin_page.dart';
import 'package:ioe_app/pages/newsbulletin_pages/news_page.dart';

import 'package:ioe_app/pages/partnership_pages/capabilities_page.dart';
import 'package:ioe_app/pages/partnership_pages/industrywork_page.dart';
import 'package:ioe_app/pages/partnership_pages/natinternatlink_page.dart';
import 'package:ioe_app/pages/programs_pages/Graduate%20(M.Sc.).dart';
import 'package:ioe_app/pages/programs_pages/Post%20Graduate%20(Ph.%20D).dart';
import 'package:ioe_app/pages/programs_pages/Undergraduate%20(B.E).dart';

import 'package:ioe_app/pages/research_pages/centres_page.dart';
import 'package:ioe_app/pages/research_pages/facultyresearch_page.dart';
import 'package:ioe_app/pages/research_pages/publication_page.dart';
import 'package:ioe_app/pages/research_pages/researchinfrastructures_page.dart';
import 'package:ioe_app/pages/research_pages/seminars_page.dart'; //exam list
import 'package:ioe_app/pages/research_pages/workshop_page.dart';
import 'package:ioe_app/pages/research_pages/check_result.dart'; //check result

import 'package:ioe_app/utils/routes.dart';
import 'package:ioe_app/widgets/themes.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

// import 'dart:convert';

//

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'IOE App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      home: HomePage(),

      // SplashScreen(
      //   seconds: 8,
      //   navigateAfterSeconds: NavigationPage(),
      //   title: new Text(
      //     'IOE App',
      //     style: new TextStyle(
      //         fontWeight: FontWeight.bold,
      //         fontSize: 50.0,
      //         color: Colors.black26),
      //   ),
      // ),
      initialRoute: MyRoutes.navigationRoute,
      routes: {
        MyRoutes.navigationRoute: (context) => const NavigationPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),

        // HOMEPAGE
        MyRoutes.collegeRoute: (context) => const CollegePage(),
        MyRoutes.resultcheckRoute: (context) => const ResultPage(),
        MyRoutes.ioeRoute: (context) => const AboutPage(),
        MyRoutes.programRoute: (context) => const ProgramPage(),
        MyRoutes.admissionRoute: (context) => const AdmissionPage(),
        MyRoutes.researchRoute: (context) => const ResearchPage(),
        MyRoutes.partnershipRoute: (context) => const PartnershipPage(),
        MyRoutes.extrasRoute: (context) => const ExtraPage(),

        //ABOUT IOE Page
        MyRoutes.contactRoute: (context) => const ContactPage(),
        MyRoutes.ioeloginRoute: (context) => const IOEmailPage(),
        MyRoutes.deanmsgRoute: (context) => const MessagePage(),
        MyRoutes.historyRoute: (context) => const HistoryPage(),
        MyRoutes.visionRoute: (context) => const VisionPage(),
        MyRoutes.facultiesRoute: (context) => const FacultyPage(),
        MyRoutes.glanceRoute: (context) => const GlancePage(),

        // Admission Page
        MyRoutes.beRoute: (context) => const BEPage(),
        MyRoutes.mscRoute: (context) => const MscPage(),
        MyRoutes.phdRoute: (context) => const PhdPage(),
        MyRoutes.calenderRoute: (context) => const CalendarPage(),
        MyRoutes.degreEqRoute: (context) => const degreeEqpage(),
        // MyRoutes.eventEditingRoute: (context) => const EventEditingPage(),

        MyRoutes.examcontrolRoute: (context) => const ExamPage(),
        MyRoutes.howRoute: (context) => const HowPage(),
        MyRoutes.whyRoute: (context) => const WhyPage(),
        MyRoutes.evaluationRoute: (context) => const EvaluationPage(),
        MyRoutes.schlorshipRoute: (context) => const SchlorshipPage(),

        //Colleges Page
        MyRoutes.affiliatedRoute: (context) => const AffiliatedPage(),
        MyRoutes.constituentRoute: (context) => const ConstituentPage(),
        MyRoutes.mapRoute: (context) => MapPage(),
        // constituted
        MyRoutes.pulchowkCollegeRoute: (context) => const PulchowkPage(),
        MyRoutes.thapathaliCollegeRoute: (context) => const ThapathaliPage(),
        MyRoutes.purwanchalCollegeRoute: (context) => const PurwanchalPage(),
        MyRoutes.paschimanchalCollegeRoute: (context) =>
            const PaschimanchalPage(),
        MyRoutes.chitwanCampusRoute: (context) => const ChitwanCampusPage(),
        // affiliated
        MyRoutes.advancedCollegeRoute: (context) => const AdvancedCollegePage(),
        MyRoutes.himalayaCollegeRoute: (context) => const HimalayaCollegePage(),
        MyRoutes.janakpurCollegeRoute: (context) => const JanakpurCollegePage(),
        MyRoutes.kantipurCollegeRoute: (context) => const KantipurCollegePage(),
        MyRoutes.kathfordCollegeRoute: (context) => const KathfordCollegePage(),
        MyRoutes.kathmanduCollegeRoute: (context) =>
            const KathmanduCollegePage(),
        MyRoutes.khwopaCollegeRoute: (context) => const KhwopaCollegePage(),
        MyRoutes.lalitpurCollegeRoute: (context) => const LalitpurCollegePage(),
        MyRoutes.nationalCollegeRoute: (context) => const NationalCollegePage(),
        MyRoutes.sagarmathaCollegeRoute: (context) =>
            const SagarmathaCollegePage(),

        //News and Bulletin
        MyRoutes.eventsRoute: (context) => const EventsPage(),
        MyRoutes.ioemonthlyRoute: (context) => const BulletinPage(),
        MyRoutes.newssRoute: (context) => const NewssPage(),

        // Partnership Page
        MyRoutes.capabilitiesRoute: (context) => const CapabilitiesPage(),
        MyRoutes.industryworkRoute: (context) => const IndustryWorkPage(),
        MyRoutes.linkRoute: (context) => const LinkPage(),

        // Programs Page
        MyRoutes.graduateRoute: (context) => const GraduatePage(),
        MyRoutes.postgraduateRoute: (context) => const PostGraduatePage(),
        MyRoutes.undergraduateRoute: (context) => const UnderGraduatePage(),

        // Research Page
        MyRoutes.centresRoute: (context) => const CentresPage(),
        MyRoutes.researchinfraRoute: (context) => const ResearchInfraPage(),

        MyRoutes.faculresRoute: (context) => const FacultiesResearchPage(),
        MyRoutes.publicationRoute: (context) => const PublicationsPage(),
        MyRoutes.seminarsRoute: (context) => const ExamPage(), //exams list
        MyRoutes.workshopRoute: (context) => const WorkshopPage(),

        //MyRoutes.resultRoute: (context) => const CheckResultPage(), //check result
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    initPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          elevation: 0,
        ),
        backgroundColor: Colors.grey,
        body: const Center(child: Text("Push Notification")));
  }

  Future<void> initPlatform() async {
    await OneSignal.shared.setAppId("b2770755-916d-4408-9e7d-544f8624e48f");
    await OneSignal.shared
        .getDeviceState()
        .then((value) => {print((value)!.userId)});
    OneSignal.shared
        .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      var data = result.notification.additionalData;

      var a = data.toString();

      var b = a.split(':');
      var c = b[1].split('}')[0];
      var str1 = c.length;

      if (str1 == 7) {
        Navigator.pushNamed(context, MyRoutes.resultcheckRoute);
      } else if (str1 == 5) {
        Navigator.pushNamed(context, MyRoutes.newssRoute);
      } else if (str1 == 9) {
        Navigator.pushNamed(context, MyRoutes.ioemonthlyRoute);
      } else {}
    });
  }
}
