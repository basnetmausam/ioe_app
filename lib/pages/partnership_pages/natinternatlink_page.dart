import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:velocity_x/velocity_x.dart';

class LinkPage extends StatelessWidget {
  const LinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> linklist = [
      "Indian Institute of Technology, Khadakpur",
      "Indian Institute of Technology, Delhi",
      "Indian Institute of Technology, Roorkee",
      "Indian Institute of Technology, Mumbai",
      "Indian Institute of Technology, Kanpur, India",
      "Asian Institute of Technology, Thailand",
      "Norwegian University of Science and Technology, Trondheim, Norway",
      "Norwegian University of Natural Science, Aes, Norway",
      "University of Manitoba, Canada",
      "Universitas Kristen Immanuel, Indonesia",
      "Osaka Sangyo University, Japan",
      "Chiang Mai University, Thailand",
      "Herbin University, China",
      "The University of Wyoming, school of Engineering, Laramie, USA",
      "Uiduk University, Korea",
      "Woosong University, College of Railroad & Logistics, Daejeon, South Korea",
      "Riga Technical University, Riga, Latvia.",
      "Tokyo Institute of Technology, Interdisciplinary Graduate School of Science and Technology",
      "Harbin Institute of Technology, Harbin, China",
      "School of Planning and Architecture, India",
      "Ball State University, USA",
      "Ford Foundation",
      "University of Colorado, Boulder, Colorado, USA",
      "Indira Gandhi Institute of Development Research(IGIDR)",
      "National Defense Academy, Yokosuka City, Japan",
      "Tibet University, Tibet, China",
      "Fuzhou University, Fuzhou, China",
      "The Disaster Prevention Research Institute of Kyoto, Japan",
      "Kwangwoon University, ITRC RFIC CENTER",
      "Alternate Energy Promotion Center, Nepal Government",
      "University of Applied Sciences, Cologne, Germany",
      "International union for conservation of nature(IUCN)",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Partnership",
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
                "National And International Link",
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
                        "National & International Linkage",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "In the present context, institutional linkages are prerequisites for the academic progress in the field of research as well as in bridging the gap between academic and industrial applications. Institute of Engineering has formal MoU with the following Institutions:",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BulletedList(
                        listItems: linklist,
                        listOrder: ListOrder.ordered,
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
