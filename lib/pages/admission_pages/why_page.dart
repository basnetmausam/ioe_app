import 'package:flutter/material.dart';

class WhyPage extends StatelessWidget {
  const WhyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Admission",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Why Choose IOE",
              style: Theme.of(context).textTheme.headline2,
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
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Institute of Engineering (IOE) visioned to be instrumental to achieve this national goal of prosperity of the country and the people. This can be done by producing capable and competitive engineering graduates. Engineering education has two dimension; skill developing and capital formation.\n\nBoth are equally important for the economic growth of the country. As the world is moving towards knowledge based economy, all the nations are entering into 'global skill race'. In this race, education knowledge and skills are assuming ever-greater importance. Understanding this essence, IOE is striving to move forward with market relevant programs and research works.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/images/ioephoto1.jpg"),
                      Text(
                        "\nIOE is one of the well-equipped institutes in the South Asia region. IOE has about 70 laboratories and workshops. As most of the laboratories are equipped with computer facilities, in addition to regular practical classes for students, they are adequate for the purpose of rendering research, consultancy and manufacturing oriented services in wide range of areas.\n\nIOE provides the Internet facility to its students, faculties and administrative staffs of all campuses. All the blocks at central campus Pulchowk are linked through campus wide fiber optic backbone connecting all the departmental computers with the computer resource center at CIT and advanced IT training center (ICTC). Institute of engineering begin bachelor courses in engineering from 1978, master coursed from 1996 and doctoral program from 2003. By now, bachelor’s, master’s and doctoral programs are run in Central campus Pulchowk. Bachelor’s courses are run in the Thapathali campus, Purwanchal campus and Paschimanchal campus. IOE is in the process of strengthening bachelor courses and consolidating master and doctoral programs. IOE is now delivering its services from four constituent campuses and ten affiliated colleges.",
                        style: Theme.of(context).textTheme.bodyText2,
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
