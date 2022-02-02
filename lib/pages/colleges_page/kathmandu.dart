import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class KathmanduCollegePage extends StatelessWidget {
  const KathmanduCollegePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kathmandu Engineering College",
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
              child: Image.asset("assets/images/kathmandu.jpg"),
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
                        "Kathmandu Engineering College (KAT) is a Tribhuvan University (TU) affiliated, private college located at Kalimati, Kathmandu. The college was established in 1998 and is the first ISO: 9001:2008 certified college in Nepal. It is an autonomous college from the perspective of administration, staff and teacher recruitment as well as college development, and is managed by a team of excellent board members.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Kathmandu Engineering College blends academic wisdom with equal fractions of liberty and hard work. Our emphasis has always been on creating an amicable environment, rather than just teaching and studying. Our motive is to instil the practice of listening, observing and speaking in our students.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "The objective of KAT is to provide quality education in an excellent teaching and learning environment with a specific emphasis on the diversity of technology. The principal aims of our organization includes building a strong faculty, improving our facilities and ensuring that the vision with which the founders first established the institution is fulfilled.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Infrastructure",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "The KAT compound expands over 30 ropanies—comprising of land leased and owned by the college—in Kalimati, Mulpani, Jay Bageshwori and Sukedhara, and boasts  all the facilities required to ensure a sound academic environment. The accessibility of the college is among its prominent features as it can be reached by public transport at any time. The college also offers transportation facilities of its own, and provides parking space for both two and   four wheelers.",
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
                        "Research Activity",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "KEC is devoted to conducting research and development projects in order to strengthen the engineering scenario in Nepal. To strengthen the RESEARH CULTURE of the college, OFFICE OF KEC RESEARCH AND PUBLICATION, OKRP, was established on 1st January 2013. It envisions to explore research-based educational practices through conducting research activities on potential industrial issues, organizing seminars and talks on contemporary issues. OKRP conducts an annual seminar with papers of various faculties presented in parallel sessions. ",
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
                        "Our country, today, is in urgent need of technical manpower for achieving the national priority of reconstruction and to fulfill the dreams of projects of national glory. There waits a wide range of career options for our students and our foremost goal is to make our students ready for the ever changing job market",
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
                          launch('https://www.kecktm.edu.np/');
                        },
                        child: Text('https://www.kecktm.edu.np/'),
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
                          arguments: Data('Kathmandu College',
                              27.699146920550504, 85.29712420379553));
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
