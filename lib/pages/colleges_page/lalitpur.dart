import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class LalitpurCollegePage extends StatelessWidget {
  const LalitpurCollegePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lalitpur Engineeering College",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset("assets/images/lalitpur.jpg"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: ListView(children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Lalitpur Engineering College (LEC) established in 2066 BS as the first engineering college with only one faculty (Civil Engineering) under the affiliation of Tribhuvan University is now competing with more than 50 engineering colleges within the Nepalese territory under six national universities. College management team and other personnel believe in competitive environment in the field of engineering education which definitely leads us to a global competitive market for technical manpower. Basic aim of LEC is to prepare Quality Engineers who could sell himself/herself in the world of professionalism. He/she will not only cater to the needs of the nations in solving its technical and management problems, but also will compete in the international job market successfully.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Library",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "There are a vast number of collections of books available according to branches of Engineering, Science and general books. It includes more than 10474 volumes and 600 titles. The transaction is carried out using library card system. The leading newspapers of our country are regularly subscribed in library.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Running Bachelor's Program",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "• Computer Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Civil Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Electrical Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Architecture",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Research Activity:",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "LEC always promotes the students for research activity and encourage for their conduction to enhance their potentiality in engineering field.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Future Plan",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "• Establishment of College of Education for Teacher Training Courses.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Addition of Post Graduate programs in engineering discipline.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Establishment of Private Deemed University.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "For More Details you can click below link.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      InkWell(
                        onTap: () {
                          launch('http://lec.edu.np/');
                        },
                        child: Text('http://lec.edu.np/'),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.mapRoute,
                          arguments: Data('Lalitpur College',
                              27.680771788995624, 85.32566546750225));
                    },
                    title: const Padding(
                      padding: EdgeInsets.all(16.0), child: Text('Location'),
                      // Icon(Icons.directions_car_filled_outlined),
                    ),
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
