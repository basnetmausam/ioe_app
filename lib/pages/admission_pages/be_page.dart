import 'package:bulleted_list/bulleted_list.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class BEPage extends StatelessWidget {
  const BEPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> procedureslist = [
      "The candidate should deposit an amount of Rs 2,000 as an application fee for entrance examination in Account No. 00915056064 of the Siddhartha Bank Limited by submitting a specially prepared voucher often by filling applicant's name and date of birth in it. The voucher No. indicated in the voucher needs to be specified in the online application form.",
      "The candidate must select the appropriate entrance stream.",
      "The candidate should fill up the other required fields in the form without skipping any steps.",
      "The candidate also needs to upload his/her color photograph of prescribed specification and one of the following identification documents."
    ];
    final List<String> errorlist1 = [
      "Candidate has to pay NRs 150 to edit six or less number of normal text fields.",
      "For Name, Photo and ID document correction:"
    ];

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
                "Bachelor Level",
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
                        "In each academic year Institute of Engineering (IOE) conducts entrance examination; only those candidate who pass the entrance examination are deemed eligible for the admission. These eligible candidates can get admitted to any of the constituent and affiliated colleges according to the admission process followed by corresponding college. The admission process practiced by the constituent colleges is the same, but process followed by the affiliated colleges may differ from one another.\n\nEach year IOE publishes a help booklet along with the announcement of entrance examination of that year. This booklet contains all the required information for an interested candidate to appear in the exam an finally get admitted to any of the constituent or affiliated colleges. This booklet also contains the current intake capacity of each of the colleges. Fee structure and scholarship schemes of constituent colleges are also provided in the following booklet.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "BE/BArch Booklet 2075 (Entrance Information & Admission Regulations)",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "There is provision of admission through an Online Application.\n\nThe candidate willing to appear in the entrance examination to get enrollment into the program should fill and submit the online Application Form within the deadline prescribed by the Entrance Exam Board. Application forms will be available in the website: \nhttp://entrance.ioe.edu.np\n\nThe application procedures are as follows:",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        listItems: procedureslist,
                        bulletType: BulletType.numbered,
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      Text(
                        "                        • Citizenship certificate \n                        • Passport\n                        • Last Academic Exam Admit Card ",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "\n\nError Correction Charges",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        listItems: errorlist1,
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletType: BulletType.numbered,
                        bulletColor: context.primaryColor,
                      ),
                      Text(
                        "--->Name Change, Complete New photo or Complete New ID document upload :- NRs 500 per document\n\n--->Low Resolution Photo Change or Identification Document Change:- NRs 200 per document",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        "\nAccount Name - IOE Entrance Examination Board\nAccount Number - 00602291940013\nBranch - Himalayan Bank, Patan",
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
                        "\nAdmit card can be downloaded from the website:\nhttp://entrance.ioe.edu.np. Applicants should bring the admit card and the mentioned original identification document with him/her during the entrance examination.\nWithout original ID document and color printed admit card, applicant will not be allowed to appear in the entrance examination.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Selection Process",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        "\nThe Entrance Examination Board of IOE will publish the list of the successful candidates in the entrance examination notice board and via the website whereas the Admission Committee of Constituent campuses will take care of admission procedure.",
                        style: Theme.of(context).textTheme.bodyText2,
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
                          "-->Original and attested copies of transcripts of all academic records from SLC onwards to the latest approved degree.",
                          "-->Original copies of migration and provisional certificates, if applicable.",
                          "-->Original copy of Nepali citizenship certificate or passport for foreign students"
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      BulletedList(
                        listItems: const [
                          "In case of discrepancy on verification of the original certificates, or in case of inclusion of the candidate's name in the admission list by mistake of any kind, admission of such a candidate will be cancelled even after his /her formal admission."
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
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
