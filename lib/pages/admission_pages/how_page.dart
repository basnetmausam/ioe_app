import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';

class HowPage extends StatelessWidget {
  const HowPage({Key? key}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "How to Apply",
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
                        "Entrance examinations are conducted by Tribhuvan University, Institute of Engineering yearly for undergraduate and postgraduate intake. The entrance exam for the undergraduate program is highly competitive where 15000 students from all over Nepal compete.\n\nThe candidate willing to appear in the entrance examination to get enrollment into the program should fill and submit the online Application Form within the deadline prescribed by the Entrance Exam Board. Application forms will be available in the \nwebsite: http://entrance.ioe.edu.np",
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
