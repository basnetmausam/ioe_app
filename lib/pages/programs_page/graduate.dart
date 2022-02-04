import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/homeDrawer.dart';
import 'package:ioe_app/pages/programs_page/programpageboxes.dart';

class Graduate extends StatelessWidget {
  const Graduate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: const Text('Graduate (M.Sc.)'),
        centerTitle: true,

        //backgroundColor: Colors.indigo.shade900,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.indigo.shade900,
            Colors.indigo,
            Colors.red.shade100
          ])),
        ),
      ),
      drawer: myDrawer(context),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Graduate (M.Sc.)",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "In 1996 Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Urban Planning, Structural Engineering, Environmental Engineering and Water Resources Engineering. Pulchowk Campus has also started M. Sc. courses in Renewable Energy Engineering, Geotechnical Engineering, Information and Communication and Power System Engineering effective from December, 2001. Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Sustainable Water Sanitation and Health Development from 2007 and Technology and Innovation Management from 2010. This campus has also started master program in Transportation Engineering and Disaster Risk Management from the academic year 2011/12. A category-wise detail of Master Programs’ intakecapacity is given below in section 1.3 below. Institute has also started regular Ph D admission from academic session 2010/11 in all departments.\n\nIn 1996 Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Urban Planning, Structural Engineering, Environmental Engineering and Water Resources Engineering. Pulchowk Campus has also started M. Sc. courses in Renewable Energy Engineering, Geotechnical Engineering, Information and Communication and Power System Engineering effective from December, 2001. Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Sustainable Water Sanitation and Health Development from 2007 and Technology and Innovation Management from 2010. This campus has also started master program in Transportation Engineering and Disaster Risk Management from the academic year 2011/12. A category-wise detail of Master Programs’ intakecapacity is given below in section 1.3 below. Institute has also started regular Ph D admission from academic session 2010/11 in all departments.\n\nEach year IOE publishes an Information Brochure along with the announcement of entrance examination of that year. This Brochure contains all the required information for an interested candidate to appear in the exam and finally get admitted. This Brochure also contains the current intake capacity. Fee structure and scholarship schemes are also provided in\n",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),

          new ListTile(
            leading: new MyBullet(),
            title: const Text(
                'Graduate Program Academic Administration Guidelines 2018'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('Information Brochure 2073'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('Information Brochure 2071'),
          ),

          // Flexible(
          //   child: SingleChildScrollView(
          //     child: Card(
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(12)),
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             const SizedBox(
          //               height: 20,
          //             ),
          //             Text(
          //               "In each academic year Institute of Engineering (IOE) conducts entrance examination; only those candidate who pass the entrance examination are deemed eligible for the admission. These eligible candidates can get admitted to any of the constituent and affiliated colleges according to the admission process followed by corresponding college. The admission process practiced by the constituent colleges is the same, but process followed by the affiliated colleges may differ from one another.\n\nEach year IOE publishes a help book along with the announcement of entrance examination of that year. This book contains all the required information for an interested candidate to appear in the exam an finally get admitted to any of the constituent or affiliated colleges. This book also contains the current intake capacity of each of the colleges. Fee structure and scholarship schemes of constituent colleges are also provided in that book (BE Booklet 2072).\n\nIOE bachelor programs are available on all of its constituent campuses and the affiliated colleges while the masters programs are available only at its constituent campuses: Pulchowk Campus, Thapathali Campus, and Pashchimanchal Campus.\n\nThe following are the graduate course available in IOE :",
          //               style: Theme.of(context).textTheme.bodyText2,
          //             ),
          //             const SizedBox(
          //               height: 40,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          programBoxes(context,
              img: 'assets/images/msclimate.png',
              text: 'M.SC. IN CLIMATE CHANGE AND DEVELOPMENT',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN COMMUNICATION AND KNOWLEDGE ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN COMPUTER SYSTEM AND KNOWLEDGE ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN CONSTRUCTION MANAGEMENT',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN DISASTER RISK MANAGEMENT',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN DISTRIBUTE GENERATION ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN EARTHQUAKE ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN ENERGY EFFICIENT BUILDING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN ENERGY FOR SUSTAINABLE SOCIAL DEVELOPMENT',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN ENERGY SYSTEM PLANNING AND MANAGEMENT',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN INFORMATION AND COMMUNICATION ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN STRUCTURAL ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN TECHNOLOGY, INNOVATION AND MANAGEMENT',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN TRANSPORTATION ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN GEO-TECHNICAL ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN INFRASTRUCTURE ENGINEERING & MANAGEMENT',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN MATERIAL SCIENCE AND ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN MECHANICAL SYSTEM DESIGN & ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN POWER SYSTEM ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN RENEWABLE ENERGY ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. ENGINEERING IN MECHANICAL DESIGN AND MANUFACTURING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN URBAN PLANNING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'M.SC. IN WATER RESOURCES ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
        ],
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 6.0,
      width: 6.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
