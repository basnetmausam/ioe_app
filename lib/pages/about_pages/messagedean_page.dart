import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Message From Dean",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: myDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.black54,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/profdrdrjoshi.jpg"),
                      radius: 70,
                    ),
                  ),
                  const Card(
                      child: ListTile(
                    title: Text("Name"),
                    trailing: Text("Prof. Dr. Shashidhar Ram Joshi"),
                  )),
                  const Card(
                      child: ListTile(
                    title: Text("Email"),
                    trailing: Text("srjoshi@ioe.edu.np"),
                  )),
                  const Card(
                      child: ListTile(
                    title: Text("Telephone"),
                    trailing: Text("+977-1-5521531"),
                  )),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      "The Institute of Engineering(IOE), founded in 1930  (1987/11/19BS) as Nepal’s first technical school and reformed to present shape  in 1972,  is producing outstanding  engineering technicians and engineers for more than 80 years. The tradition of excellence  in the IOE is further intensifying in the course of time. IOE is also becoming  more and more responsive to the ever-changing needs of the students and the  engineering profession.   The Institute is experiencing a period of significant  growth. The voyage of IOE departing from producing middle- and high level  technician is continuing to running Bachelor-, Master- and Ph.D. programs  by now. The alumni are spreading across all continents engaged in the  engineering profession of wider disciplines. IOE is running its programs  through its five constituent and ten affiliated campuses in the country.   The Institute of Engineering is enormously benefited by  the wide range of perspectives and talents brought in by the students, faculty  and staff from a variety of backgrounds. IOE offers an impressive range of  Academic resources. Student in IOE mean more than simply preparing for a career.  IOE strive to produce brains who can contribute to the growth of Nepal in all  sense. IOE involves students not only in the acquisition of a formal  qualification valued in society but also in the excitement of investigation,  the pursuit of ideas and the satisfaction that comes from applying knowledge.  Beyond purely academic pursuits, Institute offers a wide range of social,  cultural and recreation activities with the hope that students take a little  time from their studies to enjoy some of these befits as well.   IOE visioned to became the center of excellence, both  as think tank-premier national center of engineering education capable of  addressing national engineering issues and as regional hub-south Asian center  for research, innovation and dissemination of engineering knowledge.  This is possible only by setting a mission of  quality engineering education in the frontier engineering areas relevant  primarily to nation thereby enhancing national development process. It is true  that quality is achieved only with creating excellence in; work, work  environment, human resources, etc. Besides, creation of financial  sustainability and uplifting institute in international level are other areas  to attain the quality.   The faculties, staffs and students are important  stakeholders apart from infrastructures to achieve quality. The faculty is; a  scholar, an effective teacher, an experienced professional and a positive role  model. The staffs are the true aide for the effective delivery.  The students are the ultimate receiver and  reflect quality on their competency and capability. It is therefore important  for student to exhibit; good study habits, cooperative attitude, attentive and  hardworking habits, logical and rational thinking and open-mindedness. IOE is  committed to develop conducive environment for all the stakeholders to fulfill  their respective roles.   As  a  Dean, I express my commitment for the highest quality  in the Diploma, Bachelor, Master and Ph.D. programs and promise that these  programs are built on a foundation of excellence and innovation.\nI am constantly reminded that no corner of the world is untouched by our alumni. Meeting with these successful alumni reminds  me that it is up to us all—faculty and staff—to continue the tradition in  preparing successful graduates.  Our students are not only future alumni,  but they will take the knowledge and vision of excellence gained from here to  manifest as their own, which will have a unique impact on society. The work we do today and tomorrow will have very long-term benefits that will truly change  the world.",
                      style: Theme.of(context).textTheme.bodyText2,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
