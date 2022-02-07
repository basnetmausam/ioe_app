import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:ioe_app/widgets/bottom_header.dart';
import 'package:ioe_app/widgets/centres_sheet.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:velocity_x/velocity_x.dart';

class CentresPage extends StatelessWidget {
  const CentresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Research",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Research Centres",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Flexible(
              child: ListView(
            children: [
              Card(
                  child: ListTile(
                onTap: () => showSlidingBottomSheet(context,
                    builder: (context) => const SlidingSheetDialog(
                          cornerRadius: 16,
                          // avoidStatusBar: true,
                          snapSpec: SnapSpec(
                            // initialSnap: 1,
                            snappings: [0.6, 1],
                          ),
                          builder: buildSheet1,
                          headerBuilder: buildHeader,
                        )),

                // showModalBottomSheet(
                //     isScrollControlled: true,
                //     shape: const RoundedRectangleBorder(
                //         borderRadius:
                //             BorderRadius.vertical(top: Radius.circular(20))),
                //     context: context,
                //     builder: (BuildContext context) {
                //       return Column(
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                //           const SizedBox(
                //             height: 30,
                //           ),
                //           Text(
                //             "Center for Applied Research and Development",
                //             style: Theme.of(context).textTheme.headline3,
                //           ),
                //           const SizedBox(
                //             height: 10,
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.all(16.0),
                //             child: Text(
                //               "Center for Applied Research and Development (CARD) is an autonomous research and development center within the IOE. The main objective of the CARD is to carry out the primary mandate of the Institute of Engineering (IOE) to educate students and to impart new knowledge by creating a vigorous and highly visible research environment. CARD has made an effort to establish a research culture and develop leadership at the IOE. It supports all kinds of scholarly activities: fundamental research, applied research and development contract research in government, non-government and international agencies. It capitalizes on the wide range of multidisciplinary in house expertise and capabilities of the IOE.\n\nWebsite of CARD",
                //               style: Theme.of(context).textTheme.bodyText2,
                //             ),
                //           ),
                //         ],
                //       );
                //     }),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Center for Applied Research and Development",
                  ),
                ),
              )),
              Card(
                child: ListTile(
                  onTap: () => showSlidingBottomSheet(context,
                      builder: (context) => const SlidingSheetDialog(
                            cornerRadius: 16,
                            // avoidStatusBar: true,
                            snapSpec: SnapSpec(
                              // initialSnap: 1,
                              snappings: [0.6, 1],
                            ),
                            builder: buildSheet2,
                            headerBuilder: buildHeader,
                          )),

                  title: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Centre for Disaster Studies"),
                  ),
                  // subtitle: Text("ohhh hoooo"),
                ),
              ),
              Card(
                  child: ListTile(
                onTap: () => showSlidingBottomSheet(context,
                    builder: (context) => const SlidingSheetDialog(
                          cornerRadius: 16,
                          // avoidStatusBar: true,
                          snapSpec: SnapSpec(
                            // initialSnap: 1,
                            snappings: [0.6, 1],
                          ),
                          builder: buildSheet3,
                          headerBuilder: buildHeader,
                        )),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Center for Energy Studies"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showSlidingBottomSheet(context,
                    builder: (context) => const SlidingSheetDialog(
                          cornerRadius: 16,
                          // avoidStatusBar: true,
                          snapSpec: SnapSpec(
                            // initialSnap: 1,
                            snappings: [0.6, 1],
                          ),
                          builder: buildSheet4,
                          headerBuilder: buildHeader,
                        )),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      "Center for Infrastructure Development Studies(CIDS)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showSlidingBottomSheet(context,
                    builder: (context) => const SlidingSheetDialog(
                          cornerRadius: 16,
                          // avoidStatusBar: true,
                          snapSpec: SnapSpec(
                            // initialSnap: 1,
                            snappings: [0.6, 1],
                          ),
                          builder: buildSheet5,
                          headerBuilder: buildHeader,
                        )),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Centre of Pollution Studies (CPS)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showSlidingBottomSheet(context,
                    builder: (context) => const SlidingSheetDialog(
                          cornerRadius: 16,
                          // avoidStatusBar: true,
                          snapSpec: SnapSpec(
                            // initialSnap: 1,
                            snappings: [0.6, 1],
                          ),
                          builder: buildSheet6,
                          headerBuilder: buildHeader,
                        )),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Centre for Urban Planning Studies (CUPS)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showSlidingBottomSheet(context,
                    builder: (context) => const SlidingSheetDialog(
                          cornerRadius: 16,
                          // avoidStatusBar: true,
                          snapSpec: SnapSpec(
                            // initialSnap: 1,
                            snappings: [0.6, 1],
                          ),
                          builder: buildSheet7,
                          headerBuilder: buildHeader,
                        )),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Continuing Education Division"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showSlidingBottomSheet(context,
                    builder: (context) => const SlidingSheetDialog(
                          cornerRadius: 16,
                          // avoidStatusBar: true,
                          snapSpec: SnapSpec(
                            // initialSnap: 1,
                            snappings: [0.6, 1],
                          ),
                          builder: buildSheet8,
                          headerBuilder: buildHeader,
                        )),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Examination Control Division"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showSlidingBottomSheet(context,
                    builder: (context) => const SlidingSheetDialog(
                          cornerRadius: 16,
                          // avoidStatusBar: true,
                          snapSpec: SnapSpec(
                            // initialSnap: 1,
                            snappings: [0.6, 1],
                          ),
                          builder: buildSheet9,
                          headerBuilder: buildHeader,
                        )),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      "Information and Communication Technology Center (ICTC)"),
                ),
              )),
              Card(
                  child: ListTile(
                onTap: () => showSlidingBottomSheet(context,
                    builder: (context) => const SlidingSheetDialog(
                          cornerRadius: 16,
                          // avoidStatusBar: true,
                          snapSpec: SnapSpec(
                            // initialSnap: 1,
                            snappings: [0.6, 1],
                          ),
                          builder: buildSheet10,
                          headerBuilder: buildHeader,
                        )),
                title: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Laboratory for ICT Research and Development"),
                ),
              )),
            ],
            padding: const EdgeInsets.all(10),
          ))
        ],
      ),
    );
  }
}
