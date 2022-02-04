import 'package:bulleted_list/bulleted_list.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class MscPage extends StatelessWidget {
  const MscPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Admission",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Master Level",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "There is provision of admission through an Online Application."),
                      // to make clickable text
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text:
                              " \n\nThe candidate willing to appear in the entrance examination to get enrollment into the M.Sc. program should fill and submit the Application Form online within the deadline prescribed by the Entrance Exam Board. Application forms will be available in the websites:",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        TextSpan(
                          text: " http://entrance.ioe.edu.np",
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

                      const SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        listItems: const [
                          "The candidate should deposit an amount of Rs 2,000 as an application fee for entrance examination in Account No. 00915056064 of the Siddhartha Bank Limited by submitting a specially prepared voucher often by filling applicant's name and date of birth in it. The voucher No. indicated in the voucher needs to be specified in the online application form.",
                          "The candidate must select the appropriate entrance stream.",
                          "The candidate should fill up the other required fields in the form without skipping any steps.",
                          "The candidate also needs to upload his/her color photograph of prescribed specification and one of the following identification documents."
                        ],
                        bulletType: BulletType.numbered,
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      Text(
                        "                        • Citizenship certificate \n                        • Passport\n                        • Last Academic Exam Admit Card ",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "\n\nIf any change has to be done on the submitted information in application form, candidate has to pay NRs 150 to edit six or less number of normal text fields. For name, photo or ID document correction, he/she has to pay NRs 200 at ICTC and submit a letter of request for correction with the payment voucher",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Provision of Admit Cards",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        "\nApplicants should bring the admit card and the mentioned original identification document with him/her during the entrance examination.\n\nWithout original ID document and color printed admit card, applicant will not be allowed to appear in the entrance examination.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Intake Capacities",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        "\nThe quota distribution for all M.Sc. Programs on current intake capacities is listed in the Table-I while the programs and offering department of constituent campuses are depicted in Table.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        listItems: const [
                          "One seat in regular category and One seat in full fee category are reserved for female candidates in each program",
                          "One seat is reserved for IOE faculty. For IOE Reserved Quota, priority will be given to permanent IOE faculty. If there are no applicants from permanent IOE faculty, then priority will be given to faculties who have completed 5 years as a contract faculty. If there is no applicant in IOE reserve quota, it is added to Full Fee Seat.1/4th of the sponsored quota is reserved for the Foreign students.",
                          "Priority for the sponsored quota will be as follows: 1 st Priority: Candidates from government offices & Government Owned Organizations or Companies 2 nd Priority: Other Organizations",
                          "If applications are not received in sponsored/foreign category, then the seat will be fulfilled as full fee category",
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletType: BulletType.numbered,
                        bulletColor: context.primaryColor,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Provision for the Foreign Students",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        "\n1/4th of sponsored quota on each program has been reserved for foreign students interested to earn master’s degree under IOE. They are eligible only for sponsored (self-sponsored) category and should be admitted as foreign students. Following are the requirements for foreign students to study at IOE.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        listItems: const [
                          "Students with foreign citizenship are recognized as foreign students and should have passed bachelor degree in engineering with average grade point of at least ‘B’ or equivalent. (see section 2 for entry requirements of relevant streams in bachelor to be enrolled into corresponding master’s degree program)",
                          "Foreign citizens who completed bachelor or equivalent degree from universities within Nepal should appear in the entrance examination by the normal entrance procedure.",
                          "One recommendation letter from the past University subject instructor/supervisor or mentor if his/her bachelor degree is form foreign university.",
                          "Transcripts and Degree Certificates of Bachelor of Engineering Degree.",
                          "One page motivation letter not exceeding 500 words mentioning candidate’s interest to study masters at IOE, TU, Nepal.",
                          "If the bachelor or equivalent degree is from the foreign university, the degree should be accredited by the concerned body of TU before proceeding to admission.",
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletType: BulletType.numbered,
                        bulletColor: context.primaryColor,
                      ),
                      Text(
                        "\nTo enroll for the academic year, applicant should submit his/her necessary documents (application form, bachelor transcripts and degree certificates, recommendation letter, motivation letter (Statement of Purpose), scanned copy of 1st page of the passport) via email at admission@ioe.edu.np on or before the deadline. Candidate will be informed for interview via telephone or online video conferencing.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Selection Process",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        listItems: const [
                          "Entrance examination will be of Computer Based Multiple Choice Type – of 2 hours duration consisting of two sections. Section- A consists of 45 numbers of questions of 50 marks. While Section-B consists of stream specialized course with 50 numbers of questions of 1 mark each.",
                          "The Candidates have to secure minimum marks as prescribed by the Faculty Board of IOE.  All questions will be in English",
                          "There will be 10% negative marking for wrong answer.",
                          "Non programmable calculators are permitted. Exchange of calculators is strictly prohibited. Candidates have to bring their own calculators in the exam hall."
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Mode of Entrance Examination",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        "\nThe Entrance Examination Board of IOE will publish the list of the successful candidates in the entrance examination notice board and via the website whereas the Admission Committee of Constituent campuses will take care of admission procedure.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        listItems: const [
                          "Candidate who has passed the relevant bachelor degree and fulfills the program entry requirements will be selected for the admission on the basis of merit list based on the score of the Entrance examination.",
                          "Admission committees of respective Campuses will publish the list of admission as per its schedule. The candidates should contact the Campus Admission Committee. All the selected candidates should follow the schedule published by the committee. Vacant seats due to the failure of any candidate to enroll in the prescribed time will be filled by admitting candidates from the consequent next list."
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Admission",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      BulletedList(
                        listItems: const [
                          "The successful candidate should pay required fee and complete the procedures within the time prescribed by the Admission Committee of the Campuses. Candidates failing to do so will lose the opportunity to get the admission. The following documents should be presented at the time of admission:"
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      BulletedList(
                        listItems: const [
                          "--> Original and attested copies of transcripts of all academic records from SLC onwards to the latest approved degree (bachelor/masters).",
                          "-->Original copies of migration and provisional certificates, if applicable.",
                          "-->Original copy of Nepali citizenship certificate, passport for foreign students"
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      BulletedList(
                        listItems: const [
                          "In case of discrepancy on verification of the original certificates, or in case of inclusion of the candidate's name in the admission list by mistake of any kind, admission of such a candidate will be cancelled even after his /her formal admission.",
                          "To be eligible for master’s entrance application, the candidate must have passed bachelor degree in relevant subjects with at least second division. Note: In any program, if 60% of the full fee and sponsored seats are not fulfilled within admission deadline, that program may be suspended for that academic year and the amount paid by the candidate in the admission process shall be refunded."
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      Text(
                        "Fee Structures",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text:
                              "\nPlease refer the latest booklet for the fee structure (",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        TextSpan(
                          text: "link here",
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => launch(
                                'https://ioe.edu.np/admission/graduate-msc/#'),
                        ),
                        TextSpan(
                          text:
                              " )\n\nThe candidates should pay extra charge for internet access and conference publication separately during admission as per Campus rule and any extra services as specified by TU.The given fee structure is for completing the minimum specified courses within two years of academic session. Candidates willing to secure extra credit courses or failing to complete the courses within the specified time frame should pay extra fee accordingly as per campus regulation.\n\nIn case, the admitted student needs to cancel his/her admission, following rules are applicablefor the reimbursement of fees:",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ])),

                      BulletedList(
                        listItems: const [
                          "25% deduction from tuition fee of one semester prior to the start of class.",
                          "50% deduction from tuition fee of one semester till 7th day after the start of class.",
                          "No refund of tuition fees and nonrefundable deposits following the 7th day from the commencement of the class.",
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletType: BulletType.numbered,
                        bulletColor: context.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
