import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class KathfordCollegePage extends StatelessWidget {
  const KathfordCollegePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kathford International College",
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
                          "assets/images/kathford.jpg",
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Established in 2003 and located at the heart of the city of Kathmandu, Kathford gives students access to outstanding faculty and excellent resources. Kathford is one of only a handful colleges affiliated to Tribhuvan University with diverse programs of Engineering and Management. A home to over 1000 students, Kathford has been producing highly competitive graduates and scholars since inception. Our strong alumni base, who have turned into market leaders, entrepreneurs and scholars, is among the reasons why Kathford is the best place to study Bachelors.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Kathford boasts of highly acclaimed academic staff who guide and support the academic development of our students. We believe in blending academic excellence with practical impact leading our students to professional pinnacle. We maintain high standards in our teaching practice and work with industry, business and companies to ensure the relevance of our teaching. Our network with our alumni and industry experts enrich the study of our current students by giving them a closer look of how the world outside the college works.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const SizedBox(
                        height: 20,
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
                        "Research Activity:",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Kathford Research and development wing consist of RoboKath, Kathfoss, Kathford-Xilinx University Program Center, and Kathcess which help student and faculty in research, training and workshop related activities.With the support of department and faculty members, KathFoss and RoboKath team follows ‘Spread Your Knowledge’ model and the students train other students in the field of programming and robotics after rigorous research and learning.",
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
                          launch('https://kathford.edu.np/');
                        },
                        child: Text('https://kathford.edu.np/'),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.map_outlined),
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.mapRoute,
              arguments: Data(
                  'Kathford College', 27.67084538636398, 85.34000164357525));
        },
        backgroundColor: context.accentColor,
        hoverColor: context.accentColor,
      ),
    );
  }
}
