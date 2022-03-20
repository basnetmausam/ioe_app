import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:velocity_x/velocity_x.dart';

import 'M.SC. IN CLIMATE CHANGE AND DEVELOPMENT.dart';

Widget CommunicationAndKnowledgeCard(BuildContext context) {
  return Card(
      child: ListTile(
    onTap: () => showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return makeDismissable(
            context,
            child: DraggableScrollableSheet(
              initialChildSize: 0.955,
              minChildSize: 0.6,
              maxChildSize: 0.955,
              builder: (_, controller) => Container(
                decoration: BoxDecoration(
                    color: context.canvasColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: ListView(
                  controller: controller,
                  children: [
                    // Center(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(5.0),
                    //     child: Text(
                    //       text,
                    //       style: Theme.of(context).textTheme.headline3,
                    //     ),
                    //   ),
                    // ),

                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0)),
                      child: Image.asset('assets/images/mscommNknow.png'),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Introduction',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'The course aims to provide students with expertise in the field of computer systems and knowledge engineering, mainly from the perspective of hardware and software developer and programmer. It emphasizes the design, development and programming of computer systems and computer engineering. The program has particular emphasis on embedded hardware and distributed software systems.\n\nKnowledge engineering which involves integrating knowledge into computer systems in order to solve complex problems requiring  a high level of human expertise. At present, it refers to the building, maintaining and development of knowledge base systems. It has a domains such as artificial intelligence, including databases, data mining, expert systems, decision support systems and information systems. Knowledge engineering is also related to mathematical logic, as well as strongly involved in cognitive science and socio-cognitive engineering where the knowledge is produced by socio-cognitive aggregates and is structured according to our understanding of how human reasoning and logic works.\n\nOptional courses, along with the individual project, enable students to tailor a particular specialization to their own careers. As well as professional, analytical and management skills, students gain technical skills snd knowledge at an advanced level.',
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Course Duration',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'The duration of the course is two years in semester system. The last semester is dedicated for thesis work.',
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Objective of program',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'The main objectives of the course are to:',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text(
                          "to produce highly competent professional in the field of computer system and knowledge engineering",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text(
                          "enhance the analytical skills and problem-solving capability in handling current issues in computer system and knowledge engineering",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text(
                          "impart the theoretical background that students will eventually call upon to strategically manage teams of computer system and knowledge engineering professionals,",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25.0, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text(
                          "develop research skill in students to make them capable of carrying out sound research in computer system and knowledge engineering",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Entry Requirements and Admission Test',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "The candidate pursuing the admission must hold Bachelor’s Degree in Computer/Electronics and Communication Engineering or its equivalent from recognized institutions. The candidate shall appear in the admission test(entrance examination).",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Course Structure',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'First Semester',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'S.N.',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Course Title',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Credit',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Internal',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'External',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Total',
                            ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('1')),
                              DataCell(Text('Algorithmic Mathematics')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('2')),
                              DataCell(Text('Computer Systems')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('3')),
                              DataCell(Text('Knowledge Engineering')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('4')),
                              DataCell(Text('Operation Research')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('')),
                              DataCell(Text('TOTAL')),
                              DataCell(Text('16')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Second Semester',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'S.N.',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Course Title',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Credit',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Internal',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'External',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Total',
                            ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('1')),
                              DataCell(Text('Information Security and audit')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('2')),
                              DataCell(Text('Cloud Computing')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('3')),
                              DataCell(Text('Elective 1')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('4')),
                              DataCell(Text('Elective 2')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('')),
                              DataCell(Text('TOTAL')),
                              DataCell(Text('16')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Thiird Semester',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'S.N.',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Course Title',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Credit',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Internal',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'External',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Total',
                            ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('1')),
                              DataCell(Text('Project')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('2')),
                              DataCell(Text('Elective 3')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('3')),
                              DataCell(Text('Elective 4')),
                              DataCell(Text('4')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('')),
                              DataCell(Text('TOTAL')),
                              DataCell(Text('12')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Forth Semester',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'S.N.',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Course Title',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Credit',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Internal',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'External',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Total',
                            ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('1')),
                              DataCell(Text('Thesis')),
                              DataCell(Text('16')),
                              DataCell(Text('40')),
                              DataCell(Text('60')),
                              DataCell(Text('100')),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Elective Courses',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Elective courses will be offered as per the availability of resource persons. The lists of elective are as follows:',
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Web Information System"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Human Computer Interaction"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Geographical Information System"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Decision Support System"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("e-Government System"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Multimedia System"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Object Oriented Distributed System"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Real Time System Design"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Computer System Simulation"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Data Warehousing and Data Mining"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Semantic Web"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Grid Computing"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Genetic Algorithm and Data Mining"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Fuzzy Expert Systems and Fuzzy Reasoning"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Speech and Language Processing"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Software Reuse"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Embedded System"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Bioinformatics"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Smart Systems : Algorithms and Tools"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text(
                            "Advanced Data Mining : Algorithms and Applications"),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Engineering Decision Analysis"),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Enrollment Capacity : 20 Students',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
    title: const Text('M.SC. IN COMMUNICATION AND KNOWLEDGE ENGINEERING'),
  ));
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
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
