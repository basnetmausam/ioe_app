import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class ThapathaliPage extends StatelessWidget {
  const ThapathaliPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Thapathali Campus",
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
                          "assets/images/thapathali.jpg",
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "From 2029 B.S. Technical Training Institute (TTI) was renamed as Thapathali Campus (http://www.thapathalicampus.edu.np/) under Tribhuvan University (T.U.) and known as Institute of Engineering, Thapathali Campus thereafter. Campus started diploma in mechanical engineering and diploma in automobile engineering 2043 B.S. and later on, diploma in electronics engineering and diploma computer engineering started from 2058 B.S.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      Text(
                        "According to the policy of Institute of Engineering (IOE), the campus introduced Bachelor in Industrial engineering in 2062 B.S., bachelor in Civil engineering in 2066 B.S., Bachelor in electronics and communication engineering in 2067 B.S., bachelor in mechanical engineering in 2068 B.S., by stopping new intakes in any diploma courses from 2070 B. S. Again, Campus has intake in bachelor in architecture and master in earthquake engineering in 2071 B.S., bachelor in automobile engineering in 2072 B.S. and master in mechanical design & manufacturing in 2073 B.S. also.",
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
                        "• Automobile Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Mechanical Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Industrial  Engineering",
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
                        "• Earthquake Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Engineering in Mechanical Design and Manufacturing",
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
                        "This Campus is constructed on 32 ropanis of land, which is not sufficient for an Engineering Campus. We were seeking for land for additional Programs. Now, Nepal Government, Ministry of Physical Infrastructure & Transportation has planned to construct fly over bridge from Maitighar   to Tripureswor above Thapathali campus. So we have to shift to another place. In this Regard, Campus has demanded land with Tribhuvan University near Ring Road, Balkhu. It has submitted proposal demanding 250 ropani land. It is under process. After the decision of TU, we have plan to develop & construct the infrastructure in Balkhu, TU. ",
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
                          launch('https://tcioe.edu.np/');
                        },
                        child: Text('https://tcioe.edu.np/'),
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
                  'Thapathali Campus', 27.694504749837627, 85.3190222245873));
        },
        backgroundColor: context.accentColor,
        hoverColor: context.accentColor,
      ),
    );
  }
}
