import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/programs_pages/programboxes.dart';

class PostGraduatePage extends StatelessWidget {
  const PostGraduatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Programs",
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
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              "Ph D Courses",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "A Doctor of Philosophy (PhD, Ph.D., or DPhil; Latin Philosophiae Doctor) is the highest academic degree awarded by universities in most countries. Ph.D.s are awarded for programs across the whole breadth of academic fields.\n\nUnder academic authorization of Tribhuvan University (TU), all the Departments of the Institute of Engineering (IOE), Pulchowk Campus is offering study and research program leading to the award of the degree of Doctor of Philosophy (Ph.D.).\n\nDoctoral courses were introduced in the Institute of Engineering/Pulchowk campus from the year 1997. IOE has also started Ph.D. programs in various engineering fields since 2003 under the assistance of NUFO, Norway. Some 12 scholars enrolled for Doctoral studies under this program and most of them had completed their dissertation and got the degree.\n",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "PhD Application Call, Rules and Regulation and Application for Academic year of 2078/79 BS",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),

          new ListTile(
            leading: new MyBullet(),
            title: const Text('Application Call'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('IOE PhD Rules & Regulations'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('IOE PhD Application Form '),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Dear PhD student please  refer to these documents for PHD Thesis Template and IERC Presentation.",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),

          new ListTile(
            leading: new MyBullet(),
            title: const Text('PhD Thesis Template'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('PhD Thesis Template Zipped tools'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('IERC Presentation Template'),
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
    return new Container(
      height: 6.0,
      width: 6.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
