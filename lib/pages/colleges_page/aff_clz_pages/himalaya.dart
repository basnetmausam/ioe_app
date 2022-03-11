import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class HimalayaCollegePage extends StatelessWidget {
  const HimalayaCollegePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Himalaya College of Engineering",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Column(
        children: [
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          "assets/images/himalaya.jpg",
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Himalaya College of Engineering (HCOE) is a private engineering college established in on 2057 BS (2000 AD). Affiliated to Tribhuvan University, it is conducting bachelor of engineering (BE) program of Institute of Engineering (IOE) in Computer Engineering, Electronics and Communication Engineering, Civil Engineering and Architecture. The aim of the college is to provide quality engineering education and produce competent engineering graduates. The college is producing qualified engineers since its establishment who are the backbone of development of the nation.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "ACE had objective to enhance the quality of engineering education by upgrading and updating the The college is located at Lalitpur-9, Chyasal which is an easy access from all directions. As a part of teaching-learning processes, seminars, workshops and trainings are frequently conducted throughout a semester. The field visits, project works and field works are regular ongoing programs in HCOE. Among the extra-curricular activities, inter college and intra college sport competitions are held in every semester. ",
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
                        "The college has a collection of 23,000 text books, references books and course manuals in its library with regular addition of newly published books. Various newspapers, magazines, and national and international research journals are regularly subscribed. Equipped with library software, students take books under the book bank system and regular renewing system.",
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
                      Text(
                        "• Architecture",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Job Placement Service",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "The college bridges its students with the industries through job placement service. It arranges interviews of various companies and forms on its various departments for fresh as well as professional students. Besides this, HCOE has made MOU with Finishing School, India, National School of Skill Development, India and TOYO works Company Ltd., Japan for placement of the graduates.",
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
                        "The college has planned to run BE in mechanical engineering, geomatics engineering and electrical engineering in near future. MSc program has been planned to run in construction engineering, structure engineering, communication and information technology, computer engineering, and urban planning in future after taking affiliation from the universities. A research lab will be developed in future. ",
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
                          launch('https://www.hcoe.edu.np/');
                        },
                        child: const Text('https://www.hcoe.edu.np/'),
                      )
                    ],
                  ),
                ),
              ),
              // Card(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(12)),
              //     child: ListTile(
              //       onTap: () {
              //         Navigator.pushNamed(context, MyRoutes.mapRoute,
              //             arguments: Data('Himalaya College',
              //                 27.677014158115277, 85.33274926259102));
              //       },
              //       title: const Padding(
              //         padding: EdgeInsets.all(16.0), child: Text('Location'),
              //         // Icon(Icons.directions_car_filled_outlined),
              //       ),
              //     )),
            ]),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.map_outlined),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.mapRoute,
              arguments: Data(
                  'Himalaya College', 27.677014158115277, 85.33274926259102));
        },
        backgroundColor: context.accentColor,
        hoverColor: context.accentColor,
      ),
    );
  }
}
