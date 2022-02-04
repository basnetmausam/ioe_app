import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ioe_app/pages/programs_pages/programboxes.dart';

class GraduatePage extends StatelessWidget {
  const GraduatePage({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(6),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Graduate (M.Sc.)",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "In 1996 Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Urban Planning, Structural Engineering, Environmental Engineering and Water Resources Engineering. Pulchowk Campus has also started M. Sc. courses in Renewable Energy Engineering, Geotechnical Engineering, Information and Communication and Power System Engineering effective from December, 2001. Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Sustainable Water Sanitation and Health Development from 2007 and Technology and Innovation Management from 2010. This campus has also started master program in Transportation Engineering and Disaster Risk Management from the academic year 2011/12. A category-wise detail of Master Programs’ intakecapacity is given below in section 1.3 below. Institute has also started regular Ph D admission from academic session 2010/11 in all departments.\n\nIn 1996 Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Urban Planning, Structural Engineering, Environmental Engineering and Water Resources Engineering. Pulchowk Campus has also started M. Sc. courses in Renewable Energy Engineering, Geotechnical Engineering, Information and Communication and Power System Engineering effective from December, 2001. Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Sustainable Water Sanitation and Health Development from 2007 and Technology and Innovation Management from 2010. This campus has also started master program in Transportation Engineering and Disaster Risk Management from the academic year 2011/12. A category-wise detail of Master Programs’ intakecapacity is given below in section 1.3 below. Institute has also started regular Ph D admission from academic session 2010/11 in all departments.\n\nEach year IOE publishes an Information Brochure along with the announcement of entrance examination of that year. This Brochure contains all the required information for an interested candidate to appear in the exam and finally get admitted. This Brochure also contains the current intake capacity.",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(
            //     "In 1996 Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Urban Planning, Structural Engineering, Environmental Engineering and Water Resources Engineering. Pulchowk Campus has also started M. Sc. courses in Renewable Energy Engineering, Geotechnical Engineering, Information and Communication and Power System Engineering effective from December, 2001. Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Sustainable Water Sanitation and Health Development from 2007 and Technology and Innovation Management from 2010. This campus has also started master program in Transportation Engineering and Disaster Risk Management from the academic year 2011/12. A category-wise detail of Master Programs’ intakecapacity is given below in section 1.3 below. Institute has also started regular Ph D admission from academic session 2010/11 in all departments.\n\nIn 1996 Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Urban Planning, Structural Engineering, Environmental Engineering and Water Resources Engineering. Pulchowk Campus has also started M. Sc. courses in Renewable Energy Engineering, Geotechnical Engineering, Information and Communication and Power System Engineering effective from December, 2001. Pulchowk Campus, with support from the Norwegian Government, has started M.Sc. Courses in Sustainable Water Sanitation and Health Development from 2007 and Technology and Innovation Management from 2010. This campus has also started master program in Transportation Engineering and Disaster Risk Management from the academic year 2011/12. A category-wise detail of Master Programs’ intakecapacity is given below in section 1.3 below. Institute has also started regular Ph D admission from academic session 2010/11 in all departments.\n\nEach year IOE publishes an Information Brochure along with the announcement of entrance examination of that year. This Brochure contains all the required information for an interested candidate to appear in the exam and finally get admitted. This Brochure also contains the current intake capacity. Fee structure and scholarship schemes are also provided in\n",
            //     style: Theme.of(context).textTheme.bodyText2,
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
            programBoxes(context,
                img: 'assets/images/msclimate.png',
                text: 'M.SC. IN CLIMATE CHANGE AND DEVELOPMENT',
                text1:
                    'Climate change has far-reaching economic and social implications. This programme examines the social scientific drivers, and consequences, of climate change and associated policy debates. It focuses on the interface between climate change and development, with particular attention paid to the perspective of ecological economics. Students who follow this programme are expected to have employment opportunities in a wide variety of environmental and developmental settings.\nInstitute of Engineering (IOE) Pulchowk Campus enrolls 20 students each year in Master of Science (M.Sc) in Climate change and Development.\n\nEligibility Criteria:\n\n1)To be eligible for the admission to the Master Program, a candidate must have passed 4 Years Bachelors in "engineering/Agriculture/Forestry/Science"\n2)Have undergraduate grades significantly above average and not less than the prescribed by the faculty board of IOE.\n3)Secure minimum score, as prescribed by the Faculty Board of IOE, in the entrance test conducted by the Entrance Board of IOE (or as recommended by special entrance committee for Foreign students).\n\nNote: Equivalence means the same kind of degree obtained from institutes other than TU and recognized by TU as the equivalent to the degree provided by TU in the same discipline.\n\nAdmission criteria:\n\nThe candidate willing to appear in the entrance examination to get enrollment into the M.Sc. program should fill and submit the Application Form online within the deadline prescribed by the Entrance Exam Board. Application forms will be available in the websites: www.ioe.edu.np/entrance or http://entrance.ioe.edu.np. The application procedures are as follows:\n\n1. The candidate should deposit required amount as an application fee for entrance examination in Account No mentioned in the notice by submitting a specially prepared voucher often by filling applicants name and date of birth in it. The voucher No. indicated in the voucher needs to be specified in the online application form.\n2. The candidate must select the appropriate entrance stream.\n3. The candidate should fill up the other required fields in the form without skipping any steps.\n4. The candidate also needs to upload his/her color photograph of prescribed specification and one of the following identification documents.\n      i)Citizenship certificate\n      ii)Passport\n      iii)Last exam admit card\n\nIf any change has to be done on the submitted information in application form, candidate has to pay extra fee to edit six or less number of normal text fields. For name, photo or ID document correction, he/she has to pay more amounts at ICTC and submit a letter of request for correction with the payment voucher.\n\nSeat/Quota distribution for M.Sc Program:\n\n    Total Intake:20\n    Regular Merit:5\n    IOE Reserved:1\n    Full Fee:20\n    Sponsered:20\n\n1.One seat in regular category and One seat in full fee category are reserved for female candidates in each program.\n2.One seat is reserved for IOE faculty. For IOE Reserved Quota, priority will be given to permanent IOE faculty. If there are no applicants from permanent IOE faculty, then priority will be given to faculties who have completed 5 years as a contract faculty. If there is no applicant in IOE reserve quota, it is added to Full Fee Seat. 1/4th of the sponsored quota is reserved for the Foreign students.\n3.Priority for the sponsored quota will be as follows:\na)1st Priority: Candidates from government offices & Government Owned Organizations or Companies\nb)2nd Priority: Other Organizations\n4.If applications are not received in sponsored/foreign category, then the seat will be fulfilled as full fee category.'),

            programBoxes(context,
                img: 'assets/images/mscommNknow.png',
                text: 'M.SC. IN COMMUNICATION AND KNOWLEDGE ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

            programBoxes(context,
                img: 'assets/images/mscompsys.png',
                text: 'M.SC. IN COMPUTER SYSTEM AND KNOWLEDGE ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

            programBoxes(context,
                img: 'assets/images/msconstruct.png',
                text: 'M.SC. IN CONSTRUCTION MANAGEMENT',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

            programBoxes(context,
                img: 'assets/images/msdisaster.png',
                text: 'M.SC. IN DISASTER RISK MANAGEMENT',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

            programBoxes(context,
                img: 'assets/images/msdistri.png',
                text: 'M.SC. IN DISTRIBUTE GENERATION ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

            programBoxes(context,
                img: 'assets/images/msearthQ.png',
                text: 'M.SC. IN EARTHQUAKE ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

            programBoxes(context,
                img: 'assets/images/msenergEffi.png',
                text: 'M.SC. IN ENERGY EFFICIENT BUILDING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

            programBoxes(context,
                img: 'assets/images/msenergForSustain.png',
                text: 'M.SC. IN ENERGY FOR SUSTAINABLE SOCIAL DEVELOPMENT',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

            programBoxes(context,
                img: 'assets/images/msenerg.png',
                text: 'M.SC. IN ENERGY SYSTEM PLANNING AND MANAGEMENT',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),

            programBoxes(context,
                img: 'assets/images/msinform.png',
                text: 'M.SC. IN INFORMATION AND COMMUNICATION ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/msstruct.png',
                text: 'M.SC. IN STRUCTURAL ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/mstechno.png',
                text: 'M.SC. IN TECHNOLOGY, INNOVATION AND MANAGEMENT',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/mstrans.png',
                text: 'M.SC. IN TRANSPORTATION ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/msgeotech.png',
                text: 'M.SC. IN GEO-TECHNICAL ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/BEagri.png',
                text: 'M.SC. IN INFRASTRUCTURE ENGINEERING & MANAGEMENT',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/msmaterial.png',
                text: 'M.SC. IN MATERIAL SCIENCE AND ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/msmechsys.png',
                text: 'M.SC. IN MECHANICAL SYSTEM DESIGN & ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/mspowers.png',
                text: 'M.SC. IN POWER SYSTEM ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/msrenewen.png',
                text: 'M.SC. IN RENEWABLE ENERGY ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/msmechdesign.png',
                text:
                    'M.SC. ENGINEERING IN MECHANICAL DESIGN AND MANUFACTURING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/msurban.png',
                text: 'M.SC. IN URBAN PLANNING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
            programBoxes(context,
                img: 'assets/images/mswater.png',
                text: 'M.SC. IN WATER RESOURCES ENGINEERING',
                text1:
                    'Agricultural engineering is the engineering discipline that studies agricultural production and processing. Agricultural engineering combines the disciplines of mechanical, civil, electrical and chemical engineering principles with a knowledge of agricultural principles according to technological principles.'),
          ],
          padding: const EdgeInsets.all(10),
        ));
  }
}

//add some bullet points


// class MyBullet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       height: 6.0,
//       width: 6.0,
//       decoration: new BoxDecoration(
//         color: Colors.black,
//         shape: BoxShape.circle,
//       ),
//     );
//   }
// }
