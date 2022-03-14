import 'package:flutter/material.dart';

import 'M.SC. IN CLIMATE CHANGE AND DEVELOPMENT.dart';

Widget MaterialCard(BuildContext context) {
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
                      child: Image.asset('assets/images/msmaterial.png'),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'The interdisciplinary field of materials science, also commonly termed materials science and engineering is the design and discovery of new materials, particularly solids. The intellectual origins of materials science stem from the Enlightenment, when researchers began to use analytical thinking from chemistry, physics, and engineering to understand ancient, phenomenological observations in metallurgy and mineralogy. Materials science still incorporates elements of physics, chemistry, and engineering. As such, the field was long considered by academic institutions as a sub-field of these related fields. Beginning in the 1940s, materials science began to be more widely recognized as a specific and distinct field of science and engineering, and major technical universities around the world created dedicated schools of the study, within either the Science or Engineering schools, hence the naming.\nInstitute of Engineering (IOE) Pulchowk Campus enrolls 20 students each year in Master of Science (M.Sc) in Material Science and Engineering.\n',
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Eligibility Criteria:',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text(
                          "To be eligible for the admission to the Master Program, a candidate must have passed 4 Years Bachelors in 'engineering/Agriculture/Forestry/Science.'",
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
                          "Have undergraduate grades significantly above average and not less than the prescribed by the faculty board of IOE, and",
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
                          "Secure minimum score, as prescribed by the Faculty Board of IOE, in the entrance test conducted by the Entrance Board of IOE (or as recommended by special entrance committee for Foreign students)",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 25.0, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: Text("Note:"),
                        title: Text(
                          "Equivalence means the same kind of degree obtained from institutes other than TU and recognized by TU as the equivalent to the degree provided by TU in the same discipline.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Admission criteria:',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "The candidate willing to appear in the entrance examination to get enrollment into the M.Sc. program should fill and submit the Application Form online within the deadline prescribed by the Entrance Exam Board. Application forms will be available in the websites: www.ioe.edu.np/entrance or http://entrance.ioe.edu.np. The application procedures are as follows:\n\n1. The candidate should deposit required amount as an application fee for entrance examination in Account No mentioned in the notice by submitting a specially prepared voucher often by filling applicant's name and date of birth in it. The voucher No. indicated in the voucher needs to be specified in the online application form.\n\n2. The candidate must select the appropriate entrance stream.\n\n3. The candidate should fill up the other required fields in the form without skipping any steps.\n\n4. The candidate also needs to upload his/her color photograph of prescribed specification and one of the following identification documents.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 70.0, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Citizenship certificate"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 70.0, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Passport"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 70.0, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("Last exam admit card"),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "If any change has to be done on the submitted information in application form, candidate has to pay extra fee to edit six or less number of normal text fields. For name, photo or ID document correction, he/she has to pay more amounts at ICTC and submit a letter of request for correction with the payment voucher.",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Seat/Quota distribution for M.Sc Program",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'Total Intake',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Regular Merit',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'IOE Reserved',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Full Fee',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Sponsored',
                            ),
                          ),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text('20')),
                              DataCell(Text('5')),
                              DataCell(Text('1')),
                              DataCell(Text('6')),
                              DataCell(Text('8')),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 16),
                      child: Text(
                        "1.One seat in regular category and One seat in full fee category are reserved for female candidates in each program.\n\n2.One seat is reserved for IOE faculty. For IOE Reserved Quota, priority will be given to permanent IOE faculty. If there are no applicants from permanent IOE faculty, then priority will be given to faculties who have completed 5 years as a contract faculty. If there is no applicant in IOE reserve quota, it is added to Full Fee Seat. 1/4th of the sponsored quota is reserved for the Foreign students.\n\n3.Priority for the sponsored quota will be as follows:",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 70.0, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text(
                          "1st Priority: Candidates from government offices & Government Owned Organizations or Companies",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 70.0, right: 16),
                      child: ListTile(
                        dense: true,
                        leading: MyBullet(),
                        title: Text("2nd Priority: Other Organizations"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 16),
                      child: Text(
                        "4.If applications are not received in sponsored/foreign category, then the seat will be fulfilled as full fee category.",
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
    title: const Text('M.SC. IN MATERIAL SCIENCE AND ENGINEERING'),
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
