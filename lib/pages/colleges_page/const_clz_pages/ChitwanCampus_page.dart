import 'package:flutter/material.dart';
import 'package:ioe_app/utils/homeDrawer.dart';
import 'package:velocity_x/velocity_x.dart';

class ChitwanCampusPage extends StatelessWidget {
  const ChitwanCampusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chitwan Engineering Campus",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      backgroundColor: context.canvasColor,
      drawer: myDrawer(context),
      body: Column(
        children: [
          Flexible(
            child: ListView(children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          "assets/images/chitwan_engineering.jpg",
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Chitwan Engineering Campus, Rampur has been established by TU senate in 2074 B.S. as a fifth constituent campus of Institute of Engineering, Tribhuvan University. This Campus is running Bachelor of Architecture program from 2076 B.S.",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
              // Card(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(12)),
              //     child: ListTile(
              //       onTap: () {
              //         Navigator.pushNamed(context, MyRoutes.mapRoute,
              //             arguments: Data('Chitwan Engineering Campus',
              //                 27.651827094884858, 84.34718815033432));
              //       },
              //       title: const Padding(
              //         padding: EdgeInsets.all(16.0), child: Text('Location'),
              //         // Icon(Icons.directions_car_filled_outlined),
              //       ),
              //     )),
            ]),
          )
        ],
      ),
    );
  }
}
