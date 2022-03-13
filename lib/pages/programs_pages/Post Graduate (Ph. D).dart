import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/programs_pages/programboxes.dart';

import 'package:url_launcher/url_launcher.dart';

class PostGraduatePage extends StatelessWidget {
  const PostGraduatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Programs",
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Post Graduate (Ph. D)",
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              "Ph D Courses",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "A Doctor of Philosophy (PhD, Ph.D., or DPhil; Latin Philosophiae Doctor) is the highest academic degree awarded by universities in most countries. Ph.D.s are awarded for programs across the whole breadth of academic fields.\n\nUnder academic authorization of Tribhuvan University (TU), all the Departments of the Institute of Engineering (IOE), Pulchowk Campus is offering study and research program leading to the award of the degree of Doctor of Philosophy (Ph.D.).\n\nDoctoral courses were introduced in the Institute of Engineering/Pulchowk campus from the year 1997. IOE has also started Ph.D. programs in various engineering fields since 2003 under the assistance of NUFO, Norway. Some 12 scholars enrolled for Doctoral studies under this program and most of them had completed their dissertation and got the degree.\n",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "PhD Application Call, Rules and Regulation and Application for Academic year of 2078/79 BS",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "               1.Application Call",
              style: const TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    'https://ioe.edu.np/media/1653/application-call-07_79_bs.pdf'),
            ),
          ])),
          const SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "               2.IOE PhD Rules & Regulations",
              style: const TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    'https://ioe.edu.np/media/1651/ioe-phd-rules-reg-2019.pdf'),
            ),
          ])),
          const SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "               3.IOE PhD Application Form ",
              style: const TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    'https://ioe.edu.np/media/1650/pages-from-ioe-phd-application-pack-2019.doc'),
            ),
          ])),
          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Dear PhD student please  refer to these documents for PHD Thesis Template and IERC Presentation.",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "               1.PhD Thesis Template",
              style: const TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    'https://ioe.edu.np/media/1646/ioe_phdthesistemplate-final.pdf'),
            ),
          ])),
          const SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "               2.PhD Thesis Template Zipped tools",
              style: const TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    'https://ioe.edu.np/media/1645/ioe-phdthesistemplate-final.zip'),
            ),
          ])),
          const SizedBox(
            height: 20,
          ),

          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "               3.IERC Presentation Template",
              style: const TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    'https://ioe.edu.np/media/1642/ierc-presentationtemplate-final.pptx'),
            ),
          ])),

          const SizedBox(
            height: 30,
          ),

          // Flexible(
          //   child: SingleChildScrollView(
          //     child: Card(
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(12)),
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             const SizedBox(
          //               height: 20,
          //             ),
          //             Text(
          //               "In each academic year Institute of Engineering (IOE) conducts entrance examination; only those candidate who pass the entrance examination are deemed eligible for the admission. These eligible candidates can get admitted to any of the constituent and affiliated colleges according to the admission process followed by corresponding college. The admission process practiced by the constituent colleges is the same, but process followed by the affiliated colleges may differ from one another.\n\nEach year IOE publishes a help book along with the announcement of entrance examination of that year. This book contains all the required information for an interested candidate to appear in the exam an finally get admitted to any of the constituent or affiliated colleges. This book also contains the current intake capacity of each of the colleges. Fee structure and scholarship schemes of constituent colleges are also provided in that book (BE Booklet 2072).\n\nIOE bachelor programs are available on all of its constituent campuses and the affiliated colleges while the masters programs are available only at its constituent campuses: Pulchowk Campus, Thapathali Campus, and Pashchimanchal Campus.\n\nThe following are the graduate course available in IOE :",
          //               style: Theme.of(context).textTheme.bodyText2,
          //             ),
          //             const SizedBox(
          //               height: 40,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
        padding: const EdgeInsets.all(12),
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.0,
      width: 6.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
