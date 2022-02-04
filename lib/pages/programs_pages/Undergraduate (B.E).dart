import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/programs_pages/programboxes.dart';

class UnderGraduatePage extends StatelessWidget {
  const UnderGraduatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Programs",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Undergraduate (B.E.)",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "In each academic year Institute of Engineering (IOE) conducts entrance examination; only those candidate who pass the entrance examination are deemed eligible for the admission. These eligible candidates can get admitted to any of the constituent and affiliated colleges according to the admission process followed by corresponding college. The admission process practiced by the constituent colleges is the same, but process followed by the affiliated colleges may differ from one another.\n\nEach year IOE publishes a help book along with the announcement of entrance examination of that year. This book contains all the required information for an interested candidate to appear in the exam an finally get admitted to any of the constituent or affiliated colleges. This book also contains the current intake capacity of each of the colleges. Fee structure and scholarship schemes of constituent colleges are also provided in that book (BE Booklet 2072).\n\nIOE bachelor programs are available on all of its constituent campuses and the affiliated colleges while the masters programs are available only at its constituent campuses: Pulchowk Campus, Thapathali Campus, and Pashchimanchal Campus.\n\nThe following are the graduate course available in IOE :",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          programBoxes(context,
              img: 'assets/images/BEagri.png',
              text: 'BE IN AGRICULTURE ENGINEERING',
              text1:
                  'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          programBoxes(context,
              img: 'assets/images/BEarchi.png',
              text: 'BE IN ARCHITECTURE',
              text1:
                  'Architecture is both the process and the product of planning, designing, and constructing buildings or any other structures.[3] Architectural works, in the material form of buildings, are often perceived as cultural symbols and as works of art. Historical civilizations are often identified with their surviving architectural achievements.'),
          programBoxes(context,
              img: 'assets/images/BEauto.png',
              text: 'BE IN AUTOMOBILE ENGINEERING',
              text1:
                  'Automobile Engineering is a branch of engineering which deals with designing, manufacturing and operating automobiles. It is a segment of vehicle engineering which deals with motorcycles, buses, trucks, etc. It includes mechanical, electrical, electronic, software and safety elements. The automobile engineering career option is fast paced and very creative. It is one of the most preferred careers by engineers. '),
          programBoxes(context,
              img: 'assets/images/BEcivil.png',
              text: 'BE IN CIVIL ENGINEERING',
              text1:
                  'Civil Engineering is a professional engineering discipline that deals with the design, construction, and maintenance of the physical and naturally built environment, including works like roads, bridges, canals, dams, and buildings.[1][2] Civil engineering is traditionally broken into a number of sub-disciplines. It is the second-oldest engineering discipline after military engineering,[3] and it is defined to distinguish non-military engineering from military engineering.[4] Civil engineering takes place in the public sector from municipal through to national governments, and in the private sector from individual homeowners through to international companies.'),
          programBoxes(context,
              img: 'assets/images/BEcomp.png',
              text: 'BE IN COMPUTER ENGINEERING',
              text1:
                  'Computer engineering is a discipline that integrates several fields of electrical engineering and computer science required to develop computer hardware and software.[1] Computer engineers usually have training in electronic engineering (or electrical engineering), software design, and hardware–software integration instead of only software engineering or electronic engineering. Computer engineers are involved in many hardware and software aspects of computing, from the design of individual microcontrollers, microprocessors, personal computers, and supercomputers, to circuit design. This field of engineering not only focuses on how computer systems themselves work, but also how they integrate into the larger picture.\n\nUsual tasks involving computer engineers include writing software and firmware for embedded microcontrollers, designing VLSI chips, designing analog sensors, designing mixed signal circuit boards, and designing operating systems. Computer engineers are also suited for robotics research, which relies heavily on using digital systems to control and monitor electrical systems like motors, communications, and sensors.'),
          programBoxes(context,
              img: 'assets/images/BEelec.png',
              text: 'BE IN ELECTRICAL ENGINEERING',
              text1:
                  'Electrical engineering is a field of engineering that generally deals with the study and application of electricity, electronics, and electromagnetism. This field first became an identifiable occupation in the later half of the 19th century after commercialization of the electric telegraph, the telephone, and electric power distribution and use. Subsequently, broadcasting and recording media made electronics part of daily life. The invention of the transistor, and later the integrated circuit, brought down the cost of electronics to the point they can be used in almost any household object.'),
          programBoxes(context,
              img: 'assets/images/BEelectro.png',
              text: 'BE IN ELECTRONICS AND COMMUNICATION ENGINEERING',
              text1:
                  'ELCETRONICS AND COMMUNICATION ENGINEERING This deparment or Course is based on Electronics and Communication Process {eg:VLSI(Very Large Scale Integration)Networking(TCP/IP(Transmission Control Protocol/Internet Protoco}and such that Signals based subjects(Digital signal processing(DSP))And Image Processing.'),
          programBoxes(context,
              img: 'assets/images/BEgeomat.png',
              text: 'BE IN GEOMATICS ENGINEERING',
              text1:
                  'Geomatics  engineering, also known as surveying engineering or geospatial science (including geospatial engineering and geospatial technology), is the discipline of gathering, storing, processing, and delivering geographic information or spatially referenced information. In other words, it "consists of products, services and tools involved in the collection, integration and management of geographic data".'),
          programBoxes(context,
              img: 'assets/images/BEindus.png',
              text: 'BE IN INDUSTRIAL ENGINEERING',
              text1:
                  'Industrial engineering is a branch of engineering which deals with the optimization of complex processes, systems, or organizations. Industrial engineers work to eliminate waste of time, money, materials, person-hours, machine time, energy and other resources that do not generate value. According to the Institute of Industrial and Systems Engineers, they create engineering processes and systems that improve quality and productivity.'),
          programBoxes(context,
              img: 'assets/images/BEmech.png',
              text: 'BE IN MECHANICAL ENGINEERING',
              text1:
                  'Mechanical engineering is the discipline that applies engineering, physics, and materials science principles to design, analyze, manufacture, and maintain mechanical systems. It is one of the oldest and broadest of the engineering disciplines.\n\nThe mechanical engineering field requires an understanding of core areas including mechanics, dynamics, thermodynamics, materials science, structural analysis, and electricity. In addition to these core principles, mechanical engineers use tools such as computer-aided design (CAD), and product life cycle management to design and analyze manufacturing plants, industrial equipment and machinery, heating and cooling systems, transport systems, aircraft, watercraft, robotics, medical devices, weapons, and others. It is the branch of engineering that involves the design, production, and operation of machinery.'),
        ],
        padding: const EdgeInsets.all(12),
      ),
    );
  }
}
