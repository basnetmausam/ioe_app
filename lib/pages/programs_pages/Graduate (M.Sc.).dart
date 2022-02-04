import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';

class GraduatePage extends StatelessWidget {
  const GraduatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Graduate (M.Sc.)",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Research Centres",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Flexible(
              child: ListView(
            children: [
              Card(
                  child: ListTile(
                onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Center for Applied Research and Development",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Center for Applied Research and Development (CARD) is an autonomous research and development center within the IOE. The main objective of the CARD is to carry out the primary mandate of the Institute of Engineering (IOE) to educate students and to impart new knowledge by creating a vigorous and highly visible research environment. CARD has made an effort to establish a research culture and develop leadership at the IOE. It supports all kinds of scholarly activities: fundamental research, applied research and development contract research in government, non-government and international agencies. It capitalizes on the wide range of multidisciplinary in house expertise and capabilities of the IOE.\n\nWebsite of CARD",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      );
                    }),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Center for Applied Research and Development",
                  ),
                ),
              )),
              Card(
                child: ListTile(
                  onTap: () => showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      context: context,
                      builder: (BuildContext context) {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Centre for Disaster Studies",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                "The Centre for Disaster Studies(CDS) was established in 2003 AD in the Institute of Engineering. Nepal loses life and significant amount of property as a result of natural disaster every year. The major natural disasters are landslide and flood. The centre has thus an objective of working for management of disaster in the country. It is trying to do this by offering short courses, carrying out research and consultancy works in the beginning. This center is supporting and assisting Master’s level courses in Disaster Risk Management in the Institute.",
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          ],
                        );
                      }),
                  title: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Centre for Disaster Studies"),
                  ),
                  // subtitle: Text("ohhh hoooo"),
                ),
              ),
              Card(
                  child: ListTile(
                onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Center for Energy Studies",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Center for Energy Studies (CES) was established on January 21, 1999 (7 Magh 2055) under the umbrella of Institute of Engineering (IOE), Tribhuvan University (TU). CES directly links to the trained, highly qualified manpower in various faculties of engineering and energy fields. Besides this, it helps integrate the national level eminent energy experts in one place to work together. On the other hand, there are many foreign eminent renewable energy experts, who are impressed from the active visions of CES. They are also eager to support CES with their contributions. CES can play the role of a bridge between the national and international organizations involved in energy sector.",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      );
                    }),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Center for Energy Studies"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Center for Infrastructure Development Studies(CIDS)",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "CIDS has been established under Tribhuvan University in the Institute of Engineering. To achieve the goals of this center, it has done many activities related to co-ordination with different National and International Educational Institutions, Enterprises, Researchers & Forums. ",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      );
                    }),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      "Center for Infrastructure Development Studies(CIDS)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Centre of Pollution Studies (CPS)",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Centre of Pollution Studies (CPS) is the autonomous center in the Institute of Engineering system. This center aims at conducting and managing study/research regarding pollution thereby providing assistance for integrating high-level engineering education and research regarding pollution.",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      );
                    }),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Centre of Pollution Studies (CPS)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Centre for Urban Planning Studies (CUPS)",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Centre for Urban Planning Studies (CUPS) works as a national center of “Urban Knowledge Hub”. It also has a provision to form of different research and consultancy committees to conduct research and consultancy services such as Urban Planning, Urbanization, Demography, Housing, Urban Poverty, Urban History, Urban Conservation, Urban Regeneration, Urban Ecology and environment, Urban Infrastructure and Services, Urban disaster management and mitigation, resilience, Urban economics, Urban finance, Urban Energy, Urban Informal Sector, Urban Transportation etc.",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      );
                    }),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Centre for Urban Planning Studies (CUPS)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Continuing Education Division",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Continuing Education Division (CED) is a unit within the IOE. The main objective of this unit is to provide short term tailor made training course. This division has conducted various types of training programs on computer, GIS (in association with GIS society), Engineering applications (in association with IIT’s, Universities from USA and Canada). The continuing Education Division also conducts various training programs open to public. Clients seeking short term training programs may contact the CED chief.",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      );
                    }),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Continuing Education Division"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Examination Control Division",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Examination Control Division (ECD) of IOE is mostly the busy organization that has to manage examinations for bachelor, masters and PhD degree programs throughout the year. ECD conducts by-annual semester exams for regular and back exam of bachelor of engineering students having 10 streams in its five constituent campuses and ten affiliated colleges.\n\nTimely conduction of semester exam and result publications are the major features of IOE Examination that helps to maintain the IOE Academic Calendar.",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      );
                    }),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Examination Control Division"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Information and Communication Technology Center (ICTC)",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "This Centre was established in order to conduct various types of training, sponsored courses and conducting problem based research in the field of engineering and technology especially in the area of information and communication technology. The Institute of Engineering is enormously benefited by the wide range of perspectives and talents brought in by the students, faculty and staff from a variety of backgrounds.\n\nICTC will conduct both long term and short-term training courses related with current ICT trends. All training courses that are less than 3 months long are termed as Short.",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      );
                    }),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      "Information and Communication Technology Center (ICTC)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Laboratory for ICT Research and Development",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Laboratory for ICT Research and Development is the laboratory established on 1st January,2017 at Institute of Engineering, Tribhuvan University, Nepal with the vision to have world class reserach on Information and Communication Technology.",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      );
                    }),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Laboratory for ICT Research and Development"),
                ),
              )),
            ],
            padding: const EdgeInsets.all(10),
          ))
        ],
      ),
    );
  }
}
