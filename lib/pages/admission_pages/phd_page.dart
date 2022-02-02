import 'package:bulleted_list/bulleted_list.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

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
                        "Post Doctoral Research Program",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text(
                        "\n\nPost Doctoral Research Study Guidelines 2019",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "PHD Admission in IOE : 2019",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      BulletedList(
                        listItems: const [
                          "IOE PhD Application Pack 2019",
                          "IOE PhD Rules and Regulations 2019",
                          "IOE PhD Re-registration Guidelines 2019"
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
                        listItems: const [
                          "IOE PhD Application Pack 2017",
                          "IOE PhD Rules and Regulations 2017",
                          "IOE PhD Re-registration Guidelines 2017"
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
                        listItems: const [
                          "IIOE PhD Rules & Regulations 2015",
                          "IOE PhD Rules and Regulations 2015",
                          "IOE PhD Application Forms 2015"
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
