import 'package:flutter/material.dart';
import 'package:ioe_app/pages/programs_pages/Graduate%20page/M.SC.%20IN%20CLIMATE%20CHANGE%20AND%20DEVELOPMENT.dart';
import 'package:ioe_app/pages/programs_pages/Graduate%20page/M.SC.%20IN%20COMMUNICATION%20AND%20KNOWLEDGE%20ENGINEERING.dart';
import 'package:ioe_app/pages/programs_pages/Graduate%20page/M.SC.%20IN%20COMPUTER%20SYSTEM%20AND%20KNOWLEDGE%20ENGINEERING.dart';
import 'package:ioe_app/pages/programs_pages/Graduate%20page/M.SC.%20IN%20DISTRIBUTE%20GENERATION%20ENGINEERING.dart';
import 'package:ioe_app/pages/programs_pages/Graduate%20page/M.SC.%20IN%20INFRASTRUCTURE%20ENGINEERING%20&%20MANAGEMENT.dart';
import 'package:ioe_app/pages/programs_pages/Graduate%20page/M.Sc.%20in%20Earthquake%20Engineering.dart';
import 'package:ioe_app/pages/programs_pages/Graduate%20page/M.Sc.%20in%20Energy%20System%20Planning%20and%20Management.dart';
import 'package:ioe_app/pages/programs_pages/Graduate%20page/M.Sc.%20in%20Material%20Science%20and%20Engineering.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:flutter/gestures.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ioe_app/pages/programs_pages/programboxes.dart';

class GraduatePage extends StatelessWidget {
  const GraduatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Programs",
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        backgroundColor: context.canvasColor,
        drawer: myDrawer(context),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(6),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Graduate (M.Sc.)",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "In 1996 Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Urban Planning, Structural Engineering, Environmental Engineering and Water Resources Engineering. Pulchowk Campus has also started M. Sc. courses in Renewable Energy Engineering, Geotechnical Engineering, Information and Communication and Power System Engineering effective from December, 2001. Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Sustainable Water Sanitation and Health Development from 2007 and Technology and Innovation Management from 2010. This campus has also started master program in Transportation Engineering and Disaster Risk Management from the academic year 2011/12. A category-wise detail of Master Programs’ intakecapacity is given below in section 1.3 below. Institute has also started regular Ph D admission from academic session 2010/11 in all departments.\n\nIn 1996 Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Urban Planning, Structural Engineering, Environmental Engineering and Water Resources Engineering. Pulchowk Campus has also started M. Sc. courses in Renewable Energy Engineering, Geotechnical Engineering, Information and Communication and Power System Engineering effective from December, 2001. Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Sustainable Water Sanitation and Health Development from 2007 and Technology and Innovation Management from 2010. This campus has also started master program in Transportation Engineering and Disaster Risk Management from the academic year 2011/12. A category-wise detail of Master Programs’ intakecapacity is given below in section 1.3 below. Institute has also started regular Ph D admission from academic session 2010/11 in all departments.\n\nEach year IOE publishes an Information Brochure along with the announcement of entrance examination of that year. This Brochure contains all the required information for an interested candidate to appear in the exam and finally get admitted. This Brochure also contains the current intake capacity, Fee structure and scholarship schemes. ",
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text:
                      "Click Here For Masters Level Information Brochure 2078 BS",
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                        'https://ioe.edu.np/media/1689/ioe-masters-program-information-brochure_2078.pdf'),
                ),
              ])),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(
            //     "In 1996 Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Urban Planning, Structural Engineering, Environmental Engineering and Water Resources Engineering. Pulchowk Campus has also started M. Sc. courses in Renewable Energy Engineering, Geotechnical Engineering, Information and Communication and Power System Engineering effective from December, 2001. Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Sustainable Water Sanitation and Health Development from 2007 and Technology and Innovation Management from 2010. This campus has also started master program in Transportation Engineering and Disaster Risk Management from the academic year 2011/12. A category-wise detail of Master Programs’ intakecapacity is given below in section 1.3 below. Institute has also started regular Ph D admission from academic session 2010/11 in all departments.\n\nIn 1996 Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Urban Planning, Structural Engineering, Environmental Engineering and Water Resources Engineering. Pulchowk Campus has also started M. Sc. courses in Renewable Energy Engineering, Geotechnical Engineering, Information and Communication and Power System Engineering effective from December, 2001. Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Sustainable Water Sanitation and Health Development from 2007 and Technology and Innovation Management from 2010. This campus has also started master program in Transportation Engineering and Disaster Risk Management from the academic year 2011/12. A category-wise detail of Master Programs’ intakecapacity is given below in section 1.3 below. Institute has also started regular Ph D admission from academic session 2010/11 in all departments.\n\nEach year IOE publishes an Information Brochure along with the announcement of entrance examination of that year. This Brochure contains all the required information for an interested candidate to appear in the exam and finally get admitted. This Brochure also contains the current intake capacity. Fee structure and scholarship schemes are also provided in\n",
            //     textAlign: TextAlign.justify,
            //      style: Theme.of(context).textTheme.bodyText2,
            //   ),
            // ),
            // new ListTile(
            //   leading: new MyBullet(),
            //   title: const Text(
            //       'Graduate Program Academic Administration Guidelines 2018'),
            // ),
            // new ListTile(
            //   leading: new MyBullet(),
            //   title: new Text('Information Brochure 2073'),
            // ),
            // new ListTile(
            //   leading: new MyBullet(),
            //   title: new Text('Information Brochure 2071'),
            // ),

            climateCard(context),
            CommunicationAndKnowledgeCard(context),
            CompSstemAndKnowledgeCard(context),

            programBoxes(context,
                init: 0.65,
                min: 0.4,
                max: 0.65,
                img: 'assets/images/msconstruct.png',
                text: 'M.SC. IN CONSTRUCTION MANAGEMENT',
                text1:
                    "Construction Management  is a professional service that uses specialized, project management techniques to oversee the planning, design, and construction of a project, from its beginning to its end. The purpose of CM is to control a project's time, cost and quality. CM is compatible with all project delivery systems, including design-bid-build, design-build, CM At-Risk and Public Private Partnerships. Professional construction managers may be reserved for lengthy, large-scale, high budget undertakings (commercial real estate, transportation infrastructure, industrial facilities, and military infrastructure), called capital projects"),

            programBoxes(context,
                init: 0.65,
                min: 0.4,
                max: 0.65,
                img: 'assets/images/msdisaster.png',
                text: 'M.SC. IN DISASTER RISK MANAGEMENT',
                text1:
                    'Disaster risk Management  is a systematic approach to identifying, assessing and reducing the risks of disaster. It aims to reduce socio-economic vulnerabilities to disaster as well as dealing with the environmental and other hazards that trigger them. Here it has been strongly influenced by the mass of research on vulnerability that has appeared in print since the mid-1970s. It is the responsibility of development and relief agencies alike. It should be an integral part of the way such organizations do their work, not an add-on or one-off action. DRM is very wide-ranging: Its scope is much broader and deeper than conventional emergency management. There is potential for DRM initiatives in just about every sector of development and humanitarian work.'),

            DistributeGenCard(context),

            EarthQCard(context),

            programBoxes(context,
                init: 0.65,
                min: 0.4,
                max: 0.65,
                img: 'assets/images/msenergEffi.png',
                text: 'M.SC. IN ENERGY EFFICIENT BUILDING',
                text1:
                    'The energy performance of a building shall be determined on the basis of the calculated or actual annual energy that is consumed in order to meet the different needs associated with its typical use and shall reflect the heating energy needs and cooling energy needs (energy needed to avoid overheating) to maintain the envisaged temperature conditions of the building, and domestic hot water needs.'),

            programBoxes(context,
                init: 0.7,
                min: 0.4,
                max: 0.7,
                img: 'assets/images/msenergForSustain.png',
                text: 'M.SC. IN ENERGY FOR SUSTAINABLE SOCIAL DEVELOPMENT',
                text1:
                    'The Institute of Engineering (IOE), Tribhuvan University has initiated a two years (4-semester) M.Sc. Architecture in Energy for Sustainable Social Development(MSESSD) from November 2015 in collaboration with Norwegian Institute of Science and Technology (NTNU), Trondheim, Norway. This master program is offered under the Department of Architecture, Central Campus, Institute of Engineering, Tribhuvan University. The Centre for Applied Research and Development (CARD) of Institute of Engineering, Tribhuvan University was implementing agency in Nepal. The EnPe (NORAD), Norway was the responsible agency and financier of this M.Sc. program and the Norwegian Institute of Science and Technology (NTNU) was responsible for coordination of this program. The EnPe (NORAD), Norway funding was available from July 2015 to July 2020. From 2015, this master’s program has been included under the regular program offered by the Central Campus, Institute of Engineering, Tribhuvan University.'),

            EnergPlanAndManagementCard(context),

            programBoxes(context,
                init: 0.955,
                min: 0.6,
                max: 0.955,
                img: 'assets/images/msinform.png',
                text: 'M.SC. IN INFORMATION AND COMMUNICATION ENGINEERING',
                text1:
                    'Vision of MSICE Program:\nGraduates from the MSICE program will be leaders in the planning, design development, implementation and management of Information and Communication technologies to accelerate IT-led development.\n\nObjective of the program:\nThe proposed program in Information and Communication Engineering is framed with the following objectives:\n1.To enable students to design, assess and recommend appropriate Information and Communications solutions.\n2.To provide the students with an opportunity of upgrading their already promising career.\n3.To enhance the foundation knowledge of the students and develop expertise in specific areas of ICE.\n4.To equip the graduates with leadership qualities to update, expand and established the ICE related industry for creating new employment opportunities for different levels of manpower.\n\nCourse Duration:\nThe minimum period of full-time attendance required for MSICE course is two academic years. The maximum duration within which a student is allowed to complete the course is as per the norm set up by the faculty of board of the Institute of Engineering.\n\nCourse Structure:\nCourse Contents: The course consists primarily of two types of courses; the core courses deal with the fundamental and application in different course areas whereas the elective courses deal with very specific details of the course. A student is allowed to select any relevant four courses from among the elective courses besides five core courses. The consistency of elective selection will be ensured with assistance from the faculty advisor. The course is thesis based and the student has to take a project work of 4 credits and a thesis of 20 credits. The student works under the guidance of the faculty advisor.'),
            programBoxes(context,
                init: 0.65,
                min: 0.4,
                max: 0.65,
                img: 'assets/images/msstruct.png',
                text: 'M.SC. IN STRUCTURAL ENGINEERING',
                text1:
                    'Structural engineering is a sub-discipline of civil engineering in which structural engineers are trained to understand, predict, and calculate the stability, strength and rigidity of built structures for buildings and nonbuilding structures, to develop designs and integrate their design with that of other designers, and to supervise construction of projects on site. They can also be involved in the design of machinery, medical equipment, and vehicles where structural integrity affects functioning and safety. See glossary of structural engineering.'),
            programBoxes(context,
                init: 0.9,
                min: 0.4,
                max: 0.9,
                img: 'assets/images/mstechno.png',
                text: 'M.SC. IN TECHNOLOGY, INNOVATION AND MANAGEMENT',
                text1:
                    'The Institute of Engineering (IOE), Tribhuvan University is running a full-time, two years (4-semesters) master program in Technology and Innovation Management (TIM) from July 2010 in collaboration with Norwegian University of Science and Technology (NTNU), Trondhiem, Norway. Norwegian Agency for Development Cooperation (Norad) is the responsible agency and financier of this NOMA (Norad Programme for Master Studies) Program and the Norwegian Centre for International Cooperation in Higher Education (SIU) is responsible for the management of this NOMA program (NOMA PRO 2010/13643). The Norwegian funding will be from 2010 to 2014.\n\nThe 2-year (4-semester) Master of Science program consists of a package of courses covering important areas for managing and mapping technology and innovation management and entrepreneurship. This Master program is designed to give students a focused, relevant and utilizable body of knowledge in technology and Innovation management, suitable for people with an interest in starting and managing innovative projects either within existing structures or by realizing new economic endeavors. Graduates from the program will be prepared to work for corporations/industries and entrepreneurial firms in the knowledge economy with capabilities to be innovative and successful either as entrepreneurs starting new companies or as intrapreneurs generating and managing new technical business opportunities within existing corporations. It will also create an arena for collaboration between faculty and people from industries and businesses to enhance the productivity of their organizations. In this context, the Institute of Engineering (IOE) has recently signed a Memorandum of Understanding (MOU) with the Federation of Nepalese Chambers of Commerce and Industries (FNCCI).'),
            programBoxes(context,
                init: 0.65,
                min: 0.4,
                max: 0.65,
                img: 'assets/images/mstrans.png',
                text: 'M.SC. IN TRANSPORTATION ENGINEERING',
                text1:
                    'Transportation engineering or transport engineering is the application of technology and scientific principles to the planning, functional design, operation and management of facilities for any mode of transportation in order to provide for the safe, efficient, rapid, comfortable, convenient, economical, and environmentally compatible movement of people and goods (transport). It is a sub-discipline of civil engineering. '),
            programBoxes(context,
                init: 0.65,
                min: 0.4,
                max: 0.65,
                img: 'assets/images/msgeotech.png',
                text: 'M.SC. IN GEO-TECHNICAL ENGINEERING',
                text1:
                    'Geotechnical engineering is the branch of civil engineering concerned with the engineering behavior of earth materials. Geotechnical engineering is important in civil engineering, but also has applications in military, mining, petroleum and other engineering disciplines that are concerned with construction occurring on the surface or within the ground. Geotechnical engineering uses principles of soil mechanics and rock mechanics to investigate subsurface conditions and materials; determine the relevant physical/mechanical and chemical properties of these materials; evaluate stability of natural slopes and man-made soil deposits; assess risks posed by site conditions; design earthworks and structure foundations; and monitor site conditions, earthwork and foundation construction.'),
            InfraStructCard(context),
            MaterialCard(context),
            programBoxes(context,
                init: 0.955,
                min: 0.4,
                max: 0.955,
                img: 'assets/images/msmechsys.png',
                text: 'M.SC. IN MECHANICAL SYSTEM DESIGN & ENGINEERING',
                text1:
                    'Introduction\nThe Institute of Engineering, Tribhuvan University has initiated a 2-year full-time masters program in mechanical engineering, titled M.Sc. Engineering in Mechanical Systems Design and Engineering (MS-MSDE), from April/May2017. Engineers completing four years course in Bachelor in Mechanical/Industrial/Automobile/Aeronautical Engineering, or equivalent to Mechanical Engineering, will be eligible to apply for this program. This program will be run under Department of Mechanical Engineering, Pulchowk Campus, Lalitpur, Nepal. The students in this program will develop high levels of analytical and critical skills and learn about the core mechanical methods, tools and techniques, understand their applications and limitations, and indulge in research in the fields of mechanical design, advanced numerical/computational techniques, energy engineering, mechanics and materials, air conditioning and refrigeration, automobile and heavy-equipment engineering, aerospace and aviation, project planning, industrial methods, and management, through highly progressive and innovative learning methods.\n\nAdmission Requirement\n\nProgram entry requirements\nIn order to be eligible for admission for M.Sc. Mechanical Systems Design and Engineering (MS- MSDE), a candidate must have:\ni. Bachelors degree from a 4-year engineering program in Mechanical, Industrial, Aeronautical, and Automobile Engineering, or equivalent, from Tribhuvan University and other recognized universities as well as degree equivalent to any of the aforementioned branches of engineering.\nii. Secure at least a minimum score as prescribed by the faculty board in the admission test conducted by the Institute of Engineering.\n\nEntrance examination\nThe nature of entrance examination will be decided by the Entrance Examination Board of the Institute of Engineering, Tribhuvan University.'),
            programBoxes(context,
                init: 0.65,
                min: 0.4,
                max: 0.65,
                img: 'assets/images/mspowers.png',
                text: 'M.SC. IN POWER SYSTEM ENGINEERING',
                text1:
                    'Power engineering, also called power systems engineering, is a subfield of electrical engineering that deals with the generation, transmission, distribution and utilization of electric power, and the electrical apparatus connected to such systems. Although much of the field is concerned with the problems of three-phase AC power – the standard for large-scale power transmission and distribution across the modern world – a significant fraction of the field is concerned with the conversion between AC and DC power and the development of specialized power systems such as those used in aircraft or for electric railway networks. Power engineering draws the majority of its theoretical base from electrical engineering.'),
            programBoxes(context,
                init: 0.65,
                min: 0.4,
                max: 0.65,
                img: 'assets/images/msrenewen.png',
                text: 'M.SC. IN RENEWABLE ENERGY ENGINEERING',
                text1:
                    'Renewable energy is an essential and vital resource for the world’s future, and future there is an urgent need for engineers capable of solving the industry’s complex challenges in this field. Studying Renewable Energy Engineering at IOE provides graduates with the knowledge and skills to make a strategic real-world impact in the resolution of the world’s energy problems.\nInstitute of Engineering (IOE) Pulchowk Campus enrolls 20 students each year in Master of Science (M.Sc) in Renewable Energy Engineering.'),
            programBoxes(context,
                init: 0.955,
                min: 0.4,
                max: 0.955,
                img: 'assets/images/msmechdesign.png',
                text:
                    'M.SC. ENGINEERING IN MECHANICAL DESIGN AND MANUFACTURING',
                text1:
                    'Introduction\nThe Institute of Engineering, Tribhuvan University has initiated a 2-year full-time masters program in mechanical engineering, titled M.Sc. Engineering in Mechanical Systems Design and Engineering (MS-MSDE), from April/May2017. Engineers completing four years course in Bachelor in Mechanical/Industrial/Automobile/Aeronautical Engineering, or equivalent to Mechanical Engineering, will be eligible to apply for this program. This program will be run under Department of Mechanical Engineering, Pulchowk Campus, Lalitpur, Nepal. The students in this program will develop high levels of analytical and critical skills and learn about the core mechanical methods, tools and techniques, understand their applications and limitations, and indulge in research in the fields of mechanical design, advanced numerical/computational techniques, energy engineering, mechanics and materials, air conditioning and refrigeration, automobile and heavy-equipment engineering, aerospace and aviation, project planning, industrial methods, and management, through highly progressive and innovative learning methods.\n\nAdmission Requirement\n\nProgram entry requirements\nIn order to be eligible for admission for M.Sc. Mechanical Systems Design and Engineering (MS- MSDE), a candidate must have:\ni. Bachelors degree from a 4-year engineering program in Mechanical, Industrial, Aeronautical, and Automobile Engineering, or equivalent, from Tribhuvan University and other recognized universities as well as degree equivalent to any of the aforementioned branches of engineering.\nii. Secure at least a minimum score as prescribed by the faculty board in the admission test conducted by the Institute of Engineering.\n\nEntrance examination\nThe nature of entrance examination will be decided by the Entrance Examination Board of the Institute of Engineering, Tribhuvan University.'),
            programBoxes(context,
                init: 0.65,
                min: 0.4,
                max: 0.65,
                img: 'assets/images/msurban.png',
                text: 'M.SC. IN URBAN PLANNING',
                text1:
                    'Urban planning is a technical and political process concerned with the development and use of land, planning permission, protection and use of the environment, public welfare, and the design of the urban environment, including air, water, and the infrastructure passing into and out of urban areas, such as transportation, communications, and distribution networks. Urban planning is also referred to as urban and regional planning, regional planning, town planning, city planning, rural planning, urban development or some combination in various areas worldwide.'),
            programBoxes(context,
                init: 0.65,
                min: 0.4,
                max: 0.65,
                img: 'assets/images/mswater.png',
                text: 'M.SC. IN WATER RESOURCES ENGINEERING',
                text1:
                    "Water Resource Engineers develop new equipment and systems for water resource management facilities across the United States. The systems that Water Resource Engineers create ensure that citizens are provided with a continuous supply of clean, uncontaminated water for drinking, living, and recreational purposes. Water Resource Engineers not only design these water management systems, but often oversee the construction and maintenance of these systems as well. An increasing population and continuous need for more water stimulates this fast-growing industry. A Bachelor's degree and official certification are required to pursue this career, though many Water Resource Engineers also go on to pursue their Masters Degrees."),
          ],
          padding: const EdgeInsets.all(10),
        ));
  }
}

//add some bullet points

class MyBullet extends StatelessWidget {
  const MyBullet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.0,
      width: 6.0,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
