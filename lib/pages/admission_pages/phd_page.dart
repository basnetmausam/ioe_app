import 'package:bulleted_list/bulleted_list.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class PhdPage extends StatelessWidget {
  const PhdPage({Key? key}) : super(key: key);

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
                "Post Doctorate Level",
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
                        "Post Doctoral Research Program \n\n",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "Post Doctoral Research Study Guidelines 2019",
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => launch(
                                'https://ioe.edu.np/media/1454/ioe-phd-rules-reg-2019.pdf'),
                        ),
                      ])),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "PHD Admission in IOE : 2019",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      BulletedList(
                        listItems: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "IOE PhD Application Pack 2019",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => launch(
                                    'https://ioe.edu.np/media/1456/pages-from-ioe-phd-application-pack-2019.pdf'),
                            ),
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "IOE PhD Rules and Regulations 2019",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => launch(
                                    'https://ioe.edu.np/media/1454/ioe-phd-rules-reg-2019.pdf'),
                            ),
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "IOE PhD Re-registration Guidelines 2019",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => launch(
                                    'https://ioe.edu.np/media/1462/re-registration.pdf'),
                            ),
                          ])),
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "PHD Admission in IOE : 2017",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      BulletedList(
                        listItems: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "IOE PhD Application Pack 2017",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => launch(
                                    'https://ioe.edu.np/media/1156/ioe-phd-application-pack-2017.pdf'),
                            ),
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "IOE PhD Rules and Regulations 2017",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => launch(
                                    'https://ioe.edu.np/media/1157/ioe-phd-rules-reg-2017.pdf'),
                            ),
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "SEEP PhD Fellowship Detail 2017",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => launch(
                                    'https://ioe.edu.np/media/1158/seep-phd-fellowship-detail.pdf'),
                            ),
                          ])),
                        ],
                        style: Theme.of(context).textTheme.bodyText2,
                        bulletColor: context.primaryColor,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "PHD Admission in IOE : 2015",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      BulletedList(
                        listItems: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "IOE PhD Rules & Regulations 2015",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => launch(
                                    'https://ioe.edu.np/media/1159/ioe-phd-rules-regulations-2015.pdf'),
                            ),
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "IOE PhD Scholarship Detail 2015",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => launch(
                                    'https://ioe.edu.np/media/1160/ioe-phd-scholarship-detail-2015.pdf'),
                            ),
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "IOE PhD Application Forms 2015",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => launch(
                                    'https://ioe.edu.np/media/1161/ioe-phd-application-forms-2015.pdf'),
                            ),
                          ])),
                          // "IIOE PhD Rules & Regulations 2015",
                          // "IOE PhD Rules and Regulations 2015",
                          // "IOE PhD Application Forms 2015"
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
