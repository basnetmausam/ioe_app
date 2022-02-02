import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class NationalCollegePage extends StatelessWidget {
  const NationalCollegePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "National College of Engineering",
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
              child: Image.asset("assets/images/national.jpg"),
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
                        "National College of Engineering (NCE) is affiliated to the Tribhuvan University and was established in 2058 B.S. with the objective of developing a standard institution that offers courses in technical science and engineering. At first NCE started Computer Engineering in Bachelor Level with intake capacity 48 students and from 2059 B.S it added program of Electronics and Communication Engineering with intake capacity 48 students. And, in 2065 B.S College is handed up to new management. After that Civil Engineering and Electrical Engineering program are added with intake capacity 96 and 48 students respectively. Now, NCE has intake capacity of 250 students per year in four programs.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "NCE offers a unique learning experience across a spectrum of academic and social experiences. With a firm footing in truth and humanity, NCE provides an understanding of both technical developments and ethics that go with it.",
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
                        "National College of Engineering (NCE) was running from 2058 to 2065 B.S at Banasthali, Kathmandu. After 2066 it was shifted to its own premises at Talchhikhel, Lalitpur-14 with land area of 8-6-3-3.",
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
                        "Our future plan includes infrastructure development, academic enhancement and adding B. Arch program. Physical infrastructure will be added and upgraded to ensure quality education. We are trying to add B. Arch program as well as we are oriented towards running Master Degree programs in future. Trainings, workshops and seminars will also be conducted for the enhancement in skills of our resource personnel, faculties and staffs.",
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
                          launch('http://nce.edu.np/');
                        },
                        child: Text('http://nce.edu.np/'),
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
                          arguments: Data('National College', 27.65585679492889,
                              85.32063957941806));
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
