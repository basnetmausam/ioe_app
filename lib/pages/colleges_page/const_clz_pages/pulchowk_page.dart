import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class PulchowkPage extends StatelessWidget {
  const PulchowkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pulchowk Campus",
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          "assets/images/pulchowk.jpg",
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Pulchowk Campus is the central campus of the Institute of Engineering. It was established in 1972(2029 B.S.) as one of the constituent campus of the institute of Engineering and is situated at the heart of the Lalitpur city at Pulchowk. Initially it was started for the production of trade level manpower to fulfill the nation’s need in the field of Engineering. Pulchowk Campus offers bachelors, masters and Ph. D. programs in different areas of engineering. This campus is equipped with necessary laboratories, separate buildings for academic and administrative purposes and has become the center of excellence of engineering education in Nepal.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      // Bachelor program
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
                        "• Mechanical Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Chemical Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Aerospace Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Architecture",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      // Master Program
                      Text(
                        "Running Master's Program",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "• Structure Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Environmental Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Water Resources Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Geo-Technical Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Disaster Risk Management",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Transportation Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Construction Management",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Climate Change and Development",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Material Science",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Urban Planning",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Energy for Sustainable Social Development",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Power System Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Information & Communication Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Computer System and Knowledge Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Renewable Energy Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Technology Innovation and Management",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Energy System Planning and Management",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Mechanical System Design & Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Energy Efficient Building",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Sustainable Water Sanitation, Health and Development",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      // Phd Program
                      Text(
                        "Running Ph.D. Program",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "• Computer",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Civil",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Electronics and Communication",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Science and Humanities",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Mechanical",
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
                        "For More Details you can click below link.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      InkWell(
                        onTap: () {
                          launch('http://pcampus.edu.np');
                        },
                        child: Text('http://pcampus.edu.np'),
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
                  'Pulchowk Campus', 27.681086418552248, 85.31851637218396));
        },
        backgroundColor: context.accentColor,
        hoverColor: context.accentColor,
      ),
    );
  }
}
