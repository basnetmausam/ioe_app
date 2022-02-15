import 'package:flutter/material.dart';
import 'package:ioe_app/pages/about_pages/contact_page.dart';
import 'package:ioe_app/pages/about_pages/faculties_page.dart';
import 'package:ioe_app/pages/about_pages/glance_page.dart';
import 'package:ioe_app/pages/about_pages/history.dart';
import 'package:ioe_app/pages/about_pages/ioeemaillogin_page.dart';
import 'package:ioe_app/pages/about_pages/messagedean_page.dart';
import 'package:ioe_app/pages/about_pages/vision_page.dart';

import 'package:ioe_app/pages/admission_pages/be_page.dart';
import 'package:ioe_app/pages/admission_pages/calender_page.dart';

import 'package:ioe_app/pages/admission_pages/evaluation_page.dart';

import 'package:ioe_app/pages/admission_pages/examcontrol_page.dart';
import 'package:ioe_app/pages/admission_pages/how_page.dart';
import 'package:ioe_app/pages/admission_pages/msc_page.dart';
import 'package:ioe_app/pages/admission_pages/phd_page.dart';
import 'package:ioe_app/pages/admission_pages/schlorship_page.dart';
import 'package:ioe_app/pages/admission_pages/why_page.dart';
import 'package:ioe_app/pages/bottom_navigation.dart';
// college
import 'package:ioe_app/pages/colleges_page/affiliated_page.dart';
import 'package:ioe_app/pages/colleges_page/constituent_page.dart';
import 'package:ioe_app/widgets/map.dart';
// constituent
import 'package:ioe_app/pages/colleges_page/Thapathali_campus.dart';
import 'package:ioe_app/pages/colleges_page/pulchowk_page.dart';
import 'package:ioe_app/pages/colleges_page/Purwanchal_page.dart';
import 'package:ioe_app/pages/colleges_page/Paschimanchal_page.dart';
import 'package:ioe_app/pages/colleges_page/ChitwanCampus_page.dart';
// affiliated
import 'package:ioe_app/pages/colleges_page/advanced.dart';
import 'package:ioe_app/pages/colleges_page/himalaya.dart';
import 'package:ioe_app/pages/colleges_page/janakpur.dart';
import 'package:ioe_app/pages/colleges_page/kantipur.dart';
import 'package:ioe_app/pages/colleges_page/kathford.dart';
import 'package:ioe_app/pages/colleges_page/kathmandu.dart';
import 'package:ioe_app/pages/colleges_page/khwopa.dart';
import 'package:ioe_app/pages/colleges_page/lalitpur.dart';
import 'package:ioe_app/pages/colleges_page/national.dart';
import 'package:ioe_app/pages/colleges_page/sagarmatha.dart';

import 'package:ioe_app/pages/home_pages/aboutioe_page.dart';
import 'package:ioe_app/pages/home_pages/admission_page.dart';
import 'package:ioe_app/pages/home_pages/college_page.dart';
import 'package:ioe_app/pages/home_page.dart';
import 'package:ioe_app/pages/home_pages/extras_page.dart';
import 'package:ioe_app/pages/home_pages/newsandbulletin_page.dart';
import 'package:ioe_app/pages/home_pages/partnership_page.dart';
import 'package:ioe_app/pages/home_pages/program_page.dart';
import 'package:ioe_app/pages/home_pages/research_page.dart';

import 'package:ioe_app/pages/newsbulletin_pages/events_page.dart';
import 'package:ioe_app/pages/newsbulletin_pages/ioemonthly_page.dart';
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
import 'package:ioe_app/pages/research_pages/seminars_page.dart';
import 'package:ioe_app/pages/research_pages/workshop_page.dart';

import 'package:ioe_app/utils/routes.dart';
import 'package:ioe_app/widgets/themes.dart';
import 'package:provider/provider.dart';

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
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.navigationRoute,
      routes: {
        MyRoutes.navigationRoute: (context) => const NavigationPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),

        // HOMEPAGE
        MyRoutes.collegeRoute: (context) => const CollegePage(),
        MyRoutes.newsbulletinRoute: (context) => const NewsPage(),
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
        MyRoutes.ioemonthlyRoute: (context) => const IOeMonthlyPage(),
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
        MyRoutes.seminarsRoute: (context) => const SeminarsPage(),
        MyRoutes.workshopRoute: (context) => const WorkshopPage(),
      },
    );
  }
}
