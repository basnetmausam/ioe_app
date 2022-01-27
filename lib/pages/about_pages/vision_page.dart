import 'package:flutter/material.dart';

class VisionPage extends StatelessWidget {
  const VisionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About IOE",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "IOE Vision, Mission, Goals & Objectives",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "IOE Vision",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "The vision of the Institute of Engineering is to be a premier engineering education institution at par with world class role models.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "IOE Mission",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "The Mission of the Institute of Engineering is to provide quality engineering education and research in the frontier engineering areas relevant primarily to nation.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "IOE Goals",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "• Enhance Academic excellence \n• Perform as Think-Tank\n• Establish Governance\n• Ensure Financial sustainability\n• Establish Collaboration & cooperation",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "IOE Objectives",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "• Establishing market relevant academic programs\n• Emphasizing research works as a integral part of IOE\n• Enhancing cooperation and collaboration of academia with industry from training programs\n• Establishing effective and efficient Exam & evaluation system\n• Promoting advocacy on engineering policies\n• Establishing leadership role in emerging engineering issues\n• Setting up structural & regulatory reforms\n• Addressing national development issues\n• Establishing effective management & leadership\n• Capacity building of faculties & staffs\n• Ensuring competent students and creating conducive study environment \n• Establishing academic Infrastructures\n• Resource planning ( regulations for expense & incentives distributions, performance based incentives)\n• Fund management (identifying funds & its management) \n• Facilitating technology transfer\n• National cooperation and collaboration\n• Emphasizing international collaboration",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Values:",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "• To be true (to the students and the nation)\n• Assess the needs (of the nation and students and respond to them)\n• To be fair and equitable (to all levels of educational programs):",
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
