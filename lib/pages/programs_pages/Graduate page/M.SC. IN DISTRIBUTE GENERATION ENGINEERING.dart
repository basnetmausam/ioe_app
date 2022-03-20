import 'package:flutter/gestures.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import 'M.SC. IN CLIMATE CHANGE AND DEVELOPMENT.dart';

// ignore: non_constant_identifier_names
Widget DistributeGenCard(BuildContext context) {
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
                      child: Image.asset('assets/images/msdistri.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Institute of Engineering (IOE) Pulchowk Campus enrolls 20 students each year in Master of Science (M.Sc) in ......',
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
                      padding: const EdgeInsets.all(16),
                      child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(children: [
                            TextSpan(
                              text:
                                  "The candidate willing to appear in the entrance examination to get enrollment into the M.Sc. program should fill and submit the Application Form online within the deadline prescribed by the Entrance Exam Board. Application forms will be available in the website:",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            TextSpan(
                              text: " http://entrance.ioe.edu.np.",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap =
                                    () => launch('http://entrance.ioe.edu.np'),
                            ),
                            TextSpan(
                              text:
                                  "\n\nThe application procedures are as follows:",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ])),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    BulletedList(
                      bulletType: BulletType.numbered,
                      listItems: const [
                        "The candidate should deposit an amount of Rs 2,000 as an application fee for entrance examination in Account No. 00915056064 of the Siddhartha Bank Limited by submitting a specially prepared voucher often by filling applicant's name and date of birth in it. The voucher No. indicated in the voucher needs to be specified in the online application form.",
                        "The candidate must select the appropriate entrance stream.",
                        "The candidate should fill up the other required fields in the form without skipping any steps.",
                        "The candidate also needs to upload his/her color photograph of prescribed specification and one of the following identification documents."
                      ],
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      "                        • Citizenship certificate \n                        • Passport\n                        • Last Academic Exam Admit Card ",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "\n\nIf any change has to be done on the submitted information in application form, candidate has to pay NRs 150 to edit six or less number of normal text fields. For name, photo or ID document correction, he/she has to pay NRs 200 at ICTC and submit a letter of request for correction with the payment voucher.",
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
                    BulletedList(
                      listItems: const [
                        "One seat in regular category and One seat in full fee category are reserved for female candidates in each program",
                        "One seat is reserved for IOE faculty. For IOE Reserved Quota, priority will be given to permanent IOE faculty. If there are no applicants from permanent IOE faculty, then priority will be given to faculties who have completed 5 years as a contract faculty. If there is no applicant in IOE reserve quota, it is added to Full Fee Seat. 1/4th of the sponsored quota is reserved for the Foreign students.",
                        "Priority for the sponsored quota will be as follows:",
                      ],
                      bullet: Icon(Icons.check, color: Colors.green),
                      style: Theme.of(context).textTheme.bodyText2,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: BulletedList(
                        listItems: const [
                          "1st Priority: Candidates from government offices & Government Owned Organizations or Companies",
                          "2nd Priority: Other Organizations",
                        ],
                        bullet: const Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 10,
                        ),
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    BulletedList(
                      listItems: const [
                        "If applications are not received in sponsored/foreign category, then the seat will be fulfilled as full fee category.",
                      ],
                      bullet: Icon(Icons.check, color: Colors.green),
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ],
                ),
              ),
            ),
          );
        }),
    title: const Text('M.SC. IN DISTRIBUTE GENERATION ENGINEERING'),
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
