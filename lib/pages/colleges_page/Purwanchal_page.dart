import 'package:flutter/material.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class PurwanchalPage extends StatelessWidget {
  const PurwanchalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Purwanchal Campus",
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
              child: Image.asset("assets/images/purwanchal.jpg"),
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
                        "Purwanchal Campus, formerly known as Eastern Region (ERC) Campus is one of constituent campuses of Tribhuvan University (TU) and one of the associate engineering campuses of Institute of Engineering (IOE) which is a comprehensive, non-profit making, autonomous institution and pioneering institution of higher education level in Nepal funded by government of Nepal. It is situated at Gangalal Marg, Tinkune, Dharan-8, Sunsari district in the eastern region of Nepal. It occupies areas of 443 ropani (34-13-11.75 Bigahas) in convenient unit, which is equivalent to about 225.4 square kilometers. It is adjacent to Charkose Jhadi (densely forest) in north and located at entrance gate by bus of Dharan Sub-metropolitan city.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      Text(
                        "It was established in Poush of 2034 BS (1976) under the loan agreement with Asian Development Bank (ADB). In another agreement with government of United Kingdom (UK) held in Shrawn, 2035 BS (1978), the technical assistance was provided by the government of United Kingdom (UK). ERC was formally organized under Institute of Engineering (IOE), Tribhuvan University (TU) and all the construction works were completed in 2043 BS (1984).",
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
                        "• Agricultural Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Mechanical Engineering",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "• Electrical  Engineering",
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
                        "Future Plan",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),

                      Text(
                        "The campus has planned to:",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "1. Conduct master program in different engineering streams",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "2. Double student intake capacity",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "3. Sign MOU with other institutions, research centers and organizations",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "4. Introduce software based applications for Exam section/ Library/ Store/and other educational activities",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "5. Upgrading the physical infrastructures, laboratories, seminar hall",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "6. Build virtual class room to conduct distance lecture",
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
                          launch('https://www.ioepc.edu.np/');
                        },
                        child: Text('https://www.ioepc.edu.np/'),
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
                          arguments: Data('Purwanchal Campus',
                              26.792863377433076, 87.29235591472175));
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
