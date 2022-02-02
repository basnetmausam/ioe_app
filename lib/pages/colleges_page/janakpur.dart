import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class JanakpurCollegePage extends StatelessWidget {
  const JanakpurCollegePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Janakpur Engineering College",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      backgroundColor: context.canvasColor,
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset("assets/images/janakpur.jpg"),
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
                        "Janakpur Engineering College (JEC) is affiliated to Tribhuvan University (TU), Nepal. Established in 2063 BS, it is producing qualified engineers who are the backbone of development of the nation. The aim of the College is to provide quality engineering education and produce competent engineering graduates. The bachelor of engineering of the Institute of Engineering (IOE), TU being implemented in the College are in Computer, Electronics and Communication, and Civil. The college has been managed by a strong team of professionals and academicians who possess enough experience in educational networks for a long time.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "All the academic and administrative programs as per the standard laid down by IOE have been maintained in this infrastructure. As a part of teaching-learning processes, seminars, workshops and trainings are frequently conducted through the semesters with field visit, project works and field works. So, the college assures quality education required for the students in the present context, and assists them in pursuing their professional and educational goals. ",
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
                        "Library of JEC is situated at ground floor in the main block. It has a collection of more than 2,100 books of Nepalese and foreign editions with approx. 400 titles. JEC Library is computerized at functional label.  Library is open during College time. Many National and international journal are available for students and teacher mostly categorize by the different subject like civil, computer and electronics. The library is spread over an area of 300 Sq. meters. To give an environment for study library has 2 reading halls with total seating capacity of 200 students.",
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
                        "• Electronics and Communication Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Sports",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "JEC is fully sensitive to the dictum, ‘Healthy mind healthy body.’ To translate this belief into reality, the College has provided ample opportunities to the students for variety of games & sports. Well-manicured, tastefully laid out and professionally designed playgrounds are available. The campus has vast expanse of land to locate a large number of outdoor and indoor games and sports facilities.",
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
                          launch('https://jec.edu.np/');
                        },
                        child: Text('https://jec.edu.np/'),
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
                          arguments: Data('Janakpur College',
                              27.686693966381476, 85.3124371452807));
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
