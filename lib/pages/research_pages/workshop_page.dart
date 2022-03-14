import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class WorkshopPage extends StatelessWidget {
  const WorkshopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Research",
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
                "Workshop",
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
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Joint Conference/Workshop by LICT:                                     ",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          launch(
                              'http://lict.ioe.edu.np/ConfShop/TU-NUAA-WorkshopProgramTentative.pdf');
                        },
                        child: Text(
                          "1. 1st TU-NUAA Joint Academic Workshop, 15-17th Jan, 2017",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        highlightColor: context.accentColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          launch('http://www.sau.ac.in/~dami17/index.php');
                        },
                        child: Text(
                          "2. International Workshop on Data Analytics and \n  Machine   Intelligence-DAMI'17, 11-13th Dec. 2017",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        highlightColor: context.accentColor,
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
