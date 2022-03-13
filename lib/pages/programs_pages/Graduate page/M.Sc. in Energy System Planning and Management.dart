import 'package:flutter/material.dart';

import 'M.SC. IN CLIMATE CHANGE AND DEVELOPMENT.dart';

Widget EnergPlanAndManagementCard(BuildContext context) {
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
                decoration: const BoxDecoration(
                    color: Colors.white,
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
                      child: Image.asset('assets/images/msenerg.png'),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 16),
                      child: Text(
                        'Introduction',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 16),
                      child: Text(
                        'The Institute of Engineering (IOE), Tribhuvan University has initiated a two years (4-semester) M.Sc. Engineering in Energy Systems Planning and Management (MS-ESPM) from November 2012 in collaboration with the Institute of Energy Systems and Thermodynamics, Vienna University Technology, Vienna, Austria. This masters program is offered under the Department of Mechanical Engineering, Central Campus, Institute of Engineering, Tribhuvan University. The Centre for Energy Studies (CES) of Institute of Engineering, Tribhuvan University was implementing agency in Nepal. The Austrian Partnership Program in Higher Education and Research for Development “appear” was the responsible agency and financier of this M.S. program and the Institute of Energy System and Thermodynamics, Vienna University Technology was responsible for coordination of this program. The Austrian funding was available from July 2011 to July 2013. From 2014, this masters program has been included under the regular program offered by the Central Campus, Institute of Engineering, Tribhuvan University. The 2-year (4-semester) Master of Science program consists of a package of courses covering important areas for planning, policy making and managing energy systems. This master program is designed to give students a focused, relevant and utilizable body of knowledge in energy system planning and policy making suitable for people with an interest in starting and managing energy related projects. Graduates from the program will be prepared to work for government and non-governmental institutions, international organizations, corporations/industries and entrepreneurial firms in the knowledge economy with capabilities to plan, manage and formulate energy related policies.',
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Admission Requirements',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Program entry requirements',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 16),
                      child: Text(
                        "In order to be eligible for admission for Master of Science Engineering in Energy System Planning and Management (MS-ESPM), a candidate must have:\n• A Bachelors' Degree from a Four Year Engineering Program in Mechanical, Electrical, Electronics, Computer, Civil, Agriculture and Industrial Engineering or Five Year Program in Architecture from Tribhuvan University and other recognized universities as well as degree equivalent to any of the aforementioned branches of engineering.\n• Secure at least a minimum score as prescribed by the Faculty Board in the admission test conducted by the Institute of Engineering.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Categories of Students',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 16),
                      child: Text(
                        "Four categories of students are envisaged in this course and they are:\n1. “appear” (Austrian Development Cooperation) / Institute of Engineering sponsored students. This scholarship was given in the year 2012 and 2013.\n2. Regular fee paying students\n3. Full Fee paying students\n4. Sponsored students.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Duration of study',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 16),
                      child: Text(
                        "A regular student should complete the course within four years. Each student must take a minimum of 60 credits. Students may take more than 60 credits but the excess credit will not be counted for.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Course Structure',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "This Master Course focuses on the planning, designing, policy making and management of energy systems and formulating strategies. The program is structured with an objective to produce graduates who will have in-depth knowledge of energy system planning, analysis and formulating strategies so that they have capability to accept both technical and management responsibilities. An important influence is real life problem based learning including case studies and problem solving with quantitative and qualitative models including commercial modeling software.\n\nThe course structure is based on the Semester system. The detailed course structure, examination scheme, marks, etc. are listed in detailed course structure sheet.\n\nEach Year is divided in first and second Semester. In first year first semester, five core courses are offered and in second semester, four core courses related to energy planning, management and development are offered. Six different elective subjects are offered in second semester and students can opt for one of them. The second year, first semester consists of four compulsory subjects including one group projects. Six electives from different fields are offered in this semester and students can opt for one of them. The second year second semester is entirely allocated for dissertation work. The dissertation shall be individual's work and be extensive and normally field based. Students shall be encouraged to publish research papers in national and international journals as a outcome of their dissertation work.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Course Overview',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'Semester 1',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Semester 2',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Semester 3',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Semester 4',
                            ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text(
                                  'Research Methodolgy\nCore General Course(4 credits)')),
                              DataCell(Text(
                                  'Energy/Economics & System Planning\nCore Energy Planning Course(4 credits)')),
                              DataCell(Text('Elective III\n(4 credits)')),
                              DataCell(Text('Dissertation/Thesis Course')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text(
                                  'Operation Research/Management Science\nCore Management Course(4 credits)')),
                              DataCell(Text(
                                  'Energy Financial Management\nCore Management Course(4 credits)')),
                              DataCell(Text('Elective IV\n(4 credits)')),
                              DataCell(Text('')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text(
                                  'Thermo-fluid\nCore Technology Course(4 credits)')),
                              DataCell(Text(
                                  'Elective I\nCore Management Course(4 credits)')),
                              DataCell(Text('Group Projects\n(4 credits)')),
                              DataCell(Text('')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text(
                                  'Energy Resources\nCore Energy Course(4 credits)')),
                              DataCell(Text('Elective II\n(4 credits)')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "Note:\n1. Total Credit = 60 Credits.\n2. Course work , directed study and projects = 44 Credits\n3. Dissertation = 16 Credits\n4. Depending on the interest of students only 2 electives are offered in each term. Minimum number of students in each elective should be 6.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Core and elective courses',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "The course consists of two types of courses: the Core Courses which deal with the fundamental theory and the Elective Courses which deal with the specific details of the course.\nSimilarly, conferences and seminars are organized time to time to make students abreast with the current happenings in energy world. Also students are encouraged to participate in various national and international conferences.\nThe core courses of the Energy System Planning and Management program focuses on the fundamentals of energy systems planning, analysis, modeling and management. Elective courses chosen will enable students to focus their courses to their technical interests and to specific topics in power plant technology, energy generation, transmission, distribution, control systems, energy economics and management. In addition, required project works will provide hands-on real world experience.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Group project work',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "The purpose of the group project in second year, second semester is to provide an opportunity for the group of students to investigate, analyze and to provide possible solution to an existing energy related problems. The group project must be completed in the allocated term. The group project may be done in small group normally two to three students per group.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Dissertation/Masters Thesis',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "The main objective of Master's Degree Dissertation is to carry out original research work concerning energy related problems and solve those problems. Students are encouraged to publish articles in national and international journals.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Qualifying Criteria',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "To qualify for the Master of Science in Energy System Planning and Management, the student must satisfactorily complete the program consisting of course work, directed study, group projects of 44 credits and an individual thesis of 16 credits.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Credit System',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "The course curriculum is organized in the overall framework of Credit System. Each course has a certain number of credits which indicates the weightage. The number of credits depends on the contact hours for the course and its work load. Course with one credit weightage will have 15 lecture hours in a semester. The tutorial consulting and assessment hours will vary depending on the nature of the course. The total Credit for the master's program is 60 credits.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Evaluation System',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "The evaluation system is based on the continuous assessment by the course teacher and the final examination. The students have to pass individually in the assessment as well as the final examination. The minimum pass marks for the assessment and final examination is 50%.\n\nThe percentage is calculated from the following criterion:\n\nTotal percentage = Total credit x Marks Obtained / Total credit\n\nDepending upon the total percentage of the marks obtained, the following division shall be awarded:",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'Percentage',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Division',
                            ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('>=50%')),
                              DataCell(Text('Pass')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('50 – <65%)')),
                              DataCell(Text('II')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('65 – <80%')),
                              DataCell(Text('I')),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('80 and above')),
                              DataCell(Text('Distinction')),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Text(
                        'Course Code',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "Each course is identified by a code. Each course will have a three digit number with a prefix set of two capital letters. The prefix letters stands for the department offering the course (for example, ME signifies Department of Mechanical Engineering). In the three number central digits, the first digit denotes the level in which the course is offered. For example, the digit 8 and 9 indicate the first and second year respectively of the Master's level course. The second digit is used to designate the semester. The second digits from 1 to 50 are used for the course offered in the first and third semesters and 51 to 100 for the courses offered in the second and fourth semesters respectively.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Instructional Methods',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "Conventional lectures and seminars in the taught course components (core and elective courses) of the program are reinforced by other approaches to teaching and learning process:\n\n• the use of case studies (video and text-based) to highlight key issues and management practices\n• training by using electronic sources\n• training in team work, group work, presentations and project management.\n\nEach course is coordinated by a member of the faculty or the visiting faculty from outside who is expert in a given subject. The course faculty has the full responsibility for the conduction of the particular course. The courses comprise of lectures tutorials, laboratory works, group discussions and project works if applicable. The course contents are designed in such a way that considerable self-learning efforts should be used by the students.\n\nEach student will be assigned a counselor. The main function of the counselor will be to guide the students throughout the 2- Year program.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Qualifying Criteria',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "To qualify for the Master of Science in Energy System Planning and Management, the student must satisfactorily complete the program consisting of course work, directed study, group projects of 44 credits and an individual thesis of 16 credits.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Registration',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Text(
                        "Students must register for their course every semester. They must seriously attempt to complete the masters' program in 2 years. In all the four semesters, a total of 44 credits will be offered which will consist of core and elective courses. The credits for the thesis will be 16. The total credit for the complete program is 60.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
    title: const Text('M.SC. IN ENERGY SYSTEM PLANNING AND MANAGEMENT'),
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
