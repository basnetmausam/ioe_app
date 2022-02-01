import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/homeDrawer.dart';
import 'package:ioe_app/pages/programs_page/programpageboxes.dart';

class Graduate extends StatelessWidget {
  const Graduate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: const Text('Graduate (M.SC.)'),
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
              "Graduate(B.E.)",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "In each academic year Institute of Engineering (IOE) conducts entrance examination; only those candidate who pass the entrance examination are deemed eligible for the admission. These eligible candidates can get admitted to any of the constituent and affiliated colleges according to the admission process followed by corresponding college. The admission process practiced by the constituent colleges is the same, but process followed by the affiliated colleges may differ from one another.\n\nEach year IOE publishes a help book along with the announcement of entrance examination of that year. This book contains all the required information for an interested candidate to appear in the exam an finally get admitted to any of the constituent or affiliated colleges. This book also contains the current intake capacity of each of the colleges. Fee structure and scholarship schemes of constituent colleges are also provided in that book (BE Booklet 2072).\n\nIOE bachelor programs are available on all of its constituent campuses and the affiliated colleges while the masters programs are available only at its constituent campuses: Pulchowk Campus, Thapathali Campus, and Pashchimanchal Campus.\n\nThe following are the graduate course available in IOE :",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/images/ioephoto1.jpg"),
                      Text(
                        "IOE is one of the well-equipped institutes in the South Asia region. IOE has about 70 laboratories and workshops. As most of the laboratories are equipped with computer facilities, in addition to regular practical classes for students, they are adequate for the purpose of rendering research, consultancy and manufacturing oriented services in wide range of areas.\n\nIOE provides the Internet facility to its students, faculties and administrative staffs of all campuses. All the blocks at central campus Pulchowk are linked through campus wide fiber optic backbone connecting all the departmental computers with the computer resource center at CIT and advanced IT training center (ICTC). Institute of engineering begin bachelor courses in engineering from 1978, master coursed from 1996 and doctoral program from 2003. By now, bachelor’s, master’s and doctoral programs are run in Central campus Pulchowk. Bachelor’s courses are run in the Thapathali campus, Purwanchal campus and Paschimanchal campus. IOE is in the process of strengthening bachelor courses and consolidating master and doctoral programs. IOE is now delivering its services from four constituent campuses and ten affiliated colleges.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
