import 'package:flutter/material.dart';

class GlancePage extends StatelessWidget {
  const GlancePage({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "IOE At Glance",
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
                        "KEY PERSONNEL:",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Institute of Engineering Dean Office",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Prof. Dr. Shashidhar Ram Joshi, Dean\n\nProf. Dr. Sushil Bahadur Bajracharya, Assistant Dean (Planning)\nProf. Dr. Gyan Bahadur Thapa, Assistant Dean (Examination)\nProf. Dr. Chinta Mani Pokharel, Assistant Dean (General Administration)\nProf. Dr. Rajendra Shrestha, Assistant Dean (Academic Administration)",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Pulchowk Campus, Pulchowk",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Assoc. Prof. Dr. Indra Prasad Acharya, Campus Chief\nAssist. Prof. Arbin Maharjan,Assistant  Campus Chief (Administration)\nAssist. Prof. Shukra Raj Paudel,Assistant  Campus Chief (Academic)\nAssist. Prof. Banshee Ram Pradhan,Assistant  Campus Chief (Facility Management)",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Thapathali Campus",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Er. Janardan Bhatta, Campus Chief",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Purwanchal Campus, Dharan",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Er. Om Prakash Dhakal, Campus Chief",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Paschimanchal Campus, Pokhara",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Er. Ram Prasad Poudel, Campus Chief\nEr. Sunil Dahal Assistant Campus Chief (Facilities)\nEr. Nirmal Prasad Baral Assistant Campus Chief (Administration)",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Chitwan Engineering Campus,Rampur Chitwan",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ar. Sudip Sharma Poudyal",
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
