import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/colleges_page/data.dart';

class PaschimanchalPage extends StatelessWidget {
  const PaschimanchalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Paschimanchal Campus",
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
                          "assets/images/paschimanchal.jpg",
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "The Pashchimanchal Campus (Western Region Campus) is a constituent campus of Tribhuvan University, under Institute of Engineering. It was established in 2038 BS as a pioneer technical institution in western region from the Government sector. It is in fact only one constituent campus located in western part from Kathmandu under the Tribhuvan University for development of engineering manpower in various disciplines. It is located about 200 km west of Kathmandu spreading on 312 ropanis of land.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      Text(
                        "IOE, Pashchimanchal campus, the leading academic institution in engineering field at far western, mid-western and western region, has responsibility to address the national demand to launch relevant and sustainable academic programs. Assessing the present need in consultation with stakeholders in this sector, need based curriculum meeting national demand and opening the horizon for further research career in new technological advancement, are core of this program.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      Text(
                        "IOE Pashchimanchal campus has already made some operational restructuring in response to the change in its operating environment through  Mobilization of internal resources; Improvement of its management capabilities through implementation of decentralization from IOE & central administration and  several academic innovations such as examination system, suggestion of new curricula, and sustainability of bachelor’s degree and plan for master’s Programs.",
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
                        "• Geomatics Engineering",
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

                      const SizedBox(
                        height: 40,
                      ),

// library
                      Text(
                        "Library and books",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),

                      Text(
                        "Campus has 72892 books and all students provide 1 set book in each semester. After the completion of semester return the books and get new semesters books. Library are the center of leaning to all stakeholders to gain knowledge pooling and  it should be modernized in terms of e-library along with the easy excess of research articles, journals as well as intranet facilities to support for the existing &new academic program and professional carrier. The institution needs to improve the existing manual handling and distribution of materials to the students by introducing modern computerized system.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),

                      const SizedBox(
                        height: 40,
                      ),

// future plans
                      Text(
                        "Future Plan",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 7,
                      ),

                      Text(
                        "Pashchimanchal campus will raise its expectations substantially— more rigorous academic curricula will be applied, will allocate research expenditures and will successfully rise external funding for construction of new buildings and renovation of existing space including high-tech research labs. In addition, IOE will seek more support for professorships and graduate student fellowships.",
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
                          launch('https://www.wrc.edu.np/');
                        },
                        child: Text('https://www.wrc.edu.np/'),
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
              arguments: Data('Paschimanchal Campus', 28.253872500076902,
                  83.97636345831485));
        },
        backgroundColor: context.accentColor,
        hoverColor: context.accentColor,
      ),
    );
  }
}
