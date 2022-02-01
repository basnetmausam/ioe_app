import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/homeDrawer.dart';
import 'package:ioe_app/pages/programs_page/programpageboxes.dart';

class Undergraduate extends StatelessWidget {
  const Undergraduate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: const Text('Undergraduate (B.E.)'),
        centerTitle: true,

        //backgroundColor: Colors.indigo.shade900,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.indigo.shade900,
            Colors.indigo,
            Colors.red.shade100
          ])),
        ),
      ),
      drawer: myDrawer(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Undergraduate(B.E.)",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "In each academic year Institute of Engineering (IOE) conducts entrance examination; only those candidate who pass the entrance examination are deemed eligible for the admission. These eligible candidates can get admitted to any of the constituent and affiliated colleges according to the admission process followed by corresponding college. The admission process practiced by the constituent colleges is the same, but process followed by the affiliated colleges may differ from one another.\n\nEach year IOE publishes a help book along with the announcement of entrance examination of that year. This book contains all the required information for an interested candidate to appear in the exam an finally get admitted to any of the constituent or affiliated colleges. This book also contains the current intake capacity of each of the colleges. Fee structure and scholarship schemes of constituent colleges are also provided in that book (BE Booklet 2072).\n\nIOE bachelor programs are available on all of its constituent campuses and the affiliated colleges while the masters programs are available only at its constituent campuses: Pulchowk Campus, Thapathali Campus, and Pashchimanchal Campus.\n\nThe following are the graduate course available in IOE :",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
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
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'BE IN AGRICULTURE ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according…'),
        ],
      ),
    );
  }
}
