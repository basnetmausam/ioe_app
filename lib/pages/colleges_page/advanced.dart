import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class AdvancedCollegePage extends StatelessWidget {
  const AdvancedCollegePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Advanced College of Engineering and Management",
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
              child: Image.asset("assets/images/advanced.jpg"),
              // Text(
              //   "Colleges",
              //   style: Theme.of(context).textTheme.headline1,
              // ),
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
                        "In this 21st century, needs and wants of the society is changing rapidly due to vast advancement of science and technology and its application in daily life. From the very beginning of its establishment in 2000, ACEM has been rigorously working in fulfilling these changing demands. ACEM aims in producing academically qualified and technically sound engineering graduates through quality education. Our graduates have a long and distinguished record in achieving outstanding results and have progressed to the most prestigious institutions either for professional career or research study whether it may be within the country or abroad.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "New Construction",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "ACEM has already started the construction of new college building with total floor area of about 180000 sq. ft. in its own land covering around 13 ropanies of land area located at Balkhu, Kathmandu.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Program",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "With the vision to establish world class academic institution ACEM was established on 2000 under the affiliation of Tribhuvan University.  ACEM has been offering BE level academic program on Civil and Computer since 2000, Electronics and Communication since 2001and Electrical since 2008.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Research activity",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "ACE had objective to enhance the quality of engineering education by upgrading and updating the applied and research based knowledge and skill of faculties, staff and students. ACEM supports its faculty to carry out the research and development work and has policy of providing financial assistance for faculties conducting short term research work. ACEM is continuously supporting its students through different research based students organizations like robotics club, pace (project association of computer and electronics), ACESS (advanced civil engineering students society).",
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
                        "ACEM had set the vision to be one of the best technically innovative engineering schools and prove oneself as a world-class institution in Nepal.",
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
                          launch('https://acem.edu.np/');
                        },
                        child: Text('https://acem.edu.np/'),
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
                          arguments: Data('Advanced College ',
                              27.69022552045282, 85.3125752392784));
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
